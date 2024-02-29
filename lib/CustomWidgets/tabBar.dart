import 'package:flutter/material.dart';

class TabNav extends StatelessWidget {
  const TabNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TabBar(
          isScrollable: true,
          indicatorColor: Colors.red,
          tabs: [
            Tab(child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)), margin: EdgeInsets.symmetric(horizontal: 4), padding: EdgeInsets.all(8), child: Text("Ordenar"))),
            Tab(child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)), margin: EdgeInsets.symmetric(horizontal: 4), padding: EdgeInsets.all(8), child: Text("Entrega Grátis"))),
            Tab(child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)), margin: EdgeInsets.symmetric(horizontal: 4), padding: EdgeInsets.all(8), child: Text("Vale-refeição"))),
            Tab(child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)), margin: EdgeInsets.symmetric(horizontal: 4), padding: EdgeInsets.all(8), child: Text("Distância"))),
            Tab(child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)), margin: EdgeInsets.symmetric(horizontal: 4), padding: EdgeInsets.all(8), child: Text("Entrega Parceira"))),
            Tab(child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)), margin: EdgeInsets.symmetric(horizontal: 4), padding: EdgeInsets.all(8), child: Text("Super Restaurantes"))),
            Tab(
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 4),
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Filtro"),
                    Icon(Icons.filter_list, size: 20), // Adiciona o ícone de filtro ao lado do texto
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
