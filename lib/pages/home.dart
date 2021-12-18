import 'package:flutter/material.dart';
import 'package:task_six/models/wonders.dart';

import 'map.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wonders of the world'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        elevation: 2,
      ),
      body: ListView.builder(
          itemCount: worldWondersList.length,
          itemBuilder: (BuildContext context, idx) {
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                title: Text(
                  worldWondersList[idx].name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  worldWondersList[idx].description,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => MapPage(
                    wonder: worldWondersList[idx],
                  ),
                )),
              ),
            );
          }),
    );
  }
}
