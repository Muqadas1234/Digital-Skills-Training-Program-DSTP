import 'package:flutter/material.dart';
import 'package:my_calculator/utils/app_colors.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String display = "0";


  Color getColor(String label){
    if(label=='-'||label=='+'||label=='='||label=='%'||label=='*'||label=='/'||label=='AC'){
      return AppColors.orangeColor;


    }

    return AppColors.greyColor;

  }

  // Handle all button taps
  void onButtonTap(String label) {
    setState(() {
      if (label == 'AC') {
        display = "0";
      } else if (label == '=') {
        display = calculatorResult(display);
      } else {
        if (display == '0') {
          display = label;
        } else {
          display = display + label;
        }
      }
    });
  }

  // Calculate result
  String calculatorResult(String expression) {
    String operator = '';

    // Find operator
    for (int i = 0; i < expression.length; i++) {
      String character = expression[i];

      if (character == '+' ||
          character == '-' ||
          character == '*' ||
          character == '/' ||
          character == '%') {
        operator = character;
      }
    }

    // If no operator is found
    if (operator == '') {
      return expression;
    }

    // Split numbers
    List<String> parts = expression.split(operator);

    // Get first number
    double result = double.parse(parts[0]);

    // Calculate with remaining numbers
    for (int i = 1; i < parts.length; i++) {
      double number = double.parse(parts[i]);

      if (operator == '+') {
        result = result + number;
      } else if (operator == '-') {
        result = result - number;
      } else if (operator == '*') {
        result = result * number;
      } else if (operator == '%') {
        result = result % number;
      } else if (operator == '/') {
        if (number == 0) {
          return 'error';
        }

        result = result / number;
      }
    }

    return result.toString();
  }

  // Reusable Component
  Widget myComponent(
      String label, {
        double width = 60,
        double height = 60,
      }) {
    return InkWell(
      onTap: () => onButtonTap(label),
      child: Container(
        height: height,
        width: width,
        decoration:BoxDecoration(
          color: getColor(label),
          borderRadius: BorderRadius.circular(20)

        ),

        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          // Display
          Container(
            height: 180,
            width: double.infinity,
            alignment: Alignment.bottomRight,
            child: Text(
              display,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 50,
              ),
            ),
          ),

          // Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myComponent("AC"),
              myComponent("%"),
              myComponent("/"),
            ],
          ),

          const SizedBox(height: 5),

          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myComponent("7"),
              myComponent("8"),
              myComponent("9"),
              myComponent("*"),
            ],
          ),

          const SizedBox(height: 5),

          // Row 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myComponent("4"),
              myComponent("5"),
              myComponent("6"),
              myComponent("-"),
            ],
          ),

          const SizedBox(height: 5),

          // Row 4
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myComponent("1"),
              myComponent("2"),
              myComponent("3"),
              myComponent("+"),
            ],
          ),

          const SizedBox(height: 5),

          // Row 5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myComponent(
                "0",
                width: 120,
              ),
              myComponent("."),
              myComponent("="),
            ],
          ),
        ],
      ),
    );
  }
}