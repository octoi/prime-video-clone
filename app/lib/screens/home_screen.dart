import 'package:app/utils/colors.dart';
import 'package:app/widgets/top.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: appBgColor,
        appBar: AppBar(
          backgroundColor: appBgColor,
          elevation: 0.0,
          title: const Text('prime video'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'TV Shows'),
              Tab(text: 'Movies'),
              Tab(text: 'Kids'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              Top(),
            ],
          ),
        ),
      ),
    );
  }
}
