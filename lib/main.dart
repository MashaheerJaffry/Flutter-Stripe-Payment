import 'package:flutter/material.dart';
import 'package:flutter_stripe_demo/checkout/stripe_checkout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stripe Checkout Demonstration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (_) => HomePage(),
        '/success': (_) => SuccessPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Center(
        child: GestureDetector(
          onTap: () => redirectToCheckout(context),
          child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(16.0)),
              child: Center(
                child: Text(
                  'Stripe Checkout!',
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Success',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
