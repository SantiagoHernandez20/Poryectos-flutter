import 'package:flutter/material.dart';

var defaultBackgroundColor= Colors.green[300];
var appBarColor = Colors.green[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(''),
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.pink[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: ListView(
    children: <Widget> [
      UserAccountsDrawerHeader(
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../images/fondo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
          accountName: const Text('Santiago',
            style: TextStyle(fontSize: 20,),
          ),
          
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.black,
          child: ClipOval(
            child: Image.asset('../images/yo.jpg',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
        ),
        accountEmail: null,
      ),
      Column(
        children: const [
          ListTile(
              title: Text("Inicio"),
              leading: Icon(Icons.home),iconColor:Colors.purple


          ),
          Divider(
            height: 0.2,
          ),
          ListTile(
              title: Text("Tiendas"),
              leading: Icon(Icons.storefront),iconColor:Colors.purple
          ),
          ListTile(
              title: Text("Promociones"),
              leading: Icon(Icons.shopping_cart),iconColor:Colors.purple
          ),
          ListTile(
              title: Text("Categorias"),
              leading: Icon(Icons.category),iconColor:Colors.purple
          ),
          Divider(
            height: 0.2,
          ),
          ListTile(
              title: Text("email"),
              leading: Icon(Icons.mail),iconColor:Colors.purple
          ),
          ListTile(
              title: Text("soporte"),
              leading: Icon(Icons.contact_phone_sharp),iconColor:Colors.purple
          ),
        ],
      )
    ],

  ),
);

