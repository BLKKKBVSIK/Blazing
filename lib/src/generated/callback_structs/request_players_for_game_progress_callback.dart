// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(4)
class RequestPlayersForGameProgressCallback extends Struct {
  static int get callbackId => 5211;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external int searchId;
}

extension RequestPlayersForGameProgressCallbackExtensions
    on Pointer<RequestPlayersForGameProgressCallback> {
  EResult get result => ref.result;

  int get searchId => ref.searchId;
}
