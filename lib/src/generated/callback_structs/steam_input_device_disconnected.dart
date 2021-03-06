// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SteamInputDeviceDisconnected extends Struct {
  static int get callbackId => 2802;

  @UnsignedLongLong()
  external InputHandle disconnectedDeviceHandle;
}

extension SteamInputDeviceDisconnectedExtensions
    on Pointer<SteamInputDeviceDisconnected> {
  InputHandle get disconnectedDeviceHandle => ref.disconnectedDeviceHandle;
}
