// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlJsAlert extends Struct {
  static int get callbackId => 4514;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> message;
}

extension HtmlJsAlertExtensions on Pointer<HtmlJsAlert> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get message => ref.message;
}
