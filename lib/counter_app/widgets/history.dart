import 'package:flutter/material.dart';

class HistoryWidget extends StatefulWidget {
  final List<int> increaseHistory;

  const HistoryWidget({
    super.key,
    required this.increaseHistory,
  });

  @override
  State<StatefulWidget> createState() => _HistoryWidget();
}

class _HistoryWidget extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
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
              width: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: widget.increaseHistory.length,
                itemBuilder: (_, index) {
                  return Text(
                    '${widget.increaseHistory[index]}',
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox(
                    width: 10,
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
