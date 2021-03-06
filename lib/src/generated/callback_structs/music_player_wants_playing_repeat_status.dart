// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class MusicPlayerWantsPlayingRepeatStatus extends Struct {
  static int get callbackId => 4114;

  @Int()
  external int playingRepeatStatus;
}

extension MusicPlayerWantsPlayingRepeatStatusExtensions
    on Pointer<MusicPlayerWantsPlayingRepeatStatus> {
  int get playingRepeatStatus => ref.playingRepeatStatus;
}
