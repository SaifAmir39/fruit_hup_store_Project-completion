import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';

class CustomRangeSlider extends StatefulWidget {
  final Function(RangeValues) onChanged;

  const CustomRangeSlider({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomRangeSliderState createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _values = RangeValues(5, 200);

  double min = 5;
  double max = 200;

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
          height: 60,
          child: Stack(
            children: [
              // 🔢 الأرقام
              Positioned(
                left: startPos > 30 ? startPos - 30 : 0,
                top: 0,
                child: Text(
                  "\EGP${_values.start.toInt()}",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Positioned(
                left: endPos > 30 ? endPos - 30 : startPos + 40,
                top: 0,
                child: Text(
                  "\EGP${_values.end.toInt()}",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
                  activeColor:  AppColors.primaryColor,
                  inactiveColor: Colors.grey[300],
                  onChanged: (values) {
                    setState(() {
                      _values = values;
                    });
                     widget.onChanged(values);
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