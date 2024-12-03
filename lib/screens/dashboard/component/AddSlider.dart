import 'package:ekazi/constants/app_colors.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

Widget addSlider() {
  const List<String> sampleImages = [
    "assets/adds/think1.jpg",
    "assets/adds/exact_add1.jpg",
    "assets/adds/above_beyond1.jpg",
  ];
  return FanCarouselImageSlider.sliderType1(
    imagesLink: sampleImages,
    imageFitMode: BoxFit.fill,
    expandImageWidth: double.infinity,
    imageRadius: 24,
    slideViewportFraction: 0.9,
    isAssets: true,
    autoPlay: true,
    sliderHeight: 260,
    sliderWidth: double.infinity,
    isClickable: false,
    indicatorActiveColor: colorApp,
  );
}
