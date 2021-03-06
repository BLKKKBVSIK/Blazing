// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class GsStatsReceived extends Struct {
  static int get callbackId => 1800;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external CSteamId steamIdUser;
}

extension GsStatsReceivedExtensions on Pointer<GsStatsReceived> {
  EResult get result => ref.result;

  CSteamId get steamIdUser => ref.steamIdUser;
}
