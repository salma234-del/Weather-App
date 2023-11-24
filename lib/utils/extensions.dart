import 'package:flutter/material.dart';

// extension to put empty space with SizedBox
extension EmptySpace on num {
  SizedBox get height => SizedBox(height: toDouble());

  SizedBox get width => SizedBox(width: toDouble());
}

