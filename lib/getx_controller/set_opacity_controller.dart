
import 'package:get/get.dart';

class OpacityController extends GetxController{

  RxDouble opacity=.1.obs;

  setOpacity(newOpacity){
    opacity.value=newOpacity;
  }
}