// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';


class Hoteles extends StatelessWidget {
  const Hoteles({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        appBar: AppBar(backgroundColor: Colors.amber,title: Text("Contratos Disponibles"),centerTitle: true),
        backgroundColor:Colors.black ,
        body: SingleChildScrollView(
          
          child: Column(
            children: [

              creador_de_hoteles(nombre: "Vendetta", Ubicacion: "Ubicado en las oscuras calles de Nápoles,  Italia, conocido por su arquitectura renacentista y su" 
              " ambiente misterioso. ",
              direccion: "assets/images/Vendetta.jpg"),

              creador_de_hoteles(nombre: "Noir", Ubicacion: "Situado en el corazón de la bulliciosa ciudad  de Nueva Orleans, Louisiana, Estados Unidos, donde la  música jazz resuena en las calles y el misterio se  \nesconde en cada esquina.", 
              direccion: "assets/images/Noir.jpg"),
              
              creador_de_hoteles(nombre: "Apex", Ubicacion: "En lo alto de los rascacielos de Tokio, Japón," 
              "ofreciendo vistas panorámicas de la ciudad mientras los neones brillan en la noche, envolviendo a los huéspedes en un aura de intriga y elegancia.", 
              direccion: "assets/images/Apex.jpg"),

              

              Positioned( child:Container(margin: EdgeInsets.only(top:10,left:340), child: ElevatedButton( child:Text(""), 
              onPressed:(){Navigator.of(context).pop();},
              style: ElevatedButton.styleFrom(
                
                padding: EdgeInsets.only(top: 40,left: 50),
                backgroundColor: Colors.amber,

              )
              )
              ))
            ],
            

          ),
                  ),
      ),  
    );
  }
}

// ignore: non_constant_identifier_names
Container creador_de_hoteles   ({required String nombre,required String Ubicacion ,required String direccion}){

    return Container(
      margin:EdgeInsets.only(top: 10,right: 20,left: 20),height: 500, 
    //margin: EdgeInsets.only(top:600),
     child: Column(
    
       
       children: [Text("                                                                               ",
       textAlign: TextAlign.center,
       style: TextStyle(color: Colors.amber
       ),),
       
       SizedBox(height: 0),
       Text( 
         ' Hotel $nombre\n'
         "\n"
         ' Ubicacion: $Ubicacion\n',style: TextStyle(color: Colors.amber)),
       SizedBox(height: 50,),
       Padding(padding:EdgeInsets.only( right:10 ,left:10 ,bottom:10 ),
       child: Container(
                margin: EdgeInsets.only(left: 150),  
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  // ignore: unnecessary_string_interpolations
                  child: Image.asset(direccion)
               ) ),
      ),
      SizedBox(width: 100,)
       ],
    
        ),
        
     decoration: BoxDecoration(
       color:Color.fromARGB(31, 235, 219, 219),
     
       border: Border.all(color:Colors.amber)
     ),
                  );
}