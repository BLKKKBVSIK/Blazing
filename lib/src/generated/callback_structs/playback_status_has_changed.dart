// ignore_for_file: public_member_api_docs
import "dart:ffi";

@Packed(4)
class PlaybackStatusHasChanged extends Opaque {
  static int get callbackId => 4001;
}