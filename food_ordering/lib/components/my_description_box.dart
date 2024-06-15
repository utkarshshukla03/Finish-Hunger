import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // textstyle
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);

    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delivery fees
          Column(
            children: [
              Text(
                '\ ₹200',
                style: myPrimaryTextStyle,
              ),
              Text(
                'Delivery fee',
                style: mySecondaryTextStyle,
              ),
            ],
          ),

          // delivery time
          Column(
            children: [
              Text(
                '15-30 Min',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              Text('Delivery time',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
            ],
          ),
        ],
      ),
    );
  }
}
