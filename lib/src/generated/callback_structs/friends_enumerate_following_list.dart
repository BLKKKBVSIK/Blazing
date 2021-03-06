// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";

@Packed(4)
class FriendsEnumerateFollowingList extends Struct {
  static int get callbackId => 346;

  @Int32()
  external EResult result;

  @Array<UnsignedLongLong>(50)
  external Array<UnsignedLongLong> steamId;

  @Int()
  external int resultsReturned;

  @Int()
  external int totalResultCount;
}

extension FriendsEnumerateFollowingListExtensions
    on Pointer<FriendsEnumerateFollowingList> {
  EResult get result => ref.result;

  Array<UnsignedLongLong> get steamId => ref.steamId;

  int get resultsReturned => ref.resultsReturned;

  int get totalResultCount => ref.totalResultCount;
}
