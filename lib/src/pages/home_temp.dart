import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        ),
      body:ListView(
        //children: _crearLista()
        children: _crearListaCorta()
      ) ,
    );
  }

List<Widget> _crearLista(){

  List<Widget> lista= new List();

  for (String opt in opciones) {
    final tempWid= ListTile(
      title: Text(opt),
    );

    lista..add(tempWid)
         ..add(Divider()); 
  }


  return lista;
}


List<Widget> _crearListaCorta(){

  return opciones.map((item){

    return Column(
      children: <Widget>[
        ListTile(
          title: Text(item+' !'),
          subtitle: Text('viqui mobile'),
          leading: Icon(Icons.access_alarm),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},

        ),
        Divider()
      ],
    );
  }).toList();

  

}

}