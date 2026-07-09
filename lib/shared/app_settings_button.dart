import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/theme/theme_provider.dart';
import '../../app/localization/locale_provider.dart';

class AppSettingsButton extends ConsumerWidget {
  const AppSettingsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return PopupMenuButton<String>(
      icon: const Icon(Icons.settings),

      onSelected: (value) {
        switch (value) {
          case 'theme':
            ref
                .read(themeProvider.notifier)
                .changeTheme(
                  themeMode == ThemeMode.dark
                      ? ThemeMode.light
                      : ThemeMode.dark,
                );

            break;

          case 'en':
            ref.read(localeProvider.notifier).changeLanguage('en');

            break;

          case 'ar':
            ref.read(localeProvider.notifier).changeLanguage('ar');

            break;
        }
      },

      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'theme',

          child: Row(
            children: [
              Icon(
                themeMode == ThemeMode.dark
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),

              const SizedBox(width: 12),

              Text(themeMode == ThemeMode.dark ? 'Light Mode' : 'Dark Mode'),
            ],
          ),
        ),

        const PopupMenuDivider(),

        const PopupMenuItem(
          value: 'en',

          child: Row(
            children: [
              Icon(Icons.language),

              SizedBox(width: 12),

              Text('English'),
            ],
          ),
        ),

        const PopupMenuItem(
          value: 'ar',

          child: Row(
            children: [
              Icon(Icons.language),

              SizedBox(width: 12),

              Text('العربية'),
            ],
          ),
        ),
      ],
    );
  }
}
