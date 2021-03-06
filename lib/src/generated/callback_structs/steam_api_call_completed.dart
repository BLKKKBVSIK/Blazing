// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SteamApiCallCompleted extends Struct {
  static int get callbackId => 703;

  @UnsignedLongLong()
  external SteamApiCall asyncCall;

  @Int()
  external int callback;

  @UnsignedInt()
  external int paramSize;
}

extension SteamApiCallCompletedExtensions on Pointer<SteamApiCallCompleted> {
  SteamApiCall get asyncCall => ref.asyncCall;

  int get callback => ref.callback;

  int get paramSize => ref.paramSize;
}
