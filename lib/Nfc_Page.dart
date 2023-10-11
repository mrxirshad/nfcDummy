import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nfc/Read_Page.dart';

class NfcPage extends StatefulWidget {
  const NfcPage({super.key});

  @override
  State<NfcPage> createState() => _NfcPageState();
}

class _NfcPageState extends State<NfcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("NFC",style: TextStyle(color: Colors.white),),
        centerTitle: true,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ReadPage(),));
                },
                child: Text("Read",style: TextStyle(fontSize: 20,color: Colors.white),))),
            ),
            SizedBox(height: 15,),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.teal,
              ),child: Center(child: Text("Write",style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}

