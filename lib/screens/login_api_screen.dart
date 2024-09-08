import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenagment_one/getx_controller/login_api_controller.dart';

class LoginApiScreen extends StatefulWidget {
  const LoginApiScreen({Key? key}) : super(key: key);

  @override
  State<LoginApiScreen> createState() => _LoginApiScreenState();
}

class _LoginApiScreenState extends State<LoginApiScreen> {
  final controller = Get.put(LoginApiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Api Getx'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(
                hintText: 'enter email',
              ),
            ),
            TextFormField(
              controller: controller.passController,
              decoration: InputDecoration(
                hintText: 'enter password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.logInApi();
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: controller.isLoading.value
                      ? const Center(
                        child:  CircularProgressIndicator(
                            strokeWidth: 3,
                          ),
                      )
                      : const Center(child: Text('Log In')),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
