import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  @override
  _CustomRangeSliderState createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _values = RangeValues(150, 300);

  double min = 0;
  double max = 500;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        // حساب position لكل thumb
        double startPos =
            ((_values.start - min) / (max - min)) * width;
        double endPos =
            ((_values.end - min) / (max - min)) * width;

        return SizedBox(
          height: 35,
          child: Stack(
            children: [
              // 🔢 الأرقام
              Positioned(
                left: startPos - 20,
                top: 0,
                child: Text(
                  "\$${_values.start.toInt()}",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: endPos - 20,
                top: 0,
                child: Text(
                  "\$${_values.end.toInt()}",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              // 🎚️ السلايدر
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: RangeSlider(
                  values: _values,
                  min: min,
                  max: max,
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey[300],
                  onChanged: (values) {
                    setState(() {
                      _values = values;
                    });
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}