

import 'package:get/get.dart';

class SwitchButtonController extends GetxController{

  RxBool notification=false.obs;

  buttonControl(newValue){
    notification.value=newValue;
  }

}