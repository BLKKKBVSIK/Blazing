// ignore_for_file: public_member_api_docs
import "dart:ffi";

import "../enums/eresult.dart";

@Packed(4)
class AssociateWithClanResult extends Struct {
  static int get callbackId => 210;

  @Int32()
  external EResult result;
}

extension AssociateWithClanResultExtensions
    on Pointer<AssociateWithClanResult> {
  EResult get result => ref.result;
}
