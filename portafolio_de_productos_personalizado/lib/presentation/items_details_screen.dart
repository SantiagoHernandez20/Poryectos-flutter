import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailsScreen');

  final String product;
  final int cards;

  const ItemDetailsScreen({Key? key,required this.cards, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text('Detalles del Producto'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              if(cards  == 0)...[
                const Image(image: AssetImage('../images/pic.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Celular iPhone 13 Pro Max 128gb', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text('Trae un sistema de cámaras mucho más poderoso. Una pantalla con respuesta inmediata en cada interacción. Procesador Apple A15 Bionic que lo hace mucho mas rápido. Un diseño increíblemente resistente. Y un gran salto en duración de batería.', style: TextStyle(fontSize: 20),),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO : 6.499.000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ] else if (cards == 1)...[
                const Image(image: AssetImage('../images/pic1.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('IPHONE X', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text(' Su memoria RAM de 4 GB permite que tu smartphone funcione de manera fluida y sin demoras al realizar distintas tareas, jugar o navegar.', style: TextStyle(fontSize: 20),
                ),
                const Text('PRECIO : 2.390.000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ] else if (cards == 2)...[
                const Image(image: AssetImage('../images/pic2.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Macbook Pro 14 M1pro 16gb 512gb', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('  La sorprendente GPU de 8 núcleos ofrece un rendimiento asombroso en procesos gráficos complejos y una experiencia de juego increíblemente fluida. El Neural Engine avanzado de 16 núcleos lleva el aprendizaje automático a un nuevo nivel en tus apps favoritas. Además, viene con memoria unificada que optimiza el rendimiento y la mayor duración de batería en un Mac: hasta 20 horas', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 11.900.000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ] else if (cards == 3)... [
                const Image(image: AssetImage('../images/pic3.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Apple iPad Air (5ª generación) 10.9" Wi-Fi 64 GB Chip M1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('El iPad Air tiene una espectacular pantalla Liquid Retina de 10.9 pulgadas (1) y el superpoderoso chip M1 de Apple para que des rienda suelta a tu creatividad y juegues sin límites dondequiera que vayas. Viene con Touch ID, cámaras avanzadas, USB-C y conexiones Wi-Fi 6. Además, es compatible con el Magic Keyboard y el Apple Pencil (segunda generación). (2)', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 3.350.000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ] else if (cards == 4)... [
                const Image(image: AssetImage('../images/pic4.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Smart TV Samsung Series 5 UN40T5290AKXZL LED Full HD 40" 100V/240V', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Samsung es reconocida a nivel mundial como una empresa líder en la industria tecnológica. Todos sus productos son diseñados con una calidad superior y pensados para contribuir a un futuro mejor. Por eso, hará que disfrutes de una experiencia incomparable.', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 1.158.900', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ] else if (cards == 5)... [
                const Image(image: AssetImage('../images/pic5.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Audifonos Diadema Usb Con Control De Volumen Y Mute', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Audífonos de copa media con almohadillas acolchonadas y micrófono omnidireccional Banda mediana ajustable Copa mediana con material acolchonado Micrófono ominidirecional ajustable y flexible Sonido dinámico de alta calidad con reducción de sonido exterior Control de volumen y botón de modo silenciar Entrada conector USB Peso y diseño liviano', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 73.900', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)

              ] else if (cards == 6)...[
                const Image(image: AssetImage('../images/pic6.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Canon EOS Kit M50 Mark II + lente EF-M 15-45mm f/3.5-6.3 IS STM sin espejo color negro', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Esta cámara se adapta a tu ritmo de vida y te ofrece excelentes resultados en situaciones complejas. En situaciones con poca iluminación o cuando necesitas realizar tomas de escenas rápidas, la cámara sin espejos sortea todos los obstáculos para ofrecer fotografías nítidas y videos en alta calidad. Su peso ligero y resultados increíbles la convierten en tu compañera ideal.', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 3.808.238', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ] else if (cards == 7) ...[
                const Image(image: AssetImage('../images/pic7.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Nintendo Switch OLED 64GB Standard', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Switch se convirtió en una de las consolas más versátiles del mercado gracias a su uso portátil y de sobremesa. Nintendo desarrolló este modelo con el objetivo de tener todas las comodidades de la tecnología de elite en un aparato portátil con el que podrás jugar y disfrutar de diverso contenido online.', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 1.869.900', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)

              ] else if (cards == 8)...[
                const Image(image: AssetImage('../images/pic8.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Nintendo Switch OLED 64GB Standard', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Esta cámara se adapta a tu ritmo de vida y te ofrece excelentes resultados en situaciones complejas. En situaciones con poca iluminación o cuando necesitas realizar tomas de escenas rápidas, la cámara sin espejos sortea todos los obstáculos para ofrecer fotografías nítidas y videos en alta calidad. Su peso ligero y resultados increíbles la convierten en tu compañera ideal.', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 5.699.000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)


              ] else if (cards == 9)...[
                const Image(image: AssetImage('../images/pic9.jpg')),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Sony Alpha Kit ZV-E10 + lente SELP1650 ILCZVE10L sin espejo color negro', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('Con la gran velocidad de obturación de tu cámara podrás congelar cualquier movimiento en milésimas de segundo, desde una gota que cae hasta un auto de fórmula 1. Por el contrario, con la velocidad de obturación lenta podrás captar movimientos casi imperceptibles como las luces de la ciudad o de las estrellas en la noche. Diviértete jugando con tu cámara y obtén fotografías con gran dinamismo.', style: TextStyle(fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text('PRECIO: 5.149.900', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)


              ]
            ],
            
          ),
        ),
      ),
    );
  }

}
