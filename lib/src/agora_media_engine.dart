import '/src/binding_forward_export.dart';
part 'agora_media_engine.g.dart';

@JsonEnum(alwaysCreate: true)
enum AudioMixingDualMonoMode {
  @JsonValue(0)
  audioMixingDualMonoAuto,

  @JsonValue(1)
  audioMixingDualMonoL,

  @JsonValue(2)
  audioMixingDualMonoR,

  @JsonValue(3)
  audioMixingDualMonoMix,
}

extension AudioMixingDualMonoModeExt on AudioMixingDualMonoMode {
  /// @nodoc
  static AudioMixingDualMonoMode fromValue(int value) {
    return $enumDecode(_$AudioMixingDualMonoModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioMixingDualMonoModeEnumMap[this]!;
  }
}

abstract class MediaEngine {
  void registerAudioFrameObserver(AudioFrameObserver observer);

  void registerVideoFrameObserver(VideoFrameObserver observer);

  void registerVideoEncodedFrameObserver(VideoEncodedFrameObserver observer);

  void registerFaceInfoObserver(FaceInfoObserver observer);

  Future<void> pushAudioFrame({required AudioFrame frame, int trackId = 0});

  Future<void> pullAudioFrame(AudioFrame frame);

  Future<void> setExternalVideoSource(
      {required bool enabled,
      required bool useTexture,
      ExternalVideoSourceType sourceType = ExternalVideoSourceType.videoFrame,
      SenderOptions encodedVideoOption = const SenderOptions()});

  Future<void> setExternalRemoteEglContext(int eglContext);

  Future<void> setExternalAudioSource(
      {required bool enabled,
      required int sampleRate,
      required int channels,
      bool localPlayback = false,
      bool publish = true});

  Future<int> createCustomAudioTrack(
      {required AudioTrackType trackType, required AudioTrackConfig config});

  Future<void> destroyCustomAudioTrack(int trackId);

  Future<void> setExternalAudioSink(
      {required bool enabled, required int sampleRate, required int channels});

  Future<void> enableCustomAudioLocalPlayback(
      {required int trackId, required bool enabled});

  Future<void> pushVideoFrame(
      {required ExternalVideoFrame frame, int videoTrackId = 0});

  Future<void> pushEncodedVideoImage(
      {required Uint8List imageBuffer,
      required int length,
      required EncodedVideoFrameInfo videoEncodedFrameInfo,
      int videoTrackId = 0});

  Future<void> release();

  void unregisterAudioFrameObserver(AudioFrameObserver observer);

  void unregisterVideoFrameObserver(VideoFrameObserver observer);

  void unregisterVideoEncodedFrameObserver(VideoEncodedFrameObserver observer);

  void unregisterFaceInfoObserver(FaceInfoObserver observer);
}
