import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF090C20);
const kTileColor = Color(0xFF101F33);
const kSelectedTileColor = Color.fromARGB(255, 78, 47, 84);
const kActiveTextColor = Color(0xFFFFFFFF);
const kInactiveTextColor = Color(0xFF8D8E98);
const kActionButtonColor = Color(0xFF4C4F5E);
const kButtonColor = Color(0xFFEB1555);

var kTileBoxDecoration = BoxDecoration(
                          color: kTileColor,
                          borderRadius: BorderRadius.circular(10),
                        );
var kSelectedTileBoxDecoration = BoxDecoration(
                          color: kSelectedTileColor,
                          borderRadius: BorderRadius.circular(10),
                        );