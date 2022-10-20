// importamos los paquetes de material y el de google fonts para usar las fuentes de letras
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// creamos la clase mytile que hereda de un stateless que no puede hacer cambios
class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);
// sobreescribimos
  @override
  Widget build(BuildContext context) {
    // retornamos un padding
    return Padding(
      padding: const EdgeInsets.all(3.0),
      // mostramos una columna
      child: Column(
       children: [
         // mostramos una card y dentro de la card un listtile
         Card(
           child: ListTile(
             contentPadding: const EdgeInsets.all(10.0),
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/img2.jpg'),
             ),
             title: Text('Tienen una flexibilidad y agilidad impresionante',
               textAlign: TextAlign.center,
               style: GoogleFonts.frederickaTheGreat(
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
             ),
             trailing: Icon(Icons.favorite,
               color: Colors.purple[200],
             ),
           ),
         ),
         Card(
           child: ListTile(
             contentPadding: const EdgeInsets.all(8.0),
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/img7.jpg' ),

             ),
             title: Text('Pueden saltar desde más de 3 metros de altura',
               textAlign: TextAlign.center,
               style: GoogleFonts.frederickaTheGreat(
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
             ),
             trailing: Icon(Icons.favorite,
               color: Colors.deepPurple[200],
             ),
           ),
         ),
         Card(
           child: ListTile(
             contentPadding: const EdgeInsets.all(8.0),
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/img8.jpg'),

             ),
             title: Text('Pueden pasar hasta 14 horas dormidos.',
               textAlign: TextAlign.center,
               style: GoogleFonts.frederickaTheGreat(
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
             ),
             trailing: Icon(Icons.favorite,
               color: Colors.lightBlueAccent[200],
             ),
           ),
         ),
         Card(
           child: ListTile(
             contentPadding: const EdgeInsets.all(8.0),
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/img10.jpg'),

             ),
             title: Text('Ellos se comunican entre sí por medio del olfato y el lenguaje corporal.',
               textAlign: TextAlign.center,
               style: GoogleFonts.frederickaTheGreat(
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
             ),
             trailing: Icon(Icons.favorite,
               color: Colors.indigo[200],
             ),
           ),
         ),
         Card(
           child: ListTile(
             contentPadding: const EdgeInsets.all(8.0),
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/img12.jpg'),

             ),
             title: Text('Su asombrosa rapidez y agilidad lo hace sobreviir a situaciones que otros animales no.',
               textAlign: TextAlign.center,
               style: GoogleFonts.frederickaTheGreat(
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
             ),
             trailing: Icon(Icons.favorite,
               color: Colors.blue[200],
             ),
           ),
         ),

         Card(
           child: ListTile(
             contentPadding: const EdgeInsets.all(8.0),
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/img9.jpg'),

             ),
             title: Text('La audición del gato promedio es al menos cinco veces más aguda que la de un adulto humano.',
               textAlign: TextAlign.center,
               style: GoogleFonts.frederickaTheGreat(
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
             ),
             trailing: Icon(Icons.favorite,
               color: Colors.green[200],
             ),
           ),
         ),
         Card(
           child: ListTile(
             contentPadding: const EdgeInsets.all(8.0),
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/img3.jpg'),

             ),
             title: Text('En la raza de gato más grande, el macho promedio pesa aproximadamente 9 kilos.',
               textAlign: TextAlign.center,
               style: GoogleFonts.frederickaTheGreat(
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ),
             ),
             trailing: Icon(Icons.favorite,
               color: Colors.deepOrange[200],
             ),
           ),
         ),
       ],
      ),
    );
  }
}

