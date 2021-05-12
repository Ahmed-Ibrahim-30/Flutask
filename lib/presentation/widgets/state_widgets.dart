import 'package:flutask/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Center(
        child: LottieBuilder.asset(Resources.loading,
            height: MediaQuery.of(context).size.height * 0.2),
      ),
    );
  }
}

class EmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Center(
        child: LottieBuilder.asset(Resources.empty,
            height: MediaQuery.of(context).size.height * 0.3),
      ),
    );
  }
}

class FailureWidget extends StatelessWidget {

  final String message;

  const FailureWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieBuilder.asset(Resources.error,
                height: MediaQuery.of(context).size.height * 0.12),
            SizedBox(height: 20),
            Text(message, style: AppTheme.text1),
          ],
        ),
      ),
    );
  }
}
