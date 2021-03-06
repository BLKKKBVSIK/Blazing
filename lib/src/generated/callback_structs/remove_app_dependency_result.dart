// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class RemoveAppDependencyResult extends Struct {
  static int get callbackId => 3415;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;
}

extension RemoveAppDependencyResultExtensions
    on Pointer<RemoveAppDependencyResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get appId => ref.appId;
}
