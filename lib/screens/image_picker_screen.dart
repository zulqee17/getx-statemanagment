import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenagment_one/getx_controller/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  final ImagePickerController imagePickerController=Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Getx'),
        centerTitle: true,
      ),
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: imagePickerController.imagePath.isNotEmpty?
                FileImage(File(imagePickerController.imagePath.toString())):
                null,
              ),
            ),
            SizedBox(height: 10,),
            OutlinedButton(
                onPressed: (){
                  imagePickerController.imagePicker();
                },
                child: Text('Pick Image'))
          ],
        );
      })
    );
  }
}
