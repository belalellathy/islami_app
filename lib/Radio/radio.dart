import 'package:flutter/material.dart';
import 'package:islami_app/API_model/API_manger/api_manger.dart';
import 'package:islami_app/API_model/radioresponsemodel/radioresponsemodel.dart';
import 'package:islami_app/API_model/receitersresponsemodel/receitersresponsemodel.dart';
import 'package:islami_app/Radio/Receiters.dart';
import 'package:islami_app/Radio/item.dart';
import 'package:islami_app/Radio/radio_tab.dart';
import 'package:islami_app/theme/apptheme.dart';
import 'package:toggle_switch/toggle_switch.dart';

class radio extends StatefulWidget {
  const radio({super.key});

  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  int? selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleSwitch(
          minWidth: MediaQuery.sizeOf(context).width * 0.9,
          initialLabelIndex: selectedindex,
          totalSwitches: 2,
          labels: const ["Radio", "Reciters"],
          activeBgColor: const [Apptheme.primary],
          inactiveBgColor: Apptheme.black.withOpacity(0.7),
          fontSize: 16,
          inactiveFgColor: Colors.white,
          activeFgColor: Colors.black,
          onToggle: (index) {
            setState(() {
              selectedindex = index;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: selectedindex == 0
                ? FutureBuilder<Radioresponsemodel>(
                    future: APIManager.getradio(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                            child: CircularProgressIndicator(
                          color: Apptheme.primary,
                        ));
                      } else if (snapshot.hasError) {
                        return Column(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  APIManager.getradio();
                                  setState(() {});
                                },
                                child: const Text("Try Again")),
                          ],
                        );
                      } else {
                        final radios = snapshot.data!.radios;
                        return ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                          itemCount: radios!.length,
                          itemBuilder: (context, index) {
                            return RadioTab(items(
                                name: radios[index].name!,
                                url: radios[index].url!));
                          },
                        );
                      }
                    },
                  )
                : FutureBuilder<Receitersresponsemodel>(future: APIManager.getreciters() ,
                builder:(context,index){
                  if (index.connectionState == ConnectionState.waiting) {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: Apptheme.primary,
                    ));
                  } else if (index.hasError) {
                    return Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              APIManager.getreciters();
                              setState(() {});
                            },
                            child: const Text("Try Again")),
                      ],
                    );
                  } else {
                    final reciters = index.data!.reciters;
                    return ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: reciters!.length,
                      itemBuilder: (context, index) {
                        return Receiters(name: reciters[index].name!,index: index,);
                      },
                    );
                }
              },
            ) /*ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return RadioTab(Items[index]);
                    },
                  )*/
            )
      ],
    );
  }
}
