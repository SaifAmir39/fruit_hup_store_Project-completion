import 'package:flutter/material.dart';

enum SortType { lowToHigh, highToLow }

class SortOptions extends StatefulWidget {
  final Function(SortType) onChanged;

  const SortOptions({super.key, required this.onChanged});

  @override
  State<SortOptions> createState() => _SortOptionsState();
}

class _SortOptionsState extends State<SortOptions> {
  SortType? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<SortType>(
          value: SortType.lowToHigh,
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
            widget.onChanged(value!);
          },
          title: Text(
            "السعر ( الأقل إلى الأعلى )",
            textAlign: TextAlign.right,
          ),
          controlAffinity: ListTileControlAffinity.trailing, // يخلي الدائرة يمين
        ),

        RadioListTile<SortType>(
          value: SortType.highToLow,
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
            widget.onChanged(value!);
          },
          title: Text(
            "السعر ( الأعلى إلى الأقل )",
            textAlign: TextAlign.right,
          ),
          controlAffinity: ListTileControlAffinity.trailing,
        ),
      ],
    );
  }
}