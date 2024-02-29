import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/styles.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus pedidos', style: textNunitoBold(20)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 120.0),
        child: ListView(
          children: [
            Column(
              /* Item 1 */

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 250,
                  height: 230,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        '/fundoPedidos.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  "Bora pedir um ifood?",
                  style: textNunito300(20),
                ),
                Text(
                  "Experimente os melhores restaurantes e mercados \n perto de você",
                  style: textNunito300(15),
                  textAlign: TextAlign.center,
                )
              ],
              
            ),
          ],
        ),
      ),
    );
  }
}