import 'package:flutter/material.dart';

import 'InputPage.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("WritePage",style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.teal,
              ),child: Center(child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NfcPay()));
                },
                child: Text("Read",style: TextStyle(fontSize: 20,color: Colors.white),))),
            ),
          ],
        ),
      ),
    );
  }
}
