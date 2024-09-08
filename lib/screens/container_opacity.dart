import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenagment_one/getx_controller/set_opacity_controller.dart';


class OpacityExample extends StatefulWidget {
  const OpacityExample({Key? key}) : super(key: key);

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {

  // here we add dependency throught Get.put()
  // we create object of class in getx like below
   final OpacityController opacityController=Get.put(OpacityController());
    @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title:const  Text('Getx Statemanagment'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // now to incresase the opacity of container
          // so do this with Obx function like below
          Obx((){
            return Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent.withOpacity(opacityController.opacity.value),
            );
          }
          ),


          Obx((){
            return Slider(
                value: opacityController.opacity.value,
                onChanged: (newValue){
                  opacityController.setOpacity(newValue);
                });
          }),

        ]
      ),
    );
  }
}
