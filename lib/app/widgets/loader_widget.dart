import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  final bool canPop;

  const LoaderWidget({super.key, this.canPop = false});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      child: const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
