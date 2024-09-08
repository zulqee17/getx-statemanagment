

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class LoginApiController extends GetxController{
  final emailController=TextEditingController();
  final passController=TextEditingController();

  RxBool isLoading=false.obs;

    void logInApi()async{

      // if wwe send we have data in raw form the we first initialize
      // body/header like below
      // Map<String ,dynamic> body={
      //   'email':emailController.value.text,
      //   'password':passController.value.text
      // };
      // Map<String ,dynamic> header={};
      // after initializing that then we assign that body/header
      // to body and header of post,patch,delete api like below
      // body:jsonEncode(body)
      // header:jsonEncode(header)
      //  these all things api dev tells us

      isLoading.value=true;
    try{
      final response=await http.post(Uri.parse('https://reqres.in/api/login'),
      body: {
        'email':emailController.value.text,
        'password':passController.value.text
      });
      var data=jsonDecode(response.body);
      if(response.statusCode==200){
        isLoading.value=false;
        Get.snackbar('Login Successful', 'you are logged in');
      }else{
        isLoading.value=false;
        Get.snackbar('Login Unsuccessful', data['error']);
      }

    }catch(e){
      isLoading.value=false;
      print('error :${e.toString()}');
    }
  }

}