class ListaProductos {

  int quantity;
  late final String nombre;
  late final int precio;
  late final String imageURL;
  late final int id;
  late final int iva;
  final bool isAdd;


  ListaProductos({
    required this.nombre,
    required this.precio,
    required this.imageURL,
    required this.id,
    required this.isAdd,
    required this.quantity,
    required this.iva,
  });


}