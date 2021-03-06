// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class SocketStatusCallback extends Struct {
  static int get callbackId => 1201;

  @UnsignedInt()
  external SnetSocket socket;

  @UnsignedInt()
  external SnetListenSocket listenSocket;

  @UnsignedLongLong()
  external CSteamId steamIdRemote;

  @Int()
  external int snetSocketState;
}

extension SocketStatusCallbackExtensions on Pointer<SocketStatusCallback> {
  SnetSocket get socket => ref.socket;

  SnetListenSocket get listenSocket => ref.listenSocket;

  CSteamId get steamIdRemote => ref.steamIdRemote;

  int get snetSocketState => ref.snetSocketState;
}
