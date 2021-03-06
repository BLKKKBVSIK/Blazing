// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlSetCursor extends Struct {
  static int get callbackId => 4522;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  @UnsignedInt()
  external int mouseCursor;
}

extension HtmlSetCursorExtensions on Pointer<HtmlSetCursor> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  int get mouseCursor => ref.mouseCursor;
}
