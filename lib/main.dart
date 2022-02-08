import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Cad_Servico(),
    debugShowCheckedModeBanner: false,
  ));
}

class Cad_Servico extends StatefulWidget {
  const Cad_Servico({Key? key}) : super(key: key);

  @override
  _Cad_ServicoState createState() => _Cad_ServicoState();
}

class _Cad_ServicoState extends State<Cad_Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Solicitar serviços"),
          backgroundColor: const Color(0xff1F1F62),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.95,
          child: SingleChildScrollView(
            //child: Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 8)),
                  const Text(
                    "Data",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintText: '04/01/2021',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      IconButton(
                        iconSize: 35,
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today_outlined,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // ),
          ),
        ));
  }
}
