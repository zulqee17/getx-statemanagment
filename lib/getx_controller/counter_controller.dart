
import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController{
  //on getx we declare datatype with Rx
  // and obs mean observibal  mean it observe changes in getx we use that obs
  RxInt counter=1.obs;


//   now we create function that increment the counter
  incrementCounter(){
   counter.value++;
  }

  timer(){
    Timer.periodic(Duration(milliseconds: 500), (timer){
      counter.value++;
    });
  }
}