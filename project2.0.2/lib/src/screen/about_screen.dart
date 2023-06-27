import 'package:flutter/material.dart';
import 'package:stepy/src/screen/widget/cal_screen.dart';


import 'widget/settings_tile.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const _assetImage = AssetImage('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KALORYMETR')),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 4.0),
        child: Column(
          children: [
            _calories(context),
            const Divider(),

          ],
        ),
      ),
    );
  }
}


Widget _calories(context) {
  return SettingsTile(
    icon: Icons.local_fire_department,
    title: 'Spaliłeś 93 kalorii',
    subtitle: 'Kliknij po więcej',
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const CalScreen()),

    ),
  );
}

/*







children: [
            SettingsTile(
              icon: Icons.local_fire_department_outlined,
              title: 'Kalorymetr',
              subtitle: 'Sprawdź, ile spaliłeś!',
              onTap: () => showLicensePage(
                context: context,
                applicationName: 'Spalone kalorie',
                applicationVersion: '2',
                applicationIcon:
                const Icon(Icons.local_fire_department),
              ),
            ),
          ],*/