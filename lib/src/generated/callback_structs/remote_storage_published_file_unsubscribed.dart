// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStoragePublishedFileUnsubscribed extends Struct {
  static int get callbackId => 1322;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @UnsignedInt()
  external AppId appId;
}

extension RemoteStoragePublishedFileUnsubscribedExtensions
    on Pointer<RemoteStoragePublishedFileUnsubscribed> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  AppId get appId => ref.appId;
}
