// se importan el paquete de material que nos permite usar diferentes componentes y widgets
// se importan las paginas que necesitamos para poder usar algunas funciones o metodos de ellas en esta
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';

// se crea la clase televisorScaffold y hereda de un stateful
// stateful permite que se puedan cambiar los valores
class TelevisorScaffold extends StatefulWidget {
  const  TelevisorScaffold({Key? key}) : super(key: key);
// sobrescribe la clase
  @override
  State<TelevisorScaffold> createState() => _TelevisorScaffoldState();
}
// se crea la clase desktop que hereda de la clase que sobrescribimos en la parte de arriba
class _TelevisorScaffoldState extends State<TelevisorScaffold> {
  // creamos la variable scrollController que este nos permite hacer que funcione el scroll
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    // retornamos un scaffold
    // El widget Scaffold toma un número de widgets diferentes como argumentos con nombre
    return Scaffold(
      // el appbar es el header de la pagina
      // aca se llama el appbar que se encuentra configurado en constant
      appBar: myAppBar,
      // aca se llama el background color que se encuentra en constant
      backgroundColor: myDefaultBackground,
      // en el body mostramos un row una fila
      body: Row(
        // el children nos permite tener varios widgets
        children: [
          // abrir drawer
          // el mydrawer esta configurado en constants
          myDrawer,
          // demas elementos del body
          // el expanded nos permite expandir
          Expanded(
            // mostramos una columna
            child: Column(
                children: [
                  // 4 cajas en la parte superior
                  AspectRatio(// utilizar para no definir valores fijos de width y height
                    aspectRatio: 2.0, // wight y height tienen igual valor (cuadrados)
                    child: SizedBox(
                      // sized box
                      // puede reemplazar el relleno y el contenedor, y luego establecer el espacio entre dos controles.
                      // Generalmente se usa para limitar el tamaño de los controles secundarios
                      // width establece el tamaño
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: 1, // mostramos 1 cajas
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1), // 1 cajas por fila
                          itemBuilder: (context, index){
                            // mostramos un gridview
                            // retornamos mybox donde nos muestran las imagenes
                            return const MyBox();
                          }
                      ),
                    ),
                  ),
                  // MOSAICO PARA COMPLETAR EL CUERPO
                  Expanded(
                    // mostramos el scrollbar que el que nos permite para poder bajar y ver todas las imagenes
                      child: Scrollbar(
                        // ponemos true para que se vea
                        thumbVisibility: true,
                        // mostramos un list view
                        controller: _firstController,
                        // volvemos a inicializar la variable del scroll
                        child: ListView.builder(
                          controller: _firstController,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            // retornamos mytile que es el que nos muestra la informacion de cada imagen
                            return const MyTile();
                          },
                        ),
                      )
                  )
                ]
            ),
          ),
          Expanded(
            // mostramos una columna
            child: Column(
              children: [
                Expanded(
                  child: (
                      // mostramos la imagen que aparece en la parte derecha y esta ubicada en la carpeta assets
                      Image.asset('assets/img14.jpg')
                      )
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}