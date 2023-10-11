import 'package:flutter/material.dart';
import 'package:nfc/AmountPay.dart';
import 'package:pinput/pinput.dart';

class PinputPage extends StatefulWidget {
  const PinputPage({super.key});

  @override
  State<PinputPage> createState() => _PinputPageState();
}

class _PinputPageState extends State<PinputPage> {

  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification Pin",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        children: [
          SizedBox(height: 50,),
          Center(child: Text("Please Enter Your Pin",style: TextStyle(fontSize: 20,color: Colors.teal),)
          ),
          SizedBox(height: 20,),
          SizedBox(
            child: Pinput(
              length: 4,
              controller: _controller,
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.teal
            ),child: Center(child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AmountPay(),));
              },
              child: Text("Pay Securely",style: TextStyle(fontSize: 20,color: Colors.white),))),
          )
        ],
    ),
      ),
    );
  }
}

