// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        appBar: AppBar(backgroundColor: Colors.amber,title: Text("Racha Personal"),centerTitle: true),
        backgroundColor:Colors.black ,
        body: SingleChildScrollView(
          
          child: Column(
            children: [
              
              Container(
                margin: EdgeInsets.only(left: 250),  
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset("assets/images/john.jpg")
               ) ),

               Container(margin:EdgeInsets.only(top: 10,right: 20,left: 20),height: 1050, 
               //margin: EdgeInsets.only(top:600),
                child: Column(

                  children: [Text("John wick(Baba Yaga)                                                                               ",textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber
                  ),),
                  
                  SizedBox(height: 50,),
                  Text( 
                    'Nombre: John Wick\n'
                    'Ciudad: Nueva York\n'
                    'Número de asesinatos: 299\n'
                    'Edad: 57 años',textAlign: TextAlign.left,style: TextStyle(color: Colors.amber),),
                  SizedBox(height: 50,),
                  Padding(padding:EdgeInsets.only( right:10 ,left:10 ,bottom:10 ),
                  child:Text(
                  "La ciudad de Nueva York, un vasto mosaico de luces parpadeantes y sombras danzantes. Entre los rascacielos y callejones, una vida forjada entre sombras cobra forma. "
                  "Soy John Wick, un hombre que vive en la penumbra, donde los susurros de la noche son mi única compañía.\n"
                  "\n"
                  "Recuerdo el día en que todo cambió. Un amor perdido," 
                  "un último regalo, una promesa rota. Mi amada esposa, Helen, me entregó un cachorro, Daisy, una chispa de luz en un mundo oscuro. Pero las sombras siempre reclaman lo que es suyo," 
                  "y un encuentro casual con Iosef Tarasov, un matón sin escrúpulos, desencadenó una cadena de eventos que cambiarían mi destino para siempre.\n"
                  "\n"
                  "Nunca fue mi intención volver al oscuro mundo del que había escapado. Pero cuando Iosef y su banda invadieron mi hogar, se llevaron lo único que me quedaba, Daisy." 
                  "Esa noche, una promesa resurgió en mi interior, una promesa de venganza.\n"
                  "\n"
                  "Cada calle, cada callejón, cada rincón de esta ciudad es testigo de mi búsqueda. Una cacería implacable," 
                  "un hombre contra un imperio de sombras. En cada paso, los recuerdos de mi pasado se entrelazan con el calor de la venganza, alimentando el fuego que arde en mi interior.\n"
                  "\n"
                  "Mis enemigos me llaman Baba Yaga, el hombre del mito, la leyenda viviente. Pero para mí, soy solo John Wick, un hombre en busca de redención en un mundo donde solo las sombras ofrecen consuelo.\n"
                  "\n"
                  "Cada batalla, cada enfrentamiento, me lleva más cerca del hombre responsable de mi dolor, Viggo Tarasov, el rey de este mundo de sombras. Pero en este camino de sangre y fuego," 
                  "me pregunto si algún día podré encontrar la paz que tanto anhelo, o si estoy condenado a vagar eternamente por los recovecos oscuros de esta ciudad implacable."
                  ,textAlign: TextAlign.left,style: TextStyle(color: Colors.amber),))
                  ],
                   ),
                decoration: BoxDecoration(
                  color:Color.fromARGB(31, 235, 219, 219),
                
                  border: Border.all(color:Colors.amber)
                ),
              ),

              // ignore: duplicate_ignore
              // ignore: sort_child_properties_last
              Positioned( child:Container(margin: EdgeInsets.only(top:10,left:340), child: ElevatedButton( child:Text(""), 
              onPressed:(){Navigator.of(context).pop();},
              style: ElevatedButton.styleFrom(
                
                padding: EdgeInsets.only(top: 40,left: 50),
                backgroundColor: Colors.amber,
              ),
               ),)),
            ],
          ),          
        ),
      ),
          
    );
  }
}

