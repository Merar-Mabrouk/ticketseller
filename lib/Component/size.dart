import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getWidth() {
    return Get.width;
  }
  static getHeight(){
    return Get.height;
  }  
}
