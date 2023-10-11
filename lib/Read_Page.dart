import 'package:flutter/material.dart';
import 'package:nfc/WritePage.dart';
import 'package:nfc/utils/Utils.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({super.key});

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Nfc Read",style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.teal.shade200
              ),child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WritePage(),));
                  Utils.FlushBarErrorMessage("Successfully Scanning", context);
                },
                child: Image.asset("lib/icons/card.png",scale: 5,)),
            ),
            SizedBox(height: 15,),
            Text("Tap TO NFC Icon",style: TextStyle(fontSize: 20,color: Colors.teal),)
          ],
        ),
      ),
    );
  }
}
