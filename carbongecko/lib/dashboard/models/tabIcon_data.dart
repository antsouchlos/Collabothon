import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/dashboard/2.png',
      selectedImagePath: 'assets/dashboard/22.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/dashboard/1.png',
      selectedImagePath: 'assets/dashboard/11.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/dashboard/3.png',
      selectedImagePath: 'assets/dashboard/33.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/dashboard/3.png',
      selectedImagePath: 'assets/dashboard/33.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
