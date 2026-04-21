import 'package:flutter/material.dart';

class ProfileItemModle {
  final String image;
  final String title;
  final VoidCallback onTap;

  ProfileItemModle({required this.image, required this.title, required this.onTap});
}