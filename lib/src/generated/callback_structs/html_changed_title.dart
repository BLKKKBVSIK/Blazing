// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlChangedTitle extends Struct {
  static int get callbackId => 4508;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> title;
}

extension HtmlChangedTitleExtensions on Pointer<HtmlChangedTitle> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get title => ref.title;
}
