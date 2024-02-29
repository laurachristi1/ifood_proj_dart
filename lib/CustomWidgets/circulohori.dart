import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget container(List<Map<String, String>> items) {
  return Container(
    height: 160,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(item['img']!),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item['text']!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
