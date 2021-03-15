import 'package:flutter/material.dart';

import '../components/main_drawer.dart';

import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Settings settings;
  final Function(Settings) onSettingsChanged;

  const SettingsScreen({
    Key key,
    @required this.settings,
    @required this.onSettingsChanged,
  }) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch({
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  }) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Settings',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  title: 'Gluten-Free',
                  subtitle: 'Shows only gluten-free recipes',
                  value: settings.isGlutenFree,
                  onChanged: (value) => setState(
                    () => settings.isGlutenFree = value,
                  ),
                ),
                _createSwitch(
                  title: 'Lactose-Free',
                  subtitle: 'Shows only lactose-free recipes',
                  value: settings.isLactoseFree,
                  onChanged: (value) => setState(
                    () => settings.isLactoseFree = value,
                  ),
                ),
                _createSwitch(
                  title: 'Vegan',
                  subtitle: 'Shows only vegan recipes',
                  value: settings.isVegan,
                  onChanged: (value) => setState(
                    () => settings.isVegan = value,
                  ),
                ),
                _createSwitch(
                  title: 'Vegan',
                  subtitle: 'Shows only vegetarian recipes',
                  value: settings.isVegetarian,
                  onChanged: (value) => setState(
                    () => settings.isVegetarian = value,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
