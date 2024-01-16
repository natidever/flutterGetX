import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/listController.dart';
import 'package:getx/controller/tabContoller.dart';
import 'package:getx/pageone.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListController listController = Get.find();
  TabControllers controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TabControllers>(builder: (builderController) {
                return Container(
                  width: 100,
                  height: 100,
                  child: Center(
                      child: Text(
                    controller.getX.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  )),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 53, 227, 250),
                      borderRadius: BorderRadius.circular(12)),
                );
              }),
              SizedBox(
                height: 10,
              ),
              Obx(() => Container(
                    padding: EdgeInsets.all(20),
                    width: 100,
                    height: 100,
                    child: Center(
                        child: Text(
                      listController.getList.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 53, 227, 250),
                        borderRadius: BorderRadius.circular(12)),
                  )),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.maxFinite,
                    height: 100,
                    child: Center(
                        child: Text(
                      'Tap',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                onTap: () {
                  controller.increaseX();
                },
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.maxFinite,
                    height: 100,
                    child: Center(
                        child: Text(
                      'Go to next page',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                onTap: () {
                  Get.to(() => PageOne());
                },
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.maxFinite,
                    height: 100,
                    child: Center(
                        child: Text(
                      'Tap',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                onTap: () {},
              ),
            ],
          )),
    );
  }
}
