import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SoundPlayerPage extends StatefulWidget {
  final String surahNumber; // Surah number parameter
  final String surahName; // Surah name parameter

  const SoundPlayerPage(
      {super.key, required this.surahNumber, required this.surahName});

  @override
  _SoundPlayerPageState createState() => _SoundPlayerPageState();
}

class _SoundPlayerPageState extends State<SoundPlayerPage> {
  final AudioPlayer _player = AudioPlayer();
  late String _surahName;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool _isPlaying = false;

  late String _audioPath;

  @override
  void initState() {
    super.initState();
    _surahName = widget.surahName; // Set Surah name based on passed argument
    _audioPath =
        'assets/audio/abd_ulbast/${widget.surahNumber}.mp3'; // Set audio path based on passed Surah number
    _initializeAudio();
  }

  Future<void> _initializeAudio() async {
    try {
      await _loadAudio();
      _player.positionStream.listen((position) {
        if (mounted) {
          setState(() {
            _position = position;
          });
        }
      });

      _player.playbackEventStream.listen((event) {
        if (mounted) {
          setState(() {
            _isPlaying = _player.playing;
          });
        }
      });
    } catch (e) {
      print('Error initializing audio: $e');
    }
  }

  Future<void> _loadAudio() async {
    try {
      await _player.setAsset(_audioPath);
      _duration = await _player.load() ?? Duration.zero;
      print('Audio loaded successfully');
    } catch (e) {
      print('Error loading audio: $e');
    }
  }

  Future<void> _togglePlayPause() async {
    try {
      if (_isPlaying) {
        await _player.pause();
        print('Audio paused');
      } else {
        await _player.play();
        print('Audio playing');
      }
    } catch (e) {
      print('Error toggling play/pause: $e');
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 32,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        _surahName,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '${_position.toString().split('.').first} / ${_duration.toString().split('.').first}',
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      IconButton(
                        icon: Icon(
                          _isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 64,
                          color: Colors.white,
                        ),
                        onPressed: _togglePlayPause,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
