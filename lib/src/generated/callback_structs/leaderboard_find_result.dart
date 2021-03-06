// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class LeaderboardFindResult extends Struct {
  static int get callbackId => 1104;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @UnsignedChar()
  external int leaderboardFound;
}

extension LeaderboardFindResultExtensions on Pointer<LeaderboardFindResult> {
  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;

  int get leaderboardFound => ref.leaderboardFound;
}
