// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "package:ffi/ffi.dart";

import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class WorkshopEulaStatus extends Struct {
  static int get callbackId => 3420;

  @Int32()
  external EResult result;

  @UnsignedInt()
  external AppId appId;

  @UnsignedInt()
  external int version;

  @UnsignedInt()
  external RTime32 action;

  @Bool()
  external bool accepted;

  @Bool()
  external bool needsAction;
}

extension WorkshopEulaStatusExtensions on Pointer<WorkshopEulaStatus> {
  EResult get result => ref.result;

  AppId get appId => ref.appId;

  int get version => ref.version;

  RTime32 get action => ref.action;

  bool get accepted => ref.accepted;

  bool get needsAction => ref.needsAction;
}
