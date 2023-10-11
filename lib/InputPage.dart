

import 'package:flutter/material.dart';

import 'AmountPay.dart';
import 'Pin_Page.dart';
import 'utils/Utils.dart';

class NfcPay extends StatefulWidget {
  const NfcPay({super.key});

  @override
  State<NfcPay> createState() => _NfcPayState();
}

class _NfcPayState extends State<NfcPay> {
  TextEditingController _nfcControoler = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("NFC PAY",style: TextStyle(fontSize: 20,color: Colors.white),
        ),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Please Enter Your Amount",style: TextStyle(fontSize: 20,color: Colors.teal),),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _nfcControoler,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                  ),borderRadius: BorderRadius.circular(21),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                  ),borderRadius: BorderRadius.circular(21),
                ),
                hintText: "Amount",
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.teal,
            ),child: Center(child: InkWell(
            onTap: (){

              int amount=int.parse(_nfcControoler.text);
              if(amount<=100){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AmountPay(),));
                Utils.FlushBarErrorMessage("Successfully Pay", context);

              }else{
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PinputPage()));
                // Utils.FlushBarErrorMessage("Successfully Pay", context);

              }

            },

            child: Text("Pay Amount",style: TextStyle(fontSize: 15,color: Colors.white),
            ),
          ),
          ),
          ),
        ],
      ),
    );
  }
}