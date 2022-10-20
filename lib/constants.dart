// importamos los paquetes material y googlefont
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// creamos la variable mydefaultbackground que esta nos permite almacenar el color del background
var myDefaultBackground = Colors.purple[200];
// creamos una variable llamada myappbar para que almacene las caracteristicas del appbar
var myAppBar = AppBar(
  backgroundColor: Colors.purple[200],
  title: Text("P E T L A N D", style: GoogleFonts.rubik(
    color: Colors.white
  ),),
  // centramos el titulo
  centerTitle: true,
 // ponemos la imagen en la parte izquierda
  actions: const [
    Image(
      image: NetworkImage('https://i.pinimg.com/originals/7d/6e/a8/7d6ea8bf0d482a0713009e857e547270.jpg'),
      fit: BoxFit.cover,

    )
  ],

);
// creamos la variable mydrawer que almacena el menu
var myDrawer = Drawer(

  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.purple[200],
        ),
        child: Column(
          children: [
            Text(
              " U S U A R I O",
              style: GoogleFonts.caveatBrush(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            const Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb2BFff8NO1VgOU8C5nJnfOoPSYkyxS8p-2Q&usqp=CAU'), width: 60, height: 60,)
          ],
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.home,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text( 'P r i n c i p a l' , style: GoogleFonts.aclonica(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: const Icon(
          Icons.chat,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text('M e n s a j e s', style: GoogleFonts.aclonica(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
       ListTile(
        leading: const Icon(
          Icons.settings,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text('C o n f i g u r a c i ó n',style: GoogleFonts.aclonica(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),  ),
      ),
      ListTile(
        leading: const Icon(
          Icons.add_a_photo,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text('C a m b i a r  F o t o ', style: GoogleFonts.aclonica(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: const Icon(
          Icons.add_call,
          color: Colors.purple,
          size: 30.0,
        ),
        title:  Text('T e l e f o n o', style: GoogleFonts.aclonica(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: const Icon(
          Icons.facebook,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text(' R e d e s  S o c i a l e s', style: GoogleFonts.aclonica(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: const Icon(
          Icons.notifications_active,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text(' N o t i f i c a c i o n e s', style: GoogleFonts.aclonica(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: const Icon(
          Icons.bookmark,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text('G u a r d a d o', style: GoogleFonts.aclonica(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
      ),

      ListTile(
        leading: const Icon(
          Icons.location_on_outlined,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text('U b i c a c i ó n', style: GoogleFonts.aclonica(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: const Icon(
          Icons.info_outlined,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text('M a s  I n f o r m a c i ó n', style: GoogleFonts.aclonica(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: const Icon(
          Icons.logout,
          color: Colors.purple,
          size: 30.0,
        ),
        title: Text(' S a l i r', style: GoogleFonts.aclonica(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
    ],
  ),
);