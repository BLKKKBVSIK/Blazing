// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class LeaderboardUgcSet extends Struct {
  static int get callbackId => 1111;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;
}

extension LeaderboardUgcSetExtensions on Pointer<LeaderboardUgcSet> {
  EResult get result => ref.result;

  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;
}
