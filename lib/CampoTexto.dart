import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              //text, number, emailAddress, dateTime
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              //enable: false,
              //maxLength: 6,
              //maxLengthEnforcement: true,
              onSubmitted: (String texto){
                print("valor digitado");
              },
              controller: _textEditingController,
            ),

          ),
          /*ElevatedButton(
              onPressed:(){
                print("valor digitado"+ _textEditingController.text);
              },
              child: Text("salvar")
          ),*/
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen, // background
              textStyle: TextStyle(
                  color: Colors.white
              ), // foreground
            ),
            onPressed: () {
              print("valor digitado"+ _textEditingController.text);
            },
            child: Text("Salvar"),
          )

        ],
      ),
    );
  }
}
