import 'package:flutter/material.dart';

class PaginaAbcdario extends StatefulWidget {
  const PaginaAbcdario({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PaginaAbcdarioState();
}

class _PaginaAbcdarioState extends State<PaginaAbcdario> {
  final estiloTexto = TextStyle(fontSize: 25);
  final swTop = 90;
  final swUp = 65;
  String path = "images/";
  String ext = ".png";
  String image = "a";
  int letter = 65;
  String description = "";
  List<String> descList = [
    "Android",
    'Bootstrap',
    'C-Sharp',
    'Data Base',
    'Electron JS',
    'Flutter',
    'GO',
    'Html',
    'Ionic',
    'Java',
    'Kotlin',
    'Linux',
    'Microsoft',
    'Node JS',
    'Oracle',
    'Pyton',
    'QR',
    'React JS',
    'Spring Boot',
    'TypeScript',
    'USB',
    'Vue JS',
    'Wordpress',
    'Xamarin',
    'Youtube',
    'Zoom'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi ABCdario"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_createCard(image, letter, description)],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            onPressed: _reset, child: Icon(Icons.replay_outlined)),
        SizedBox(width: 10.0),
        FloatingActionButton(
            onPressed: _previus, child: Icon(Icons.keyboard_arrow_left)),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: _next,
          child: Icon(Icons.keyboard_arrow_right),
        )
      ],
    );
  }

  Widget _createCard(image, letter, description) {
    return Column(
      children: [
        Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                        "images/" + String.fromCharCode(letter) + ".png"),
                    width: 150.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    children: [
                      Text(String.fromCharCode(letter),
                          style: TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF212121),
                          )),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(descList[(letter - swUp)],
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF757575),
                          ))
                    ],
                  ),
                ],
              ),
            ))
      ],
    );
  }

  void _next() => setState(() {
        //print('{$letter} - {$swTop}');
        if (letter == swTop) {
          letter = 65;
        } else {
          letter++;
        }
      });

  void _previus() => setState(() {
        if (letter == swUp) {
          letter = 90;
        } else {
          letter--;
        }
      });

  void _reset() => setState(() {
        letter = 65;
      });
}
