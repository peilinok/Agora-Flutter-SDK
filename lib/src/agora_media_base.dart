import '/src/binding_forward_export.dart';
part 'agora_media_base.g.dart';

/// @nodoc
const invalidTrackId = 0xffffffff;

/// @nodoc
const defaultConnectionId = 0;

/// @nodoc
const dummyConnectionId = 4294967295;

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ExtensionContext {
  const ExtensionContext(
      {this.isValid, this.uid, this.providerName, this.extensionName});

  @JsonKey(name: 'isValid')
  final bool? isValid;

  @JsonKey(name: 'uid')
  final int? uid;

  @JsonKey(name: 'providerName')
  final String? providerName;

  @JsonKey(name: 'extensionName')
  final String? extensionName;

  factory ExtensionContext.fromJson(Map<String, dynamic> json) =>
      _$ExtensionContextFromJson(json);

  Map<String, dynamic> toJson() => _$ExtensionContextToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum VideoSourceType {
  @JsonValue(0)
  videoSourceCameraPrimary,

  @JsonValue(0)
  videoSourceCamera,

  @JsonValue(1)
  videoSourceCameraSecondary,

  @JsonValue(2)
  videoSourceScreenPrimary,

  @JsonValue(2)
  videoSourceScreen,

  @JsonValue(3)
  videoSourceScreenSecondary,

  @JsonValue(4)
  videoSourceCustom,

  @JsonValue(5)
  videoSourceMediaPlayer,

  @JsonValue(6)
  videoSourceRtcImagePng,

  @JsonValue(7)
  videoSourceRtcImageJpeg,

  @JsonValue(8)
  videoSourceRtcImageGif,

  @JsonValue(9)
  videoSourceRemote,

  @JsonValue(10)
  videoSourceTranscoded,

  @JsonValue(11)
  videoSourceCameraThird,

  @JsonValue(12)
  videoSourceCameraFourth,

  @JsonValue(13)
  videoSourceScreenThird,

  @JsonValue(14)
  videoSourceScreenFourth,

  @JsonValue(15)
  videoSourceSpeechDriven,

  @JsonValue(100)
  videoSourceUnknown,
}

extension VideoSourceTypeExt on VideoSourceType {
  /// @nodoc
  static VideoSourceType fromValue(int value) {
    return $enumDecode(_$VideoSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoSourceTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum AudioSourceType {
  @JsonValue(0)
  audioSourceMicrophone,

  @JsonValue(1)
  audioSourceCustom,

  @JsonValue(2)
  audioSourceMediaPlayer,

  @JsonValue(3)
  audioSourceLoopbackRecording,

  @JsonValue(4)
  audioSourceMixedStream,

  @JsonValue(5)
  audioSourceRemoteUser,

  @JsonValue(6)
  audioSourceRemoteChannel,

  @JsonValue(100)
  audioSourceUnknown,
}

extension AudioSourceTypeExt on AudioSourceType {
  /// @nodoc
  static AudioSourceType fromValue(int value) {
    return $enumDecode(_$AudioSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioSourceTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum AudioRoute {
  @JsonValue(-1)
  routeDefault,

  @JsonValue(0)
  routeHeadset,

  @JsonValue(1)
  routeEarpiece,

  @JsonValue(2)
  routeHeadsetnomic,

  @JsonValue(3)
  routeSpeakerphone,

  @JsonValue(4)
  routeLoudspeaker,

  @JsonValue(5)
  routeBluetoothDeviceHfp,

  @JsonValue(6)
  routeUsb,

  @JsonValue(7)
  routeHdmi,

  @JsonValue(8)
  routeDisplayport,

  @JsonValue(9)
  routeAirplay,

  @JsonValue(10)
  routeBluetoothDeviceA2dp,
}

extension AudioRouteExt on AudioRoute {
  /// @nodoc
  static AudioRoute fromValue(int value) {
    return $enumDecode(_$AudioRouteEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioRouteEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum BytesPerSample {
  @JsonValue(2)
  twoBytesPerSample,
}

extension BytesPerSampleExt on BytesPerSample {
  /// @nodoc
  static BytesPerSample fromValue(int value) {
    return $enumDecode(_$BytesPerSampleEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$BytesPerSampleEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioParameters {
  const AudioParameters({this.sampleRate, this.channels, this.framesPerBuffer});

  @JsonKey(name: 'sample_rate')
  final int? sampleRate;

  @JsonKey(name: 'channels')
  final int? channels;

  @JsonKey(name: 'frames_per_buffer')
  final int? framesPerBuffer;

  factory AudioParameters.fromJson(Map<String, dynamic> json) =>
      _$AudioParametersFromJson(json);

  Map<String, dynamic> toJson() => _$AudioParametersToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum RawAudioFrameOpModeType {
  @JsonValue(0)
  rawAudioFrameOpModeReadOnly,

  @JsonValue(2)
  rawAudioFrameOpModeReadWrite,
}

extension RawAudioFrameOpModeTypeExt on RawAudioFrameOpModeType {
  /// @nodoc
  static RawAudioFrameOpModeType fromValue(int value) {
    return $enumDecode(_$RawAudioFrameOpModeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RawAudioFrameOpModeTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MediaSourceType {
  @JsonValue(0)
  audioPlayoutSource,

  @JsonValue(1)
  audioRecordingSource,

  @JsonValue(2)
  primaryCameraSource,

  @JsonValue(3)
  secondaryCameraSource,

  @JsonValue(4)
  primaryScreenSource,

  @JsonValue(5)
  secondaryScreenSource,

  @JsonValue(6)
  customVideoSource,

  @JsonValue(7)
  mediaPlayerSource,

  @JsonValue(8)
  rtcImagePngSource,

  @JsonValue(9)
  rtcImageJpegSource,

  @JsonValue(10)
  rtcImageGifSource,

  @JsonValue(11)
  remoteVideoSource,

  @JsonValue(12)
  transcodedVideoSource,

  @JsonValue(13)
  speechDrivenVideoSource,

  @JsonValue(100)
  unknownMediaSource,
}

extension MediaSourceTypeExt on MediaSourceType {
  /// @nodoc
  static MediaSourceType fromValue(int value) {
    return $enumDecode(_$MediaSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaSourceTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum ContentInspectResult {
  @JsonValue(1)
  contentInspectNeutral,

  @JsonValue(2)
  contentInspectSexy,

  @JsonValue(3)
  contentInspectPorn,
}

extension ContentInspectResultExt on ContentInspectResult {
  /// @nodoc
  static ContentInspectResult fromValue(int value) {
    return $enumDecode(_$ContentInspectResultEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ContentInspectResultEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum ContentInspectType {
  @JsonValue(0)
  contentInspectInvalid,

  @JsonValue(1)
  contentInspectModeration,

  @JsonValue(2)
  contentInspectSupervision,

  @JsonValue(3)
  contentInspectImageModeration,
}

extension ContentInspectTypeExt on ContentInspectType {
  /// @nodoc
  static ContentInspectType fromValue(int value) {
    return $enumDecode(_$ContentInspectTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ContentInspectTypeEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ContentInspectModule {
  const ContentInspectModule({this.type, this.interval});

  @JsonKey(name: 'type')
  final ContentInspectType? type;

  @JsonKey(name: 'interval')
  final int? interval;

  factory ContentInspectModule.fromJson(Map<String, dynamic> json) =>
      _$ContentInspectModuleFromJson(json);

  Map<String, dynamic> toJson() => _$ContentInspectModuleToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ContentInspectConfig {
  const ContentInspectConfig(
      {this.extraInfo, this.serverConfig, this.modules, this.moduleCount});

  @JsonKey(name: 'extraInfo')
  final String? extraInfo;

  @JsonKey(name: 'serverConfig')
  final String? serverConfig;

  @JsonKey(name: 'modules')
  final List<ContentInspectModule>? modules;

  @JsonKey(name: 'moduleCount')
  final int? moduleCount;

  factory ContentInspectConfig.fromJson(Map<String, dynamic> json) =>
      _$ContentInspectConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ContentInspectConfigToJson(this);
}

/// @nodoc
const kMaxCodecNameLength = 50;

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PacketOptions {
  const PacketOptions({this.timestamp, this.audioLevelIndication});

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @JsonKey(name: 'audioLevelIndication')
  final int? audioLevelIndication;

  factory PacketOptions.fromJson(Map<String, dynamic> json) =>
      _$PacketOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$PacketOptionsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioEncodedFrameInfo {
  const AudioEncodedFrameInfo({this.sendTs, this.codec});

  @JsonKey(name: 'sendTs')
  final int? sendTs;

  @JsonKey(name: 'codec')
  final int? codec;

  factory AudioEncodedFrameInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioEncodedFrameInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AudioEncodedFrameInfoToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioPcmFrame {
  const AudioPcmFrame(
      {this.captureTimestamp,
      this.samplesPerChannel,
      this.sampleRateHz,
      this.numChannels,
      this.bytesPerSample,
      this.data,
      this.isStereo});

  @JsonKey(name: 'capture_timestamp')
  final int? captureTimestamp;

  @JsonKey(name: 'samples_per_channel_')
  final int? samplesPerChannel;

  @JsonKey(name: 'sample_rate_hz_')
  final int? sampleRateHz;

  @JsonKey(name: 'num_channels_')
  final int? numChannels;

  @JsonKey(name: 'bytes_per_sample')
  final BytesPerSample? bytesPerSample;

  @JsonKey(name: 'data_')
  final List<int>? data;

  @JsonKey(name: 'is_stereo_')
  final bool? isStereo;

  factory AudioPcmFrame.fromJson(Map<String, dynamic> json) =>
      _$AudioPcmFrameFromJson(json);

  Map<String, dynamic> toJson() => _$AudioPcmFrameToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum AudioDualMonoMode {
  @JsonValue(0)
  audioDualMonoStereo,

  @JsonValue(1)
  audioDualMonoL,

  @JsonValue(2)
  audioDualMonoR,

  @JsonValue(3)
  audioDualMonoMix,
}

extension AudioDualMonoModeExt on AudioDualMonoMode {
  /// @nodoc
  static AudioDualMonoMode fromValue(int value) {
    return $enumDecode(_$AudioDualMonoModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioDualMonoModeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum VideoPixelFormat {
  @JsonValue(0)
  videoPixelDefault,

  @JsonValue(1)
  videoPixelI420,

  @JsonValue(2)
  videoPixelBgra,

  @JsonValue(3)
  videoPixelNv21,

  @JsonValue(4)
  videoPixelRgba,

  @JsonValue(8)
  videoPixelNv12,

  @JsonValue(10)
  videoTexture2d,

  @JsonValue(11)
  videoTextureOes,

  @JsonValue(12)
  videoCvpixelNv12,

  @JsonValue(13)
  videoCvpixelI420,

  @JsonValue(14)
  videoCvpixelBgra,

  @JsonValue(15)
  videoCvpixelP010,

  @JsonValue(16)
  videoPixelI422,

  @JsonValue(17)
  videoTextureId3d11texture2d,

  @JsonValue(18)
  videoPixelI010,
}

extension VideoPixelFormatExt on VideoPixelFormat {
  /// @nodoc
  static VideoPixelFormat fromValue(int value) {
    return $enumDecode(_$VideoPixelFormatEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoPixelFormatEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum RenderModeType {
  @JsonValue(1)
  renderModeHidden,

  @JsonValue(2)
  renderModeFit,

  @JsonValue(3)
  renderModeAdaptive,
}

extension RenderModeTypeExt on RenderModeType {
  /// @nodoc
  static RenderModeType fromValue(int value) {
    return $enumDecode(_$RenderModeTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RenderModeTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum CameraVideoSourceType {
  @JsonValue(0)
  cameraSourceFront,

  @JsonValue(1)
  cameraSourceBack,

  @JsonValue(2)
  videoSourceUnspecified,
}

extension CameraVideoSourceTypeExt on CameraVideoSourceType {
  /// @nodoc
  static CameraVideoSourceType fromValue(int value) {
    return $enumDecode(_$CameraVideoSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$CameraVideoSourceTypeEnumMap[this]!;
  }
}

abstract class VideoFrameMetaInfo {
  Future<String> getMetaInfoStr(MetaInfoKey key);
}

@JsonEnum(alwaysCreate: true)
enum MetaInfoKey {
  @JsonValue(0)
  keyFaceCapture,
}

extension MetaInfoKeyExt on MetaInfoKey {
  /// @nodoc
  static MetaInfoKey fromValue(int value) {
    return $enumDecode(_$MetaInfoKeyEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MetaInfoKeyEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ColorSpace {
  const ColorSpace({this.primaries, this.transfer, this.matrix, this.range});

  @JsonKey(name: 'primaries')
  final PrimaryID? primaries;

  @JsonKey(name: 'transfer')
  final TransferID? transfer;

  @JsonKey(name: 'matrix')
  final MatrixID? matrix;

  @JsonKey(name: 'range')
  final RangeID? range;

  factory ColorSpace.fromJson(Map<String, dynamic> json) =>
      _$ColorSpaceFromJson(json);

  Map<String, dynamic> toJson() => _$ColorSpaceToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum PrimaryID {
  @JsonValue(1)
  primaryidBt709,

  @JsonValue(2)
  primaryidUnspecified,

  @JsonValue(4)
  primaryidBt470m,

  @JsonValue(5)
  primaryidBt470bg,

  @JsonValue(6)
  primaryidSmpte170m,

  @JsonValue(7)
  primaryidSmpte240m,

  @JsonValue(8)
  primaryidFilm,

  @JsonValue(9)
  primaryidBt2020,

  @JsonValue(10)
  primaryidSmptest428,

  @JsonValue(11)
  primaryidSmptest431,

  @JsonValue(12)
  primaryidSmptest432,

  @JsonValue(22)
  primaryidJedecp22,
}

extension PrimaryIDExt on PrimaryID {
  /// @nodoc
  static PrimaryID fromValue(int value) {
    return $enumDecode(_$PrimaryIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$PrimaryIDEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum RangeID {
  @JsonValue(0)
  rangeidInvalid,

  @JsonValue(1)
  rangeidLimited,

  @JsonValue(2)
  rangeidFull,

  @JsonValue(3)
  rangeidDerived,
}

extension RangeIDExt on RangeID {
  /// @nodoc
  static RangeID fromValue(int value) {
    return $enumDecode(_$RangeIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RangeIDEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MatrixID {
  @JsonValue(0)
  matrixidRgb,

  @JsonValue(1)
  matrixidBt709,

  @JsonValue(2)
  matrixidUnspecified,

  @JsonValue(4)
  matrixidFcc,

  @JsonValue(5)
  matrixidBt470bg,

  @JsonValue(6)
  matrixidSmpte170m,

  @JsonValue(7)
  matrixidSmpte240m,

  @JsonValue(8)
  matrixidYcocg,

  @JsonValue(9)
  matrixidBt2020Ncl,

  @JsonValue(10)
  matrixidBt2020Cl,

  @JsonValue(11)
  matrixidSmpte2085,

  @JsonValue(12)
  matrixidCdncls,

  @JsonValue(13)
  matrixidCdcls,

  @JsonValue(14)
  matrixidBt2100Ictcp,
}

extension MatrixIDExt on MatrixID {
  /// @nodoc
  static MatrixID fromValue(int value) {
    return $enumDecode(_$MatrixIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MatrixIDEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum TransferID {
  @JsonValue(1)
  transferidBt709,

  @JsonValue(2)
  transferidUnspecified,

  @JsonValue(4)
  transferidGamma22,

  @JsonValue(5)
  transferidGamma28,

  @JsonValue(6)
  transferidSmpte170m,

  @JsonValue(7)
  transferidSmpte240m,

  @JsonValue(8)
  transferidLinear,

  @JsonValue(9)
  transferidLog,

  @JsonValue(10)
  transferidLogSqrt,

  @JsonValue(11)
  transferidIec6196624,

  @JsonValue(12)
  transferidBt1361Ecg,

  @JsonValue(13)
  transferidIec6196621,

  @JsonValue(14)
  transferidBt202010,

  @JsonValue(15)
  transferidBt202012,

  @JsonValue(16)
  transferidSmptest2084,

  @JsonValue(17)
  transferidSmptest428,

  @JsonValue(18)
  transferidAribStdB67,
}

extension TransferIDExt on TransferID {
  /// @nodoc
  static TransferID fromValue(int value) {
    return $enumDecode(_$TransferIDEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$TransferIDEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Hdr10MetadataInfo {
  const Hdr10MetadataInfo(
      {this.redPrimaryX,
      this.redPrimaryY,
      this.greenPrimaryX,
      this.greenPrimaryY,
      this.bluePrimaryX,
      this.bluePrimaryY,
      this.whitePointX,
      this.whitePointY,
      this.maxMasteringLuminance,
      this.minMasteringLuminance,
      this.maxContentLightLevel,
      this.maxFrameAverageLightLevel});

  @JsonKey(name: 'redPrimaryX')
  final int? redPrimaryX;

  @JsonKey(name: 'redPrimaryY')
  final int? redPrimaryY;

  @JsonKey(name: 'greenPrimaryX')
  final int? greenPrimaryX;

  @JsonKey(name: 'greenPrimaryY')
  final int? greenPrimaryY;

  @JsonKey(name: 'bluePrimaryX')
  final int? bluePrimaryX;

  @JsonKey(name: 'bluePrimaryY')
  final int? bluePrimaryY;

  @JsonKey(name: 'whitePointX')
  final int? whitePointX;

  @JsonKey(name: 'whitePointY')
  final int? whitePointY;

  @JsonKey(name: 'maxMasteringLuminance')
  final int? maxMasteringLuminance;

  @JsonKey(name: 'minMasteringLuminance')
  final int? minMasteringLuminance;

  @JsonKey(name: 'maxContentLightLevel')
  final int? maxContentLightLevel;

  @JsonKey(name: 'maxFrameAverageLightLevel')
  final int? maxFrameAverageLightLevel;

  factory Hdr10MetadataInfo.fromJson(Map<String, dynamic> json) =>
      _$Hdr10MetadataInfoFromJson(json);

  Map<String, dynamic> toJson() => _$Hdr10MetadataInfoToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum AlphaStitchMode {
  @JsonValue(0)
  noAlphaStitch,

  @JsonValue(1)
  alphaStitchUp,

  @JsonValue(2)
  alphaStitchBelow,

  @JsonValue(3)
  alphaStitchLeft,

  @JsonValue(4)
  alphaStitchRight,
}

extension AlphaStitchModeExt on AlphaStitchMode {
  /// @nodoc
  static AlphaStitchMode fromValue(int value) {
    return $enumDecode(_$AlphaStitchModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AlphaStitchModeEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ExternalVideoFrame {
  const ExternalVideoFrame(
      {this.type,
      this.format,
      this.buffer,
      this.stride,
      this.height,
      this.cropLeft,
      this.cropTop,
      this.cropRight,
      this.cropBottom,
      this.rotation,
      this.timestamp,
      this.eglType,
      this.textureId,
      this.fenceObject,
      this.matrix,
      this.metadataBuffer,
      this.metadataSize,
      this.alphaBuffer,
      this.fillAlphaBuffer,
      this.alphaStitchMode,
      this.d3d11Texture2d,
      this.textureSliceIndex,
      this.hdr10MetadataInfo,
      this.colorSpace});

  @JsonKey(name: 'type')
  final VideoBufferType? type;

  @JsonKey(name: 'format')
  final VideoPixelFormat? format;

  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  @JsonKey(name: 'stride')
  final int? stride;

  @JsonKey(name: 'height')
  final int? height;

  @JsonKey(name: 'cropLeft')
  final int? cropLeft;

  @JsonKey(name: 'cropTop')
  final int? cropTop;

  @JsonKey(name: 'cropRight')
  final int? cropRight;

  @JsonKey(name: 'cropBottom')
  final int? cropBottom;

  @JsonKey(name: 'rotation')
  final int? rotation;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @JsonKey(name: 'eglType')
  final EglContextType? eglType;

  @JsonKey(name: 'textureId')
  final int? textureId;

  @JsonKey(name: 'fenceObject')
  final int? fenceObject;

  @JsonKey(name: 'matrix')
  final List<double>? matrix;

  @JsonKey(name: 'metadataBuffer', ignore: true)
  final Uint8List? metadataBuffer;

  @JsonKey(name: 'metadataSize')
  final int? metadataSize;

  @JsonKey(name: 'alphaBuffer', ignore: true)
  final Uint8List? alphaBuffer;

  @JsonKey(name: 'fillAlphaBuffer')
  final bool? fillAlphaBuffer;

  @JsonKey(name: 'alphaStitchMode')
  final AlphaStitchMode? alphaStitchMode;

  @JsonKey(name: 'd3d11Texture2d', readValue: readIntPtr)
  final int? d3d11Texture2d;

  @JsonKey(name: 'textureSliceIndex')
  final int? textureSliceIndex;

  @JsonKey(name: 'hdr10MetadataInfo')
  final Hdr10MetadataInfo? hdr10MetadataInfo;

  @JsonKey(name: 'colorSpace')
  final ColorSpace? colorSpace;

  factory ExternalVideoFrame.fromJson(Map<String, dynamic> json) =>
      _$ExternalVideoFrameFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalVideoFrameToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum EglContextType {
  @JsonValue(0)
  eglContext10,

  @JsonValue(1)
  eglContext14,
}

extension EglContextTypeExt on EglContextType {
  /// @nodoc
  static EglContextType fromValue(int value) {
    return $enumDecode(_$EglContextTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$EglContextTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum VideoBufferType {
  @JsonValue(1)
  videoBufferRawData,

  @JsonValue(2)
  videoBufferArray,

  @JsonValue(3)
  videoBufferTexture,
}

extension VideoBufferTypeExt on VideoBufferType {
  /// @nodoc
  static VideoBufferType fromValue(int value) {
    return $enumDecode(_$VideoBufferTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoBufferTypeEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VideoFrame {
  const VideoFrame(
      {this.type,
      this.width,
      this.height,
      this.yStride,
      this.uStride,
      this.vStride,
      this.yBuffer,
      this.uBuffer,
      this.vBuffer,
      this.rotation,
      this.renderTimeMs,
      this.avsyncType,
      this.metadataBuffer,
      this.metadataSize,
      this.textureId,
      this.matrix,
      this.alphaBuffer,
      this.alphaStitchMode,
      this.pixelBuffer,
      this.metaInfo,
      this.hdr10MetadataInfo,
      this.colorSpace});

  @JsonKey(name: 'type')
  final VideoPixelFormat? type;

  @JsonKey(name: 'width')
  final int? width;

  @JsonKey(name: 'height')
  final int? height;

  @JsonKey(name: 'yStride')
  final int? yStride;

  @JsonKey(name: 'uStride')
  final int? uStride;

  @JsonKey(name: 'vStride')
  final int? vStride;

  @JsonKey(name: 'yBuffer', ignore: true)
  final Uint8List? yBuffer;

  @JsonKey(name: 'uBuffer', ignore: true)
  final Uint8List? uBuffer;

  @JsonKey(name: 'vBuffer', ignore: true)
  final Uint8List? vBuffer;

  @JsonKey(name: 'rotation')
  final int? rotation;

  @JsonKey(name: 'renderTimeMs')
  final int? renderTimeMs;

  @JsonKey(name: 'avsync_type')
  final int? avsyncType;

  @JsonKey(name: 'metadata_buffer', ignore: true)
  final Uint8List? metadataBuffer;

  @JsonKey(name: 'metadata_size')
  final int? metadataSize;

  @JsonKey(name: 'textureId')
  final int? textureId;

  @JsonKey(name: 'matrix')
  final List<double>? matrix;

  @JsonKey(name: 'alphaBuffer', ignore: true)
  final Uint8List? alphaBuffer;

  @JsonKey(name: 'alphaStitchMode')
  final AlphaStitchMode? alphaStitchMode;

  @JsonKey(name: 'pixelBuffer', ignore: true)
  final Uint8List? pixelBuffer;

  @VideoFrameMetaInfoConverter()
  @JsonKey(name: 'metaInfo')
  final VideoFrameMetaInfo? metaInfo;

  @JsonKey(name: 'hdr10MetadataInfo')
  final Hdr10MetadataInfo? hdr10MetadataInfo;

  @JsonKey(name: 'colorSpace')
  final ColorSpace? colorSpace;

  factory VideoFrame.fromJson(Map<String, dynamic> json) =>
      _$VideoFrameFromJson(json);

  Map<String, dynamic> toJson() => _$VideoFrameToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum MediaPlayerSourceType {
  @JsonValue(0)
  mediaPlayerSourceDefault,

  @JsonValue(1)
  mediaPlayerSourceFullFeatured,

  @JsonValue(2)
  mediaPlayerSourceSimple,
}

extension MediaPlayerSourceTypeExt on MediaPlayerSourceType {
  /// @nodoc
  static MediaPlayerSourceType fromValue(int value) {
    return $enumDecode(_$MediaPlayerSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaPlayerSourceTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum VideoModulePosition {
  @JsonValue(1 << 0)
  positionPostCapturer,

  @JsonValue(1 << 1)
  positionPreRenderer,

  @JsonValue(1 << 2)
  positionPreEncoder,

  @JsonValue(1 << 3)
  positionPostCapturerOrigin,
}

extension VideoModulePositionExt on VideoModulePosition {
  /// @nodoc
  static VideoModulePosition fromValue(int value) {
    return $enumDecode(_$VideoModulePositionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoModulePositionEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SnapshotConfig {
  const SnapshotConfig({this.filePath, this.position});

  @JsonKey(name: 'filePath')
  final String? filePath;

  @JsonKey(name: 'position')
  final VideoModulePosition? position;

  factory SnapshotConfig.fromJson(Map<String, dynamic> json) =>
      _$SnapshotConfigFromJson(json);

  Map<String, dynamic> toJson() => _$SnapshotConfigToJson(this);
}

class AudioPcmFrameSink {
  /// Construct the [AudioPcmFrameSink].
  const AudioPcmFrameSink({
    this.onFrame,
  });

  final void Function(AudioPcmFrame frame)? onFrame;
}

class AudioFrameObserverBase {
  /// Construct the [AudioFrameObserverBase].
  const AudioFrameObserverBase({
    this.onRecordAudioFrame,
    this.onPlaybackAudioFrame,
    this.onMixedAudioFrame,
    this.onEarMonitoringAudioFrame,
  });

  final void Function(String channelId, AudioFrame audioFrame)?
      onRecordAudioFrame;

  final void Function(String channelId, AudioFrame audioFrame)?
      onPlaybackAudioFrame;

  final void Function(String channelId, AudioFrame audioFrame)?
      onMixedAudioFrame;

  final void Function(AudioFrame audioFrame)? onEarMonitoringAudioFrame;
}

@JsonEnum(alwaysCreate: true)
enum AudioFrameType {
  @JsonValue(0)
  frameTypePcm16,
}

extension AudioFrameTypeExt on AudioFrameType {
  /// @nodoc
  static AudioFrameType fromValue(int value) {
    return $enumDecode(_$AudioFrameTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioFrameTypeEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioFrame {
  const AudioFrame(
      {this.type,
      this.samplesPerChannel,
      this.bytesPerSample,
      this.channels,
      this.samplesPerSec,
      this.buffer,
      this.renderTimeMs,
      this.avsyncType,
      this.presentationMs,
      this.audioTrackNumber,
      this.rtpTimestamp});

  @JsonKey(name: 'type')
  final AudioFrameType? type;

  @JsonKey(name: 'samplesPerChannel')
  final int? samplesPerChannel;

  @JsonKey(name: 'bytesPerSample')
  final BytesPerSample? bytesPerSample;

  @JsonKey(name: 'channels')
  final int? channels;

  @JsonKey(name: 'samplesPerSec')
  final int? samplesPerSec;

  @JsonKey(name: 'buffer', ignore: true)
  final Uint8List? buffer;

  @JsonKey(name: 'renderTimeMs')
  final int? renderTimeMs;

  @JsonKey(name: 'avsync_type')
  final int? avsyncType;

  @JsonKey(name: 'presentationMs')
  final int? presentationMs;

  @JsonKey(name: 'audioTrackNumber')
  final int? audioTrackNumber;

  @JsonKey(name: 'rtpTimestamp')
  final int? rtpTimestamp;

  factory AudioFrame.fromJson(Map<String, dynamic> json) =>
      _$AudioFrameFromJson(json);

  Map<String, dynamic> toJson() => _$AudioFrameToJson(this);
}

@JsonEnum(alwaysCreate: true)
enum AudioFramePosition {
  @JsonValue(0x0000)
  audioFramePositionNone,

  @JsonValue(0x0001)
  audioFramePositionPlayback,

  @JsonValue(0x0002)
  audioFramePositionRecord,

  @JsonValue(0x0004)
  audioFramePositionMixed,

  @JsonValue(0x0008)
  audioFramePositionBeforeMixing,

  @JsonValue(0x0010)
  audioFramePositionEarMonitoring,
}

extension AudioFramePositionExt on AudioFramePosition {
  /// @nodoc
  static AudioFramePosition fromValue(int value) {
    return $enumDecode(_$AudioFramePositionEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$AudioFramePositionEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioParams {
  const AudioParams(
      {this.sampleRate, this.channels, this.mode, this.samplesPerCall});

  @JsonKey(name: 'sample_rate')
  final int? sampleRate;

  @JsonKey(name: 'channels')
  final int? channels;

  @JsonKey(name: 'mode')
  final RawAudioFrameOpModeType? mode;

  @JsonKey(name: 'samples_per_call')
  final int? samplesPerCall;

  factory AudioParams.fromJson(Map<String, dynamic> json) =>
      _$AudioParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AudioParamsToJson(this);
}

class AudioFrameObserver extends AudioFrameObserverBase {
  /// Construct the [AudioFrameObserver].
  const AudioFrameObserver({
    void Function(String channelId, AudioFrame audioFrame)? onRecordAudioFrame,
    void Function(String channelId, AudioFrame audioFrame)?
        onPlaybackAudioFrame,
    void Function(String channelId, AudioFrame audioFrame)? onMixedAudioFrame,
    void Function(AudioFrame audioFrame)? onEarMonitoringAudioFrame,
    this.onPlaybackAudioFrameBeforeMixing,
  }) : super(
          onRecordAudioFrame: onRecordAudioFrame,
          onPlaybackAudioFrame: onPlaybackAudioFrame,
          onMixedAudioFrame: onMixedAudioFrame,
          onEarMonitoringAudioFrame: onEarMonitoringAudioFrame,
        );

  final void Function(String channelId, int uid, AudioFrame audioFrame)?
      onPlaybackAudioFrameBeforeMixing;
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AudioSpectrumData {
  const AudioSpectrumData({this.audioSpectrumData, this.dataLength});

  @JsonKey(name: 'audioSpectrumData')
  final List<double>? audioSpectrumData;

  @JsonKey(name: 'dataLength')
  final int? dataLength;

  factory AudioSpectrumData.fromJson(Map<String, dynamic> json) =>
      _$AudioSpectrumDataFromJson(json);

  Map<String, dynamic> toJson() => _$AudioSpectrumDataToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserAudioSpectrumInfo {
  const UserAudioSpectrumInfo({this.uid, this.spectrumData});

  @JsonKey(name: 'uid')
  final int? uid;

  @JsonKey(name: 'spectrumData')
  final AudioSpectrumData? spectrumData;

  factory UserAudioSpectrumInfo.fromJson(Map<String, dynamic> json) =>
      _$UserAudioSpectrumInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserAudioSpectrumInfoToJson(this);
}

class AudioSpectrumObserver {
  /// Construct the [AudioSpectrumObserver].
  const AudioSpectrumObserver({
    this.onLocalAudioSpectrum,
    this.onRemoteAudioSpectrum,
  });

  final void Function(AudioSpectrumData data)? onLocalAudioSpectrum;

  final void Function(
          List<UserAudioSpectrumInfo> spectrums, int spectrumNumber)?
      onRemoteAudioSpectrum;
}

class VideoEncodedFrameObserver {
  /// Construct the [VideoEncodedFrameObserver].
  const VideoEncodedFrameObserver({
    this.onEncodedVideoFrameReceived,
  });

  final void Function(int uid, Uint8List imageBuffer, int length,
      EncodedVideoFrameInfo videoEncodedFrameInfo)? onEncodedVideoFrameReceived;
}

class VideoFrameObserver {
  /// Construct the [VideoFrameObserver].
  const VideoFrameObserver({
    this.onCaptureVideoFrame,
    this.onPreEncodeVideoFrame,
    this.onMediaPlayerVideoFrame,
    this.onRenderVideoFrame,
    this.onTranscodedVideoFrame,
  });

  final void Function(VideoSourceType sourceType, VideoFrame videoFrame)?
      onCaptureVideoFrame;

  final void Function(VideoSourceType sourceType, VideoFrame videoFrame)?
      onPreEncodeVideoFrame;

  final void Function(VideoFrame videoFrame, int mediaPlayerId)?
      onMediaPlayerVideoFrame;

  final void Function(String channelId, int remoteUid, VideoFrame videoFrame)?
      onRenderVideoFrame;

  final void Function(VideoFrame videoFrame)? onTranscodedVideoFrame;
}

@JsonEnum(alwaysCreate: true)
enum VideoFrameProcessMode {
  @JsonValue(0)
  processModeReadOnly,

  @JsonValue(1)
  processModeReadWrite,
}

extension VideoFrameProcessModeExt on VideoFrameProcessMode {
  /// @nodoc
  static VideoFrameProcessMode fromValue(int value) {
    return $enumDecode(_$VideoFrameProcessModeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$VideoFrameProcessModeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum ExternalVideoSourceType {
  @JsonValue(0)
  videoFrame,

  @JsonValue(1)
  encodedVideoFrame,
}

extension ExternalVideoSourceTypeExt on ExternalVideoSourceType {
  /// @nodoc
  static ExternalVideoSourceType fromValue(int value) {
    return $enumDecode(_$ExternalVideoSourceTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$ExternalVideoSourceTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MediaRecorderContainerFormat {
  @JsonValue(1)
  formatMp4,
}

extension MediaRecorderContainerFormatExt on MediaRecorderContainerFormat {
  /// @nodoc
  static MediaRecorderContainerFormat fromValue(int value) {
    return $enumDecode(_$MediaRecorderContainerFormatEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaRecorderContainerFormatEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum MediaRecorderStreamType {
  @JsonValue(0x01)
  streamTypeAudio,

  @JsonValue(0x02)
  streamTypeVideo,

  @JsonValue(0x01 | 0x02)
  streamTypeBoth,
}

extension MediaRecorderStreamTypeExt on MediaRecorderStreamType {
  /// @nodoc
  static MediaRecorderStreamType fromValue(int value) {
    return $enumDecode(_$MediaRecorderStreamTypeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$MediaRecorderStreamTypeEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum RecorderState {
  @JsonValue(-1)
  recorderStateError,

  @JsonValue(2)
  recorderStateStart,

  @JsonValue(3)
  recorderStateStop,
}

extension RecorderStateExt on RecorderState {
  /// @nodoc
  static RecorderState fromValue(int value) {
    return $enumDecode(_$RecorderStateEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RecorderStateEnumMap[this]!;
  }
}

@JsonEnum(alwaysCreate: true)
enum RecorderReasonCode {
  @JsonValue(0)
  recorderReasonNone,

  @JsonValue(1)
  recorderReasonWriteFailed,

  @JsonValue(2)
  recorderReasonNoStream,

  @JsonValue(3)
  recorderReasonOverMaxDuration,

  @JsonValue(4)
  recorderReasonConfigChanged,
}

extension RecorderReasonCodeExt on RecorderReasonCode {
  /// @nodoc
  static RecorderReasonCode fromValue(int value) {
    return $enumDecode(_$RecorderReasonCodeEnumMap, value);
  }

  /// @nodoc
  int value() {
    return _$RecorderReasonCodeEnumMap[this]!;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MediaRecorderConfiguration {
  const MediaRecorderConfiguration(
      {this.storagePath,
      this.containerFormat,
      this.streamType,
      this.maxDurationMs,
      this.recorderInfoUpdateInterval,
      this.width,
      this.height,
      this.fps,
      this.sampleRate,
      this.channelNum,
      this.videoSourceType});

  @JsonKey(name: 'storagePath')
  final String? storagePath;

  @JsonKey(name: 'containerFormat')
  final MediaRecorderContainerFormat? containerFormat;

  @JsonKey(name: 'streamType')
  final MediaRecorderStreamType? streamType;

  @JsonKey(name: 'maxDurationMs')
  final int? maxDurationMs;

  @JsonKey(name: 'recorderInfoUpdateInterval')
  final int? recorderInfoUpdateInterval;

  @JsonKey(name: 'width')
  final int? width;

  @JsonKey(name: 'height')
  final int? height;

  @JsonKey(name: 'fps')
  final int? fps;

  @JsonKey(name: 'sample_rate')
  final int? sampleRate;

  @JsonKey(name: 'channel_num')
  final int? channelNum;

  @JsonKey(name: 'videoSourceType')
  final VideoSourceType? videoSourceType;

  factory MediaRecorderConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MediaRecorderConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$MediaRecorderConfigurationToJson(this);
}

class FaceInfoObserver {
  /// Construct the [FaceInfoObserver].
  const FaceInfoObserver({
    this.onFaceInfo,
  });

  final void Function(String outFaceInfo)? onFaceInfo;
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RecorderInfo {
  const RecorderInfo({this.fileName, this.durationMs, this.fileSize});

  @JsonKey(name: 'fileName')
  final String? fileName;

  @JsonKey(name: 'durationMs')
  final int? durationMs;

  @JsonKey(name: 'fileSize')
  final int? fileSize;

  factory RecorderInfo.fromJson(Map<String, dynamic> json) =>
      _$RecorderInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RecorderInfoToJson(this);
}

class MediaRecorderObserver {
  /// Construct the [MediaRecorderObserver].
  const MediaRecorderObserver({
    this.onRecorderStateChanged,
    this.onRecorderInfoUpdated,
  });

  final void Function(String channelId, int uid, RecorderState state,
      RecorderReasonCode reason)? onRecorderStateChanged;

  final void Function(String channelId, int uid, RecorderInfo info)?
      onRecorderInfoUpdated;
}
