// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class DeleteItemResult extends Struct {
  static int get callbackId => 3417;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension DeleteItemResultExtensions on Pointer<DeleteItemResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
