
import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/menuInferior.dart';
import 'package:ifood/Screens/Busca/search_screen.dart';
import 'package:ifood/Screens/Pedidos/pedidos.dart';
import 'package:ifood/Screens/Profile/profile.dart';
import 'package:ifood/Screens/telaInicio/telaInicio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o próximo item
  void nextStation(int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas
  List<Widget> telas = const [
    TelaInicio(),
    TelaBusca(),
    Pedidos(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}

