import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/caixasInfo.dart';
import 'package:ifood/CustomWidgets/card.dart';
import 'package:ifood/CustomWidgets/lojas.dart';
import 'package:ifood/CustomWidgets/restaurantes.dart';
import 'package:ifood/CustomWidgets/slide.dart';
import 'package:ifood/CustomWidgets/styles.dart';
import 'package:ifood/CustomWidgets/tabBar.dart';
import 'package:ifood/CustomWidgets/verMais.dart';

List<Map<String, dynamic>> itemsTres = [
  {"texto": "Mercado", "imagem": "/mercadofigura.png"},
  {"texto": "Promoções", "imagem": "/promocao.png"},
  {"texto": "Bolos", "imagem": "/bolo.png"},
  {"texto": "Marmita", "imagem": "/marmita.png"},
  {"texto": "Sushi", "imagem": "/peixes.png"},
  {"texto": "Pizza", "imagem": "/pizza.png"},
  {"texto": "Carnes", "imagem": "/carnes.png"},
];

List<Map<String, String>> items = [
  {"img": "/logobk.png", "text": "Burguer King"},
  {"img": "/logomequi.png", "text": "McDonalds"},
  {"img": "/logocasadopao.png", "text": "Casa do Pão"},
  {"img": "/logodominos.png", "text": "Domino's"},
  {"img": "/logohabibs.png", "text": "Habibs"},
  {"img": "/logosubway.png", "text": "Subway"},
  {"img": "/logosodie.png", "text": "Sodiê Doces"},
];

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(185, 100, Color.fromRGBO(	239, 239,	239, 0.4), "Pet", "/pet.png", ),
                const SizedBox(width: 5),
                card(185, 100, Color.fromRGBO(	239, 239,	239, 0.4), "Fármacia", "/farmacia.png")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(95, 105, Color.fromARGB(102, 249, 249, 248), "Lanches", "/lanches.png"),
                cardDois(95, 105,  Color.fromARGB(102, 249, 249, 248), "Bebidas", "/bebidas.png"),
                cardDois(95, 105,  Color.fromARGB(102, 249, 249, 248), "Sucos", "/sucos.png"),
                cardDois(95, 105,  Color.fromARGB(102, 249, 249, 248), "Pizza", "/pizza.png"),
              ],
            ),
          ),
          const Slide(),
          SizedBox(height: 35),

          verMais(items, title: "Famosos no Ifood", subtitle: "Marcas famosas"),
          container(items),

          SizedBox(height: 70),

          FastMenu(),

          SizedBox(height: 70),

          const TabNav(),

          const ListaLojas(),
        ],
      ),
    );
  }
}

