import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../about_screen.dart';
import '../settings_screen.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  Color? foregroundColor;
  Color? backgroundColor;

  SpeedDialChild _buildDialChild({
    required Icon icon,
    required VoidCallback onTap,
  }) {
    return SpeedDialChild(
      shape: const CircleBorder(),
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      onTap: onTap,
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    foregroundColor = theme.colorScheme.background;
    backgroundColor = theme.colorScheme.secondary;

    return SpeedDial(
      icon: Icons.menu_rounded,
      spacing: 50.0,
      elevation: 0.0,
      direction: SpeedDialDirection.right,
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.white,
      activeBackgroundColor: backgroundColor,
      activeForegroundColor: foregroundColor,
      children: [
        _buildDialChild(
          icon: const Icon(Icons.settings_outlined),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SettingsScreen()),
          ),
        ),
        _buildDialChild(
          icon: const Icon(Icons.local_fire_department_outlined),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AboutScreen()),
          ),
        ),
      ],
    );
  }
}
