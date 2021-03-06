// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(4)
class SteamServerConnectFailure extends Struct {
  static int get callbackId => 102;

  @Int32()
  external EResult result;

  @Bool()
  external bool stillRetrying;
}

extension SteamServerConnectFailureExtensions
    on Pointer<SteamServerConnectFailure> {
  EResult get result => ref.result;

  bool get stillRetrying => ref.stillRetrying;
}
