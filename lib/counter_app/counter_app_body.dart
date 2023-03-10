import 'package:enhanced_counter_app/counter_app/model/counter.dart';
import 'package:enhanced_counter_app/counter_app/widgets/app_title.dart';
import 'package:enhanced_counter_app/counter_app/widgets/counter_buttons.dart';
import 'package:enhanced_counter_app/counter_app/widgets/counter_inherited_widget.dart';
import 'package:enhanced_counter_app/counter_app/widgets/history.dart';
import 'package:flutter/material.dart';

class CounterAppBody extends StatefulWidget {
  // ignore: public_member_api_docs
  const CounterAppBody({super.key});

  @override
  State<StatefulWidget> createState() => _CounterAppBodyState();
}

class _CounterAppBodyState extends State<CounterAppBody> {
  @override
  Widget build(BuildContext context) {
    return CounterState(
      model: Counter(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              AppTitle(),
              CounterButtons(),
              HistoryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
