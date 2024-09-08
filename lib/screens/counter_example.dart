import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenagment_one/getx_controller/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // here we add dependency throught Get.put()
  // we create object of class in getx like below
  final CounterController counterController = Get.put(CounterController());
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
          // now to increment in here so do this with Obx function like below
          Obx(() {
            print('widget build from here');
            return Center(
              child: Text(
                counterController.counter.toString(),
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            );
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // here we call that function that increment counter value
          counterController.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
