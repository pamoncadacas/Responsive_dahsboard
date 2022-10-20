// importamos los paquetes que necesitamos
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard_v0/responsive/responsive_layout.dart';
import 'package:responsive_dashboard_v0/responsive/tablet_scaffold.dart';
import 'package:responsive_dashboard_v0/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard_v0/responsive/televisorScaffold.dart';
// creamos la funcion principal que ejecuta la aplicacion
void main() {
  runApp(const MyApp());
}
// creamos la clase myapp que hereda de un stateless que no puede hacer cambios
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// sobreescribimos
  // dentro de este widget build retornamos un material app
  // y en home retornamos un responsive layout que nos muestra cada una de las diferentes pantallas q tenemos
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
        televisorScaffold : TelevisorScaffold(),

      )
    );
  }
}