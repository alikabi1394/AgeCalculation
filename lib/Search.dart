import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //حذف كلمة DEBUG
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("حساب العمر"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 240, 179, 47),
        ),
         drawer: MyDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${date.day}/${date.month}/${date.year}',
                 style: const TextStyle(fontSize: 30),
                ),
                 const SizedBox(height: 10,),
                 ElevatedButton(
                  child: const Text("اخترالتاريخ" , style: 
                  TextStyle(fontSize: 20)),
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100),
                    );
                    if (newDate == null) return;
                    setState(() {
                      date = newDate;
                    });
                  },
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("العمر الحالي ${DateTime.now().year - date.year}",
                    style: const TextStyle(fontSize: 30),),
                 )
               ],
             ),
            ),
        )
      );
  }
}


