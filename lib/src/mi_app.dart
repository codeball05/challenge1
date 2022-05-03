import 'package:abc_app/src/pages/pag_incrementador.dart';
import 'package:abc_app/src/pages/pagina_abcdario.dart';
import 'package:flutter/material.dart';

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: PaginaAbcdario(),
      ),
    );
  }
}
