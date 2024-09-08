import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenagment_one/getx_controller/switch_button_controller.dart';

class SwitchButtonExample extends StatefulWidget {
  const SwitchButtonExample({Key? key}) : super(key: key);

  @override
  State<SwitchButtonExample> createState() => _SwitchButtonExampleState();
}

class _SwitchButtonExampleState extends State<SwitchButtonExample> {
  final switchButtonController=Get.put(SwitchButtonController());
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title:const Text('Switch button example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Notification"),
            Obx((){
              print('switch button build');
              return Switch(
                  value: switchButtonController.notification.value,
                  onChanged: (newValue){
                    switchButtonController.buttonControl(newValue);
                  });
            })
          ],
        ),
      ),
    );
  }
}
