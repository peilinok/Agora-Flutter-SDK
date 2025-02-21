import '/src/binding_forward_export.dart';
part 'audio_device_manager.g.dart';

@JsonEnum(alwaysCreate: true)
enum MaxDeviceIdLengthType {
  @JsonValue(512)
  maxDeviceIdLength,
}

extension MaxDeviceIdLengthTypeExt on MaxDeviceIdLengthType {
  /// @nodoc
  static MaxDeviceIdLengthType fromValue(int value) {
    return $enumDecode(_$MaxDeviceIdLengthTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MaxDeviceIdLengthTypeEnumMap[this]!;
  }
}

abstract class AudioDeviceManager {
  Future<List<AudioDeviceInfo>> enumeratePlaybackDevices();

  Future<List<AudioDeviceInfo>> enumerateRecordingDevices();

  Future<void> setPlaybackDevice(String deviceId);

  Future<String> getPlaybackDevice();

  Future<AudioDeviceInfo> getPlaybackDeviceInfo();

  Future<void> setPlaybackDeviceVolume(int volume);

  Future<int> getPlaybackDeviceVolume();

  Future<void> setRecordingDevice(String deviceId);

  Future<String> getRecordingDevice();

  Future<AudioDeviceInfo> getRecordingDeviceInfo();

  Future<void> setRecordingDeviceVolume(int volume);

  Future<int> getRecordingDeviceVolume();

  Future<void> setLoopbackDevice(String deviceId);

  Future<String> getLoopbackDevice();

  Future<void> setPlaybackDeviceMute(bool mute);

  Future<bool> getPlaybackDeviceMute();

  Future<void> setRecordingDeviceMute(bool mute);

  Future<bool> getRecordingDeviceMute();

  Future<void> startPlaybackDeviceTest(String testAudioFilePath);

  Future<void> stopPlaybackDeviceTest();

  Future<void> startRecordingDeviceTest(int indicationInterval);

  Future<void> stopRecordingDeviceTest();

  Future<void> startAudioDeviceLoopbackTest(int indicationInterval);

  Future<void> stopAudioDeviceLoopbackTest();

  Future<void> followSystemPlaybackDevice(bool enable);

  Future<void> followSystemRecordingDevice(bool enable);

  Future<void> followSystemLoopbackDevice(bool enable);

  Future<void> release();

  Future<AudioDeviceInfo> getPlaybackDefaultDevice();

  Future<AudioDeviceInfo> getRecordingDefaultDevice();
}
