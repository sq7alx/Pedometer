import 'package:flutter/material.dart';

class StepGoalDialog {
  static Future<int> show({
    required BuildContext context,
    required int initialValue,
  }) async {
    final String? value = await showDialog(
      context: context,
      builder: (context) {
        final controller = TextEditingController(
          text: initialValue.toString(),
        );

        return AlertDialog(
          content: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            maxLength: 7,
            autofocus: false,
            decoration: const InputDecoration(
              labelText: 'Nowy cel kroków: ',
              filled: false,

            ),
            onFieldSubmitted: (value) => Navigator.of(context).pop(value),
          ),

        );
      },
    );

    if (value == null) {
      return initialValue;
    }

    final newGoal = int.tryParse(value);

    if (newGoal != null && !newGoal.isNegative && newGoal.isFinite) {
      return newGoal;
    } else {
      return initialValue;
    }
  }
}
