import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/listController.dart';
import 'package:getx/controller/tabContoller.dart';

class PageOne extends StatelessWidget {
  TabControllers controller = Get.find();
  ListController listController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 78, 81, 77),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: 100,
              child: Center(
                  child: Text(
                'X= ${controller.getX.toString()}',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              )),
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(12)),
            ),
            SizedBox(
              height: 15,
            ),
            Obx(
              () => Container(
                width: double.maxFinite,
                height: 100,
                child: Center(
                    child: Text(
                  "y=" + controller.getY.toString(),
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
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                controller.increasey();
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                child: Center(
                    child: Text(
                  " Increase y",
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
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                controller.sumXY();
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                child: Center(
                    child: Text(
                  " Sum ",
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
            SizedBox(
              height: 20,
            ),
            Obx(() => Container(
                  width: double.maxFinite,
                  height: 100,
                  child: Center(
                      child: Text(
                    " Sum =" + controller.sum.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(12)),
                )),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                listController.addValues(Get.find<TabControllers>().sum.value);
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                child: Center(
                    child: Text(
                  " Save Total",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                )),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(12)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
