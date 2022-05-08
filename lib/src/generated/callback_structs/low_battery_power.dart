// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class LowBatteryPower extends Struct {
  static int get callbackId => 702;

  @UnsignedChar()
  external int minutesBatteryLeft;
}

extension LowBatteryPowerExtensions on Pointer<LowBatteryPower> {
  int get minutesBatteryLeft => ref.minutesBatteryLeft;
}
