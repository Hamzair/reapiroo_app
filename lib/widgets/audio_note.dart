import 'package:audioplayers/audioplayers.dart';
import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/controllers/audio_controller.dart';
import 'package:voice_message_package/voice_message_package.dart';

class AudioNote extends StatefulWidget {
  @override
  _AudioNoteState createState() => _AudioNoteState();
}

class _AudioNoteState extends State<AudioNote> {
  final AudioController audioVM = Get.find<AudioController>();
  final AudioPlayer _audioPlayer = AudioPlayer();
  String audioUrl = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"; // Replace with your audio URL

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayPause() async {
    if (audioVM.isPLaying.value) {
      await _audioPlayer.pause();
    } else {
      audioVM.isLoading.value = true;
      await _audioPlayer.play(UrlSource(audioUrl));
      audioVM.isLoading.value = false;
    }
    audioVM.isPLaying.value = !audioVM.isPLaying.value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Play/Pause Button
        Obx(
        ()=> GestureDetector(
            onTap: _togglePlayPause,
            child: Container(
              height: 36.w,
              width: 36.w,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Icon(
                audioVM.isPLaying.value ? Icons.pause : Icons.play_arrow,
                size: 30,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.h),
        //Audio Waveform
        Obx(() {
          bool isPlaying = audioVM.isPLaying.value;

          return AudioWave(
            height: 40,
            width: MediaQuery.of(context).size.width * 0.7,
            spacing: 2,
            bars: [
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.2, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.2, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.2, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.4, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.1, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.3, color: isPlaying ? Colors.white : Colors.grey),
              AudioWaveBar(heightFactor: 0.7, color: isPlaying ? Colors.white : Colors.grey),
            ],
            animation: isPlaying, // Animate only when audio is playing
          );
        }),
      ],
    );
  }
}
