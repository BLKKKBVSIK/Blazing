// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStoragePublishedFileUpdated extends Struct {
  static int get callbackId => 1330;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external int unused;
}

extension RemoteStoragePublishedFileUpdatedExtensions
    on Pointer<RemoteStoragePublishedFileUpdated> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get appId => ref.appId;

  int get unused => ref.unused;
}
