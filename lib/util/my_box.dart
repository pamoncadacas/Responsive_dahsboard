// se importan el paquete de material de flutter que nos permite usar varios componentes y widgets de flutter
import 'package:flutter/material.dart';
// se crea la clase mybox y hereda de stateless este no permite hacer cambios
class MyBox extends StatelessWidget{
  const MyBox({Key? key}) : super(key: key);
// se sobreescribe
  @override
  Widget build(BuildContext context) {
    // retornamos un padding para q nos quede un espacio
    return Padding(
      padding: const EdgeInsets.all(1.0),
      // mostramos el gridview
      child: GridView.count(
        padding: const EdgeInsets.all(2.0),
        crossAxisCount: 3,
        // mostramos 3 cajas
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        // children nos permite poner varios widgets
        children: const [
          // dentro de un card mostramos una imagen que esta en la carpeta assets
          // width y height es el tamaño de la imagen
          Card(
              child: Image(image: AssetImage('assets/img2.jpg'), width: 50, height: 50,)
          ),
          Card(
              child: Image(image: AssetImage('assets/img7.jpg'), width: 50, height: 50,)
          ),
          Card(
              child: Image(image: AssetImage('assets/img8.jpg'), width: 50, height: 50,)
          ),
          Card(
              child: Image(image: AssetImage('assets/img10.jpg'), width: 50, height: 50,)
          ),
          Card(
              child: Image(image: AssetImage('assets/img12.jpg'), width: 50, height: 50,)
          ),
          Card(
              child: Image(image: AssetImage('assets/img9.jpg'), width: 50, height: 50,)
          ),
          Card(
              child: Image(image: AssetImage('assets/img3.jpg'), width: 50, height: 50,)
          ),
        ],
      ),
    );
  }
}