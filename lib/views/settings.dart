import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/settings.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settingsState = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Units'),
                DropdownButton(
                  items: ["Imperial", "Metric"]
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  value: settingsState.unit,
                  onChanged: (value) {
                    settingsState.unit = value;
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Wax Lines'),
                Row(
                  children: [
                    FilterChip(
                      label: Text("Swix"),
                      selected: settingsState.doContain("Swix"),
                      onSelected: (value) => value
                          ? settingsState.addWaxLine("Swix")
                          : settingsState.deleteWaxLine("Swix"),
                    ),
                    FilterChip(
                      label: Text("Toco"),
                      selected: settingsState.doContain("Toco"),
                      onSelected: (value) => value
                          ? settingsState.addWaxLine("Toco")
                          : settingsState.deleteWaxLine("Toco"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
