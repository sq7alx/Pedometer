import 'package:flutter/material.dart';
import 'package:stepy/src/screen/widget/settings_tile.dart';

class CalScreen extends StatefulWidget {
  const CalScreen({super.key});

  @override
  State<CalScreen> createState() => _CalScreenState();
}

class _CalScreenState extends State<CalScreen> {

//////////
//THIS IS A QUICK SOLUTION FOR TESTING THE FRONT
///////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KALORYMETR')),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 4.0),
        child: Column(
          children: [
            _food1(context),
            const Divider(),
            _food2(context),
            const Divider(),
            _food3(context),
            const Divider(),
            _food4(context),
            const Divider(),
            _food5(context),
            const Divider(),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: AsyncSnapshot.nothing,
        child: const Icon(Icons.add),
      ),
      );

  }



  Widget _food1(context) {
    return SettingsTile(
      icon: Icons.fastfood,
      title: 'Hamburger McDonald\'s',
      subtitle: 'Spaliłeś 0.35 x sztuki',
        onTap: () => AsyncSnapshot.nothing,

    );
  }
  Widget _food2(context) {
    return SettingsTile(
      icon: Icons.fastfood,
      title: 'Banana',
      subtitle: 'Spaliłeś 0.88 x sztuki',
      onTap: () => AsyncSnapshot.nothing,

    );
  }
  Widget _food3(context) {
    return SettingsTile(
      icon: Icons.fastfood,
      title: 'Apple',
      subtitle: 'Spaliłeś 1.83 x sztuki',
      onTap: () => AsyncSnapshot.nothing,

    );
  }

  Widget _food4(context) {
    return SettingsTile(
      icon: Icons.fastfood,
      title: 'Sugar teaspoon',
      subtitle: 'Spaliłeś 4.65 x sztuki',
      onTap: () => AsyncSnapshot.nothing,

    );
  }
  Widget _food5(context) {
    return SettingsTile(
      icon: Icons.fastfood,
      title: 'Snickers 48g',
      subtitle: 'Spaliłeś 0.52 x sztuki',
      onTap: () => AsyncSnapshot.nothing,

    );
  }
}