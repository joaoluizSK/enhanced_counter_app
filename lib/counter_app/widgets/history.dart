import 'package:enhanced_counter_app/counter_app/widgets/counter_inherited_widget.dart';
import 'package:flutter/material.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _HistoryWidget();
}

class _HistoryWidget extends State<HistoryWidget> {
  final controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final counterState = CounterState.of(context).model;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Increase Counter'),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ),
            child: SizedBox(
              height: 40,
              child: AnimatedBuilder(
                animation: counterState,
                builder: (context, _) {
                  if (counterState.history.isNotEmpty) {
                    // Moving the scroll controller to the end
                    controller.animateTo(
                      controller.position.maxScrollExtent + 50 + 10,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }

                  return ListView.separated(
                    key: const Key('HistoryWidget-ListView'),
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: counterState.history.length,
                    itemBuilder: (_, index) {
                      return Card(
                        elevation: 4,
                        shadowColor: Colors.blueAccent,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('${counterState.history[index]}'),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
