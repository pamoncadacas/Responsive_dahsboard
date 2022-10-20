import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          // 4 cajas en la parte superior
          AspectRatio( // utilizar para no definir valores fijos de width y height
            aspectRatio: 1.5, // widht y height tienen igual valor (cuadrados)
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 1, // mostramos 4 cajas
                gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1), // 2 cajas por fila
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          // Mosaico para completar el cuerpo
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              controller: _firstController,
               child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index){
                  return const MyTile();
                },
              ),
            )
          )
        ],
      ),
    );
  }
}