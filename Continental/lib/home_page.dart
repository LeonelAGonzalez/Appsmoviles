// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

//mport 'package:flutter_application_2/Screens/Servicios/';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/contratos.dart';
import 'package:flutter_application_1/screens/hoteles.dart';

import 'package:flutter_application_1/screens/perfil.dart';
import 'package:flutter_application_1/screens/servicios/Servicios.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ElevatedButton boton=  ElevatedButton (child:Text(""), onPressed: (){});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      
      backgroundColor: Colors.black,
    //  backgroundColor: Colors.black,
      
      appBar: AppBar(
        
        backgroundColor: Colors.amber,
        title: const Text("Bienvenido al continetal"),
        titleTextStyle: TextStyle(),
        centerTitle: true,
      ),
      
      body:Column(children: [ Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween
        ,children:[
          hacerboton(destino:Perfil(),icono:Icons.person, contexto: this.context), 
          hacerboton(destino: Contratos(), icono: Icons.home_repair_service, contexto: this.context),
          hacerboton(destino: Hoteles(), icono: Icons.home, contexto: this.context),
          hacerboton(destino: servicios(), icono: Icons.settings, contexto: this.context),
          SizedBox(height: 100),
          
        ]
        ),Container(decoration: BoxDecoration(color:Colors.amber ),

          child: Image.asset("assets/images/Continental.jpg"),)])
        
        //boton=hacerboton(destino: destino, icono: icono, contexto: contexto)
        //FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>contratos()));}), 
        //FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Perfiles()));})],
    );
   
}


ElevatedButton hacerboton({required Widget destino,required IconData icono, required BuildContext contexto}) {
  
  return ElevatedButton(onPressed: ()
  {Navigator.push(contexto, MaterialPageRoute(builder: (contexto)=>destino));}, 
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.amber,
    
  ),
  //child:Text("")
  child: Icon(icono, color: Colors.black87),
  );
}
}
  
//padding: EdgeInsets.all(10),
//            iconColor: Colors.white12,
  //          icon: Icons.person_3,
    //        textSize: 1,
      //      text: "Perfil",
        //    textColor: Colors.amber,
          //  iconActiveColor: Colors.amber,
            //onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Perfiles()));},
            //)