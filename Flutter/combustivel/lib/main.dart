import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String _resultado = '';
  void _reset() {
    alcoolController.text = '';
    gasolinaController.text = '';
    setState(() {
      _resultado = '';
      _formkey = GlobalKey<FormState>();
    });
  }

  void _calculaCombustivelIdeal() {
    setState(() {
      double varAlcool =
          double.parse(alcoolController.text.replaceAll(',', '.'));
      double varGas =
          double.parse(gasolinaController.text.replaceAll(',', '.'));
      double proporcao = varAlcool / varGas;
      _resultado =
          (proporcao < 0.7) ? 'Abasteça com Alcool' : 'Abasteça com Gasolina';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Alcool ou Gasolina', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                _reset();
              })
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.local_gas_station,
                size: 80,
                color: Colors.lightBlue[900],
              ),
              TextFormField(
                controller: alcoolController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                validator: (value) => value.isEmpty ? 'Informe um Valor' : null,
                decoration: InputDecoration(
                    labelText: 'Valor do Álcool',
                    labelStyle: TextStyle(color: Colors.lightBlue[900])),
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 20,
                ),
              ),
              TextFormField(
                controller: gasolinaController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                validator: (value) => value.isEmpty ? 'Informe um Valor' : null,
                decoration: InputDecoration(
                  labelText: 'Valor da Gasolina',
                  labelStyle: TextStyle(color: Colors.lightBlue[900]),
                ),
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Container(
                  height: 50.0,
                  child: RawMaterialButton(
                    child: Text('Calcular'),
                    fillColor: Colors.white,
                    onPressed: () {
                      if (_formkey.currentState.validate())
                        _calculaCombustivelIdeal();
                    },
                  ),
                ),
              ),
              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
