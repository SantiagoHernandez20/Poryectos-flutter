import 'package:flutter/material.dart';
import 'lista_productos.dart';


class Carrito extends StatefulWidget {

  final List<ListaProductos> _cart;
  const Carrito(this._cart, {super.key});


  @override
  _CarritoState createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);

  List<ListaProductos> _cart;

  int quantity = 1;
  Container pagoTotal(List<ListaProductos> _cart) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(left: 120),
      height: 70,
      width: 400,
      color: Colors.grey[200],
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Iva: \$${ivaProducto(_cart)}",
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text("Total:  \$${valorTotal(_cart)}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black))
            ],
          )
        ],
      ),
    );
  }
  String ivaProducto(cart) {
    double iva = 00;
    for (int i = 0; i < cart.length; i++) {
      iva = iva + cart[i].iva * cart[i].quantity;
    }
    return iva.toStringAsFixed(2);
  }

  String valorTotal(_cart) {
    double total = 0.0;

    for (int i = 0; i <_cart.length; i++) {
      total = total + _cart[i].precio * _cart[i].quantity;
    }
    return total.toStringAsFixed(2);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Detalles del producto',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.white,
        ),
      ),
      body: GestureDetector(
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _cart.length,
                    itemBuilder: (context, index) {
                      var item = _cart [index];
                      return Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 9
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 370,
                                  height: 330,
                                  child: Image(
                                    image: NetworkImage(
                                        _cart[index].imageURL.toString()
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 50,
                                                bottom: 80,
                                                right: 8
                                            ),
                                            child: Center(
                                              child: Text(
                                                _cart[index].nombre.toString(),
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      IconButton(
                                        iconSize: 50,
                                        color: Colors.red,
                                        icon: const Icon(Icons.remove_circle),
                                        onPressed: () {
                                          setState(() {
                                            _cart[index].quantity--;
                                            valorTotal(_cart);
                                          });

                                        },
                                      ),
                                      Text('${_cart[index].quantity}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.black
                                        ),
                                      ),
                                      IconButton(
                                        iconSize: 50,
                                        color: Colors.greenAccent,
                                        icon: const Icon(Icons.add_circle),
                                        onPressed: () {
                                          setState(() {
                                            _cart[index].quantity++;
                                            valorTotal(_cart);

                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 38.0,
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                    ),
                                  child: Column(
                                    children: [
                                      Text(item.precio.toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0,
                                          color: Colors.black)
                                        ),
                                      SizedBox(child: Padding(padding: EdgeInsets.all(8),)),
                                      Row(
                                        children: [
                                          const Text(
                                              'iva',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0,
                                                  color: Colors.black
                                              )
                                          ),
                                          SizedBox(child: Padding(padding:EdgeInsets.all(10),),),
                                          Text(
                                            item.iva.toString(),
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0,
                                              color: Colors.black,
                                            ),
                                          ),

                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  pagoTotal(_cart),
                  const SizedBox(
                    width: 20.0,
                  )
                ],
              )
          )
      ),

    );
  }

}