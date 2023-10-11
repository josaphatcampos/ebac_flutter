
import 'package:flutter/cupertino.dart';

class ControllerExercicioModulo11{

  ValueNotifier<bool> isOn = ValueNotifier<bool>(false);
  ValueNotifier<bool> visibility = ValueNotifier<bool>(false);

  void updateSwitch(){
    isOn.value = !isOn.value;
  }

  void toggleVisibility(){
    visibility.value = !visibility.value;
  }
}