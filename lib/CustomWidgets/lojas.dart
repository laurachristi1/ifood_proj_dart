import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/circleAvatar.dart'; // Verifique o caminho
import 'package:ifood/CustomWidgets/styles.dart'; // Verifique o caminho

class ListaLojas extends StatefulWidget {
  const ListaLojas({Key? key}) : super(key: key);

  @override
  State<ListaLojas> createState() => _ListaLojasState();
}

class _ListaLojasState extends State<ListaLojas> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dadosLojas = [
      {
        'imagem': '/logomequi.png',
        'nomeLoja': 'McDonalds- Autonomista',
        'avaliacao': '4.3',
        'descricao': '* Lanches * 1.4 km',
        'tempoEntrega': '30-65 min *Grátis',
      },
      {
        'imagem': '/logocasadopao.png',
        'nomeLoja': 'Casa do Pão- Vila Yara',
        'avaliacao': '4.9',
        'descricao': '* Lanches * 1.4 km',
        'tempoEntrega': '30-45 min *Grátis',
      },
      {
        'imagem': '/logobk.png',
        'nomeLoja': 'Burguer King- Antônio Agú',
        'avaliacao': '4.6',
        'descricao': '* Lanches * 1.4 km',
        'tempoEntrega': '30-40 min *Grátis',
      },
      {
        'imagem': '/logohabibs.png',
        'nomeLoja': 'Habib\'s- Hirant Sanazar',
        'avaliacao': '4.3',
        'descricao': '* Lanches * 1.4 km',
        'tempoEntrega': '40-70 min *R\$5-10',
      },
      {
        'imagem': '/logosodie.png',
        'nomeLoja': 'Sodiê Doces- Santo Antônio',
        'avaliacao': '4.7',
        'descricao': '* Doces & Bolos * 1.4 km',
        'tempoEntrega': '30-50 min *Grátis',
      },
      {
        'imagem': '/logodominos.png',
        'nomeLoja': 'domino\'s- C. Costa ',
        'avaliacao': '4.5',
        'descricao': '* Pizzas * 1.4 km',
        'tempoEntrega': '30-50 min *Grátis',
      },
      {
        'imagem': '/acai.jpg',
        'nomeLoja': 'Açateria- Padroeira',
        'avaliacao': '4.2',
        'descricao': '* Pizzas * 1.4 km',
        'tempoEntrega': '25-50 min *R\$2-10',
      },

        {
        'imagem': '/batata.jpg',
        'nomeLoja': 'Big Batata- Raul Tôrres',
        'avaliacao': '4.1',
        'descricao': '* Lanches * 1.4 km',
        'tempoEntrega': '30-60 min *R\$2-10',
      },

        {
        'imagem': '/pudimdoce.png',
        'nomeLoja': 'Casa do Pudim- Corifeu SP',
        'avaliacao': '4.8',
        'descricao': '* Doces & Bolos * 1.4 km',
        'tempoEntrega': '50-70 min *R\$15-20',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Lojas',
              style: textRobotoBold(
                  26)), // Assumindo que textRobotoBold é um método que retorna um TextStyle
        ),
        const SizedBox(height: 8),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount:
              dadosLojas.length, // Usa o tamanho da lista de dados das lojas
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final loja = dadosLojas[index];
            return Loja(
              imagem: loja['imagem'],
              nomeLoja: loja['nomeLoja'],
              avaliacao: loja['avaliacao'],
              descricao: loja['descricao'],
              tempoEntrega: loja['tempoEntrega'],
            );
          },
        ),
      ],
    );
  }
}

class Loja extends StatelessWidget {
  final String imagem;
  final String nomeLoja;
  final String avaliacao;
  final String descricao;
  final String tempoEntrega;

  const Loja({
    Key? key,
    required this.imagem,
    required this.nomeLoja,
    required this.avaliacao,
    required this.descricao,
    required this.tempoEntrega,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: circleAvatar(
                imagem), // Assumindo que circleAvatar é um método/widget personalizado
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(nomeLoja, style: textRobotoBold(16)),
                Row(
                  children: [
                    Icon(Icons.star),
                    Text(avaliacao,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromARGB(255, 201, 201, 55))),
                    Text(descricao, style: textNunitoBold(12)),
                  ],
                ),
                SizedBox(height: 4),
                Text(tempoEntrega, style: textNunitoBold(12)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}
