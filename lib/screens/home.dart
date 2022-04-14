import 'package:flutter/material.dart';
import 'package:roller_skating/models/skater.dart';
import 'package:roller_skating/utils/theme.dart';
import 'package:roller_skating/widgets/icon_button.dart';
import 'package:roller_skating/widgets/rent_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const SkatingIconButton(
            child: ImageIcon(
              AssetImage("images/menu.png"),
            ),
          ),
          title: const Text("roller skating"),
          centerTitle: true,
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage("images/stacy.jpg"),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TabBar(
                  labelColor: SkatingTheme.white,
                  unselectedLabelColor: SkatingTheme.black,
                  indicator: BoxDecoration(
                    color: SkatingTheme.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  tabs: const [
                    Tab(
                      icon: Text("All"),
                    ),
                    Tab(
                      icon: Text("Rent"),
                    ),
                    Tab(
                      icon: Text("Buy"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: Skater.list
                      .map(
                        (e) => RentCard(e),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
