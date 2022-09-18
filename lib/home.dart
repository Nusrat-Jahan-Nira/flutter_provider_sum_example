import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:test_provider/next.dart';
import 'package:test_provider/sum_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController sumController = TextEditingController();
  
  late String value;

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: const Text("Sum App"),),
          body: Form(
              child: Consumer<SumProvider>(
                builder: (context, provider, child){

                 return Column(
                   children: [
                    TextFormField(
                    controller: sumController,
                    decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter a number',
                  
                  ),
                 ),

                     TextButton(onPressed: (){
                  
                      provider.sumNumbers(int.parse(sumController.text.toString()), 2);
                      
                 
                       }   ,
                      child: const Text("Sum")),



                     GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: 
                       (context) => Next()));
                      },
                      child: Text(provider.sum.toString(),)),
                   ],
                 );
               },
              )
            ),
        );
      
   
  }
}