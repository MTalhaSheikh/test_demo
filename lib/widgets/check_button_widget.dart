import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
class CheckButtonWidget extends StatelessWidget {
  const CheckButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFCheckbox(
      size: 20,
      activeBorderColor: Colors.lightBlueAccent,
      inactiveBgColor: Colors.transparent,
      activeIcon: const Icon(
        Icons.check,
        color: Colors.lightBlueAccent,
        size: 15,
      ),
      activeBgColor: Colors.transparent,
      type: GFCheckboxType.circle,
      onChanged: (value) {},
      value: true,
      inactiveIcon: null,
    );
  }
}
