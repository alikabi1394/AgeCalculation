import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  DateTime date = DateTime.now();
  //DataTable date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 76, 163, 175),
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
                      firstDate: DateTime(2000),
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
                   child: Text("${DateTime.now().year - date.year}",
                    style: const TextStyle(fontSize: 30),),
                 )
                 
               ],
               
               
             ),
            ),
            
        )
        
      );
      
  }
}


