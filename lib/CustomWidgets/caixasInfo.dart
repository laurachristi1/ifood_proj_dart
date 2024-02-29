import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FastMenu extends StatelessWidget {
 FastMenu({Key? key}) : super(key: key);

  final List<String> images = [
    "/mercado.png",
    "/cupom.png", 
    "/lanchinho.png",
    "/comidaJaponesa.png",
    "/pizzapedaco.png",
    "/pudimdoce.png",
  ];

  final List<String> titles = [
    "Mercado", // Título para a primeira imagem
    "Promoções", 
    "Lanches",
    "Japonesa",
    "Pizzas",
    "Doces",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length, 
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: MediaQuery.of(context).size.width / 4.8,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 4.8,
                    color: Colors.red,
                  ),
                  Positioned(
                    bottom: 5,
                    left: 5,
                    right: 5,
                    top: 5,
                    child: Image.asset(images[index]), // Usa o índice para acessar a imagem
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Text(
                      titles[index], // Usa o índice para acessar o título
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 12),
                    )             
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
