import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/sum_provider.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
          appBar: AppBar(title: const Text("Sum Next Page"),),
          body: Consumer<SumProvider>(
            builder: (context, provider, child){
    
                return Container(
                  child: Text('${provider.sum.toString()}' + 'Value'  ),
                );

       },
          ),
        );

      



  }
}