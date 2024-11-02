import 'package:billy_bills_reminder_app/views/widgets/inner_appbar.dart';
import 'package:billy_bills_reminder_app/views/widgets/settings_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InnerAppbar(title: "Settings"),
      body: ListView(
        children: const [
          SettingsTile(
            title: "Language",
            icon: Icons.language,
            activeText: "English",
          ),
          SettingsTile(
            title: "Currency",
            icon: Icons.currency_exchange,
            activeText: "US Dollars",
          ),
          SettingsTile(title: "Theme", icon: Icons.palette_outlined),
          SettingsTile(
            title: "Week Start",
            icon: Icons.calendar_month_outlined,
            activeText: "Monday",
          ),
          SettingsTile(
              title: "Backup & Restore Data", icon: Icons.cloud_outlined),
          SettingsTile(
              title: "Notifcations", icon: Icons.notifications_active_outlined),
          SettingsTile(
            title: "Reminder Time",
            icon: Icons.av_timer_outlined,
            activeText: "8:00AM",
          ),
          SettingsTile(
              title: "Help & Support", icon: Icons.headphones_outlined),
          SettingsTile(title: "Rate the app", icon: Icons.star_outline),
          SettingsTile(title: "Privacy Policy", icon: Icons.lock_outline),
        ],
      ),
    );
  }
}
