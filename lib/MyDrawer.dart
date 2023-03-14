import 'package:flutter/material.dart';
import 'Home.dart';
import 'MyProfile.dart';
import 'Search.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  void openHomeScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  void openProfileScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyProfile(),
        ));
  }

  void openSearchScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Search(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () => openHomeScreen(context),
            leading: Icon(Icons.home),
            //Home
            title: Text("الرئيسية"),
            subtitle: Text("الانتقال الى الصفحة الرئيسية"),
          ),
          ListTile(
            onTap: () => openProfileScreen(context),
            leading: Icon(Icons.person),
            title: Text("اختيار الوقت"),
            subtitle: Text("قائمة تختار منها الوقت المراد ادراجة في الحقل"),
          ),
          ListTile(
            onTap: () => openSearchScreen(context),
            leading: Icon(Icons.search),
            title: Text("اختيار التاريخ "),
            subtitle: Text("مع  قائمة تختار منها التاريخ المراد ادراجة في الحقل مع تحديد العمر الحالي"),
            
          ),
        ],
      ),
    );
  }
}