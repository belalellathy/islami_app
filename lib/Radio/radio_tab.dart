import 'package:flutter/material.dart';
import 'package:islami_app/Radio/item.dart';
import 'package:islami_app/theme/apptheme.dart';
import 'package:just_audio/just_audio.dart';

class RadioTab extends StatefulWidget {
  items item;
  RadioTab(this.item, {super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void initState() {
    playaudio();
    super.initState();
  }

  Future<void> playaudio() async {
    try {
      await audioPlayer.setUrl(widget.item.url);
    } catch (e) {
      // Handle error
    }
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  bool mute = false;
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Apptheme.primary, borderRadius: BorderRadius.circular(20)),
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
                Container(
                  child: play
                      ? Image.asset("assets/images/soundWave 1.png")
                      : Image.asset("assets/images/Mosque-02.png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        play = !play;
                        setState(() {});

                        if (play) {
                          await audioPlayer.play();
                        } else {
                          await audioPlayer.pause();
                        }
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
                        audioPlayer.setVolume(mute ? 0 : 1);
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
    );
  }
}
