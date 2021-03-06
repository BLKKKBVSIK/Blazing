// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class GameLobbyJoinRequested extends Struct {
  static int get callbackId => 333;

  @UnsignedLongLong()
  external CSteamId steamIdLobby;

  @UnsignedLongLong()
  external CSteamId steamIdFriend;
}

extension GameLobbyJoinRequestedExtensions on Pointer<GameLobbyJoinRequested> {
  CSteamId get steamIdLobby => ref.steamIdLobby;

  CSteamId get steamIdFriend => ref.steamIdFriend;
}
