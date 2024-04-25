// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';


class Contratos extends StatelessWidget {
  const Contratos({super.key});

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

              creador_de_contratos(nombre: "Viktor Kozlov", estado: "Abierto", 
              objetivo: "Eliminar a un alto funcionario gubernamental \n que está interfiriendo en los negocios de un poderoso \n cartel de drogas.", 
              Recompensa: "500,000 USD", direccion: "assets/images/Victor.jpg"),

              creador_de_contratos(nombre: "Nadia Petrov", estado: "Cerrad", 
              objetivo: "Ya completó su contrato para eliminar a un importante testigo clave en un juicio por crimen organizado.", 
              Recompensa: "750,000 USD", direccion: "assets/images/Nadia.jpg"),

              creador_de_contratos(nombre: "Dmitri volkov", estado: "Abierto", 
              objetivo: ": Eliminar a un líder sindical que está amenazando con exponer la conexión entre políticos corruptos y el crimen organizado.", 
              Recompensa: "1,000,000 USD", direccion: "assets/images/Dmitri.jpg"),

              creador_de_contratos(nombre: "Irina Ivanova", estado: "Cerrado", 
              objetivo: "Completó su contrato para eliminar a un empresario rival que estaba interfiriendo en los negocios de su cliente.", 
              Recompensa: "600,000 USD", direccion: "assets/images/Irina.jpg"),

              creador_de_contratos(nombre: "Ekaterina Voronova", estado: "Abierto", 
              objetivo: "Eliminar a un agente de la ley que ha estado investigando las operaciones criminales de una organización clandestina.", 
              Recompensa: "900,000 USD", direccion: "assets/images/Ekaterina.jpg"),

              creador_de_contratos(nombre: "Alexei Sokolov", estado: "Cerrado", 
              objetivo: "Completó su contrato para eliminar a un líder de una banda rival que estaba amenazando con desestabilizar el equilibrio de poder en el bajo mundo criminal.", 
              Recompensa: "1,200,000 USD", direccion: "assets/images/Alexei.jpg"),

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
Container creador_de_contratos   ({required String nombre,required String estado,
// ignore: non_constant_identifier_names
required String objetivo, required String Recompensa, required String direccion}){

    return Container(
      margin:EdgeInsets.only(top: 10,right: 20,left: 20),height: 500, 
    //margin: EdgeInsets.only(top:600),
     child: Column(
    
       
       children: [Text("                                                                               ",
       textAlign: TextAlign.center,
       style: TextStyle(color: Colors.amber
       ),),
       
       SizedBox(height: 50,),
       Text( 
         ' Nombre: $nombre\n'
         ' Recompensa: $Recompensa\n'
         ' Estado: $Recompensa\n'
         ' Objetivo: $objetivo',textAlign: TextAlign.left,style: TextStyle(color: Colors.amber),),
       SizedBox(height: 50,),
       Padding(padding:EdgeInsets.only( right:10 ,left:10 ,bottom:10 ),
       child: Container(
                margin: EdgeInsets.only(left: 150),  
                height: 200,
                width: 200,
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
  


