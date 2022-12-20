import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final int sale;
  const MyTile({Key? key, required this.sale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../images/sale${sale + 1}.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[200],
          ),
          child: Row(
            children: [
              ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),


                  ),
                child: const Text('CLICK AQUI'),
              ),
            ],

          ),

        ),
    );
  }
}