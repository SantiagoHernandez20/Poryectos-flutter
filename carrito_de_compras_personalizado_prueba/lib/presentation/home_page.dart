import 'package:flutter/material.dart';
import 'shopping_cart.dart' show Carrito;
import 'lista_productos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ListaProductos> _productosModel = <ListaProductos>[];

  final List<ListaProductos> _listaCarro = <ListaProductos>[];

  @override
  void initState() {

    super.initState();
    _productos();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text('Productos'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top:8.0),
              child: GestureDetector(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    const Icon(
                      Icons.shopping_cart,
                      size: 38,
                    ),
                    if (_listaCarro.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: Text(
                            _listaCarro.length.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0
                            ),
                          ),

                        ),
                      ),
                  ],
                ),
                onTap: () {
                  if (_listaCarro.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Carrito(_listaCarro),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (1.2),
              crossAxisCount: 3),
            itemCount: _productosModel.length,
            itemBuilder: (context, index) {
              var item = _productosModel[index];
              return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 370,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                _productosModel[index].imageURL.toString()
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),


                        Expanded(child: Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  _productosModel[index].nombre.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40,

                                ),

                                child: Text(_productosModel[index].precio.toString()),
                              ),
                            ],
                          ),
                        ),
                        ),
                        IconButton(onPressed: () {
                          setState(() {
                            if(!_listaCarro.contains(item)) {
                              _listaCarro.add(item);
                            } else {
                              _listaCarro.remove(item);
                            }
                          });
                        },

                            icon: (!_listaCarro.contains(item))
                                ? const
                            Icon(Icons.shopping_cart)
                                : const Icon(
                              Icons.shopping_cart_checkout,
                              color: Colors.green,
                            ))
                       ],
                      ),
                  ),
              );
            },
        ),
    );

  }
  void _productos() {
    var list = <ListaProductos>[
      ListaProductos(
          nombre:'Pizza familiar 3 carnes',
          precio: 40000,
          imageURL:'../images/pizza.jpg',
          id: 1,
          isAdd: true,
          quantity: 1,
          iva: 7200,

      ),
      ListaProductos(
          nombre:'Hamburguesa',
          precio: 16500,
          imageURL:'../images/hamburguesa.jpg',
          id: 2,
          isAdd: false,
          quantity: 1,
          iva: 3135,
      ),
      ListaProductos(
          nombre:'Salchipapas',
          precio: 11750,
          imageURL:'../images/salchipapa.jpg',
          id: 3,
          isAdd: false,
          quantity: 1,
          iva: 2232,
      ),
      ListaProductos(
          nombre:'Perro caliente',
          precio: 8900,
          imageURL:'../images/perrito.jpg',
          id: 4,
          isAdd: false,
          quantity: 1,
          iva: 1691,


      ),
      ListaProductos(
          nombre:'lasaña',
          precio: 17000,
          imageURL:'../images/lasaña.jpg',
          id: 5,
          isAdd: false,
          quantity: 1,
          iva: 3230,
      )
    ];
    setState(() {
      _productosModel = list;
    });
  }

}

