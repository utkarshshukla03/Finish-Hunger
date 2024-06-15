import 'package:flutter/material.dart';
import 'package:food_ordering/components/my_receipt.dart';
import 'package:food_ordering/models/restaurant.dart';
import 'package:food_ordering/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  // get access to db
  FireStoreService db = FireStoreService();

  @override
  void initState() {
    super.initState();

    // if we get to this page, submit order to firestore db
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Delivery in progress...."),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(children: [
        MyReceipt(),
      ]),
    );
  }

  // Custom Bottom Nav Bar - Message / Call Delivery Driver

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          // profile pic of driver
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              )),

          const SizedBox(
            width: 10,
          ),
          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "XYZ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              Text(
                "Driver",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),

          const Spacer(),

          Row(
            children: [
              // message button
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    color: Theme.of(context).colorScheme.primary,
                  )),
              const SizedBox(
                width: 10,
              ),
              // call button
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    color: Colors.green,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
