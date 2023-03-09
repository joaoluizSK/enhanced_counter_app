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
  late ListView list = buildList();

  ListView buildList() {
    return ListView.separated(
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
    );
  }

  @override
  void didUpdateWidget(covariant HistoryWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.increaseHistory.length != oldWidget.increaseHistory.length) {
      list = buildList();
    }
  }

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
              child: list,
            ),
          ),
        ),
      ],
    );
  }
}
