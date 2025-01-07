import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nextpage.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Getx Flutter'),),
          backgroundColor: Colors.blueGrey.shade200,

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.to(()=>Nextpage(),arguments: "This is main page Data",
                  transition: Transition.rightToLeft,
                    // curve: Curves.bounceInOut,
                  );
                },
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
              ),
              Text("Navigate to next")
            ],
          ),
        ),
      ),

    );
  }
}
