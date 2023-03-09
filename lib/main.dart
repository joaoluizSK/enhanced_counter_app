import 'package:enhanced_counter_app/counter_app/counter_app_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EnhancedCounterApp());
}

class EnhancedCounterApp extends StatelessWidget {
  const EnhancedCounterApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CounterAppBody(),
    );
  }
}
