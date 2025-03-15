import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/features/cart/data/datasources/cart_data.dart';
import 'package:nectar/features/cart/presentation/widgets/bottom_sheet.dart';
import '../widgets/cart_item.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const routeName = '/cartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartItem(
                    cart: cartItems[index],
                  );
                },
              ),
            ),
            // CustomButton(
            //   onPressed: () {
            //     showModalBottomSheet(context: context, builder: (context) => CheckOutBottomSheet(totalCost: 20,));
            //   },
            //   backgroundColor: Color(0xff53B175),
            //   text: 'Go to Checkout',
            // ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff53B175))),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => CheckOutBottomSheet(
                            totalCost: 20,
                          ));
                },
                child: Center(
                  child: Text(
                    'Go To Checkout',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
