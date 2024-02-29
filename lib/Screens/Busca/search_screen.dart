import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/card.dart';
import 'package:ifood/CustomWidgets/styles.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Buscar em todo Ifood',
                border: OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(8),
                prefixIcon: const Icon(Icons.search, color: Colors.red),
                filled: true, 
                fillColor: Colors.grey[50]
                
              ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categoria', style: textRoboto300(18)),
          ),
          Wrap(
            children: [
              card(190, 80, Colors.orange, 'Mercado', '/mercado.png'),
              card(190, 80, Colors.red, 'Farmácia', '/farmacia.png'),
              card(190, 80, Colors.blue, 'Bebidas', '/bebidas.png'),
              card(190, 80, const Color.fromARGB(255, 1, 100, 4), 'Pet', '/pet.png'),
              card(190, 80, Color.fromRGBO(255,105,180, 2), 'Sorvetes', '/sorvete.png'),
              card(190, 80, Color.fromRGBO(238,130,238, 2), 'Bolos', '/bolo.png'),
              card(190, 80, Color.fromRGBO(160,82,45, 2), 'Café', '/cafe.png'),
              card(190, 80, Color.fromARGB(255, 253, 166, 34), 'Lanches', '/lanches.png'),
              card(190, 80, Color.fromRGBO(178,34,34, 2), 'Hot Dog', '/hotDog.png'),
              card(190, 80, Color.fromRGBO(165,42,42, 2), 'Carnes', '/carnes.png'),
              card(190, 80, Color.fromRGBO(176,230,235, 2), 'Tapioca', '/tapioca.png'),
              card(190, 80, Color.fromRGBO(135,206,250, 2), 'Peixes', '/peixes.png'),
              card(190, 80, Color.fromRGBO(160,82,45, 2), 'Sopas', '/sopas.png'),
              card(190, 80, Color.fromRGBO(250,128,114,2), 'Pizzas', '/pizza.png'),
              card(190, 80, Color.fromRGBO(222,184,135, 2), 'Marmita', '/marmita.png'),
              card(190, 80, Color.fromRGBO(255,159,64, 2), 'Bebidas', '/bebidas.png'),
              card(190, 80, Color.fromRGBO(0,191,255, 2), 'Sucos', '/sucos.png'),
            ],
          )
        ],
      ),
    );
  }
}
