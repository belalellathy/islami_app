import 'package:flutter/material.dart';
import 'package:islami_app/Radio/item.dart';
import 'package:islami_app/theme/apptheme.dart';

class RadioTab extends StatefulWidget {
  items item;
  RadioTab(this.item, {super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool mute = true;
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Apptheme.primary, borderRadius: BorderRadius.circular(20)),
        child: Container(
          child: Column(
            children: [
              Text(
                widget.item.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(widget.item.imagename),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          play = !play;
                          setState(() {});
                        },
                        icon: play
                            ? const Icon(Icons.pause_rounded)
                            : const Icon(Icons.play_arrow_rounded),
                        iconSize: 44,
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {
                          mute = !mute;
                          setState(() {});
                        },
                        icon: mute
                            ? const Icon(Icons.volume_off_rounded)
                            : const Icon(Icons.volume_up_rounded),
                        iconSize: 30,
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
