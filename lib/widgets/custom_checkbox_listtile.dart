import 'package:auto_buying/helper/theme_helper.dart';
import 'package:flutter/material.dart';

class CustomCheckBoxListTile extends StatelessWidget {
  final String? checkBoxText;
  final bool? value;
  final ValueChanged<bool?>? onChanged;

  const CustomCheckBoxListTile({
    Key? key,
    this.checkBoxText,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          visualDensity: VisualDensity.compact,
          side: BorderSide(color: ThemeHelper.grey2, width: 0.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          checkBoxText ?? '',
          style: TextStyle(fontSize: 13, color: ThemeHelper.grey3),
        )
      ],
    );
  }
}
