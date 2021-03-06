// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(4)
class UserStatsStored extends Struct {
  static int get callbackId => 1102;

  @UnsignedLongLong()
  external int gameId;

  @Int32()
  external EResult result;
}

extension UserStatsStoredExtensions on Pointer<UserStatsStored> {
  int get gameId => ref.gameId;

  EResult get result => ref.result;
}
