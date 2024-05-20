import 'package:flutter/material.dart';
import 'package:opensooq/core/widget/custom_app_bar.dart';
import 'package:opensooq/future/notification/presentation/pages/view/notification_view.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'notifications',automaticallyImplyLeading: true),
      body: NotificationView(),
    );
  }
}
