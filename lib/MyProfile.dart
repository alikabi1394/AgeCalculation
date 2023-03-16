import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
TimeOfDay time = TimeOfDay(hour: 07, minute: 30);
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      //حذف كلمة DEBUG
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("تحديد الوقت"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 207, 175, 87),
        ),
        drawer: MyDrawer(),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                 '${time.hour}: ${time.minute}',
                  style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                child: const Text('ادخل الوقت', style:
                TextStyle(fontSize: 20)),
                onPressed: () async {
                  TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time,
                  );
                  if (newTime == null) return;
                  setState(() {
                    time = newTime;
                  });
                },
              ),
           ],
         ),
        ),
      ),
    );
  }
}

