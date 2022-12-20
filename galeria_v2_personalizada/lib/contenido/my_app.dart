import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showGrid = true;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeria con Grid View y ListView',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          title: const Text('Galeria con GridView y listView'),
        ),
        body: Center(child: showGrid ? _buildGrid() : _buildList()),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple.shade200,
                ),
                child: Container(
                  child: Column(
                    children: [
                      Image.asset('../images/logo.png'),
                      const Text(
                        'SENA CBA',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      
                    ],
                  ),
                ),
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
        ),

          bottomNavigationBar: BottomAppBar(
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                Spacer(),
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
            ),
          ),
          floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add),backgroundColor: Colors.purple[700],
              onPressed: () {}),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  // Boton

  // #Inicio_construccion_con_GridView
  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 450,
    childAspectRatio: (1.5),
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTitleList(30));
  List<Container> _buildGridTitleList(int count) =>
      List.generate(
        count, (i)  => Container(child: Image.asset('../images/pic$i.jpg'))
  );



  // #Inicio_construccion_con_ListView
  Widget _buildList() {
  return ListView(
    children: [
      _tile('CineArts at me the empire','85 W Portal Ave', Icons.theaters),
      _tile('The castro Theater','429 Castro st', Icons.theaters),
      _tile('Alomo Draftthouse Cinema','2550 Mission st', Icons.theaters),
      _tile('Roxie Theater','3117 16th st', Icons.theaters),
      _tile('United Artist StonesTown Twin','501 Buckingham Way', Icons.theaters),
      _tile('AMC Metreon 16','1935 4th st #3000', Icons.theaters),
      const Divider(),
      _tile('K/ Kitchen','757 Monterey blvd', Icons.restaurant),
      _tile('Emmy Restaurant','1923 Ocean Ave', Icons.restaurant),
      _tile('Chaiva Thai Restaurnt','272 Claremont Blvd', Icons.restaurant),
      _tile('La Ciccia','291 30th st', Icons.restaurant),
    ],
  );
  }

  ListTile _tile(String tittle, String subtitle, IconData icon) {
    return ListTile(
      title: Text(tittle,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.purple[600],
      ),
    );
  }

}





