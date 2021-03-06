// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class OverlayBrowserProtocolNavigation extends Struct {
  static int get callbackId => 349;

  external Pointer<Utf8> rgchURI;
}

extension OverlayBrowserProtocolNavigationExtensions
    on Pointer<OverlayBrowserProtocolNavigation> {
  Pointer<Utf8> get rgchURI => ref.rgchURI;
}
