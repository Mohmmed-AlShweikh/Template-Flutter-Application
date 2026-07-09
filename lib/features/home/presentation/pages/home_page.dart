import 'package:flutter/material.dart';
import 'package:flutter_production_template/app/localization/app_localization.dart';
import 'package:flutter_production_template/shared/app_settings_button.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/home_provider.dart';

import '../widgets/home_card.dart';

import '../../../../shared/widgets/loading_widget.dart';

import '../../../../shared/widgets/error_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final home = ref.watch(homeProvider);

    return Scaffold(
      appBar: AppBar(title:  Text(AppLocalization.of(context).translate('home')),
      actions: const[
        AppSettingsButton(),
      ],
      ),
      body: home.when(
        loading: () => const LoadingWidget(),

        error: (error, stack) => ErrorWidgetApp(
          message: error.toString(),

          onRetry: () {
            ref.invalidate(homeProvider);
          },
        ),

        data: (data) => Padding(
          padding: const EdgeInsets.all(16),

          child: ListView.builder(itemBuilder: (context, index) => HomeCard(data: data[index]), itemCount: data.length),
        ),
      ),
    );
  }
}
