// importamos el material de flutter que nos permite hacer uso de varios widgets y componentes que tiene flutter
import 'package:flutter/material.dart';

// creamos la clase responsivelayout que hereda de un stateless
// el stateless no tiene cambios
class ResponsiveLayout extends StatelessWidget{
  const ResponsiveLayout({Key? key, required this.mobileScaffold, required this.tabletScaffold, required this.desktopScaffold, required this.televisorScaffold}) : super(key: key);
  final Widget mobileScaffold; // widget que ajusta el tamaño a dispositivos moviles
  final Widget tabletScaffold; // widget que ajusta el tamaño a tabletas
  final Widget desktopScaffold;// widget que ajusta el tamaño a maquinas de escritorio
  final Widget televisorScaffold;// widget que ajusta el tamaño de televisores o pantallas 4k

// sobrescrimos
  @override
  Widget build(BuildContext context) {
    // retornamos un layoutbuilder
    return LayoutBuilder(
      builder: (context, constraints){
        // aca es donde se verifica mediante el if, el tamaño de la pantalla y asi retorna depende el tamaño cada una de las pantallas
        if (constraints.maxWidth < 500){
          return mobileScaffold;
        }else if (constraints.maxWidth < 940) {
          return tabletScaffold;
        }else if (constraints.maxWidth < 1200){
          return desktopScaffold;
        } else{
          return televisorScaffold;
        }
      },
    );
  }
}