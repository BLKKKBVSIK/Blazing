// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageUpdatePublishedFileResult extends Struct {
  static int get callbackId => 1316;

  @Int32()
  external EResult result;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Bool()
  external bool userNeedsToAcceptWorkshopLegalAgreement;
}

extension RemoteStorageUpdatePublishedFileResultExtensions
    on Pointer<RemoteStorageUpdatePublishedFileResult> {
  EResult get result => ref.result;

  PublishedFileId get publishedFileId => ref.publishedFileId;

  bool get userNeedsToAcceptWorkshopLegalAgreement =>
      ref.userNeedsToAcceptWorkshopLegalAgreement;
}
