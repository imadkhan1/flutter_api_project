import 'package:flutter/material.dart';
import 'package:flutter_api_project/complex_get_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
       Center(
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
          ),
          onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ComplexGetApi()));     
          }, 
          child: const SizedBox(height:70,
          width: 120,
          child:  Center(child:  Text('Get API Data', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black)))),
               ),
       ),
    );
  }
}