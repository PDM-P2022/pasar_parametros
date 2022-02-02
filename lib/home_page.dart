import 'package:flutter/material.dart';
import 'package:navigation/second_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // json data
  var _data = [
    {
      "nombre": "John",
      "colores": ["Azul", "Rojo", "Verde"],
      "edad": 19,
      "foto":
          "https://richardgarcia.net/wp-content/uploads/2017/01/hombre-exitoso-png.png",
    },
    {
      "nombre": "Sofia",
      "colores": ["Blanco", "Plateado", "Dorado"],
      "edad": 17,
      "foto":
          "https://toppng.com/uploads/preview/mujeres-en-png-mujer-feliz-11563001923iicassndn8.png",
    },
    {
      "nombre": "Fernando",
      "colores": ["Morado", "Amarillo", "Cafe"],
      "edad": 30,
      "foto":
          "https://1.bp.blogspot.com/-xQjYgbOWBVo/V_mkuxzIJKI/AAAAAAAABOE/WiqjQQV15cAuwbXmtem26vywz4mTKlw8ACLcB/s1600/hombre.png",
    },
    {
      "nombre": "Mohammed",
      "colores": ["Rosa", "Naranja", "Rojo"],
      "edad": 22,
      "foto":
          "https://1.bp.blogspot.com/-5ydU5haAbEY/V_mkYhkzOVI/AAAAAAAABOs/cVcd0cPB45AanuRdHIYoA7uYD5Wh1IkaACEw/s1600/banner2-man.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Image.network("${_data[index]["foto"]}"),
              backgroundColor: Colors.transparent,
            ),
            title: Text("${_data[index]["nombre"]}"),
            subtitle: Text("Edad:${_data[index]["edad"]}"),
            onTap: () {
              // Jump to second page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
