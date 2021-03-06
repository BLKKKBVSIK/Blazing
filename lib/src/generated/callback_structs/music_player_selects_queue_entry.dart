// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class MusicPlayerSelectsQueueEntry extends Struct {
  static int get callbackId => 4012;

  @Int()
  external int nId;
}

extension MusicPlayerSelectsQueueEntryExtensions
    on Pointer<MusicPlayerSelectsQueueEntry> {
  int get nId => ref.nId;
}
