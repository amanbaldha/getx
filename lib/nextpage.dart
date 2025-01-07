import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nextpage extends StatelessWidget {
  const Nextpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "Second Page"),
          backgroundColor: Colors.blueGrey.shade200,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  color: Colors.green,
                  height: 200,
                  width: 300,
                  child: Center(child: Text(Get.arguments,style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
              ),
              Text("Navigate to back",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      );


  }
}
