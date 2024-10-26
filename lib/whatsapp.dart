import 'package:flutter/material.dart';
class WhatsApp extends StatefulWidget {
  WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  List whatsapp =[
    'Ali',
    'Hina',
    'Hadi',
    'Dua',
    'Zahra',
    'Murtaza',
    'Muhammad',
    'Faseha',
    'Rida',
    'Qasim',
  ];
  List subtitle=[
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
  ];
  List trailing=[
    '12:20 AM',
    '10:30 PM',
    '4:05 PM',
    '7:44 AM',
    '8:00 PM',
    '9:37 PM',
    '10:30 PM',
    '4:05 PM',
    '7:44 AM',
    '8:00 PM',

  ];
  List image=[
    'lib/assets/man.png',
    'lib/assets/girl.png',
    'lib/assets/man.png',
    'lib/assets/girl (1).png',
    'lib/assets/woman.png',
    'lib/assets/man (1).png',
    'lib/assets/man.png',
    'lib/assets/girl.png',
    'lib/assets/woman.png',
    'lib/assets/man.png',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [

          FloatingActionButton(onPressed: (){},
            backgroundColor: Colors.white,child: Icon(Icons.circle_outlined,color: Colors.pink.shade200,),),
          SizedBox(height: 10,),
          FloatingActionButton(onPressed: (){},
            backgroundColor: Colors.green.shade600,child: Icon(Icons.add,color: Colors.white,),),


        ],
      ),
      appBar: AppBar(

        title: Text('WhatsApp',style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.bold),),
        actions: [

          Icon(Icons.camera_alt_outlined,),
          SizedBox(width: 15,),
          Icon(Icons.more_vert_outlined),
        ],
      ),

      body:


      Column(

        children: [
          SizedBox(height: 20,),
          Container(color: Colors.black,),
          Expanded(
            flex: 10,

            child: Container(

              height: 30,
              width: 1000,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding:  EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.circle_outlined,color: Colors.pink.shade200,),
                      border: InputBorder.none,
                    )



                ),
              ),
            ),
          ),
          Expanded(flex:80,
            child: Container(child: ListView.builder(
              itemCount: whatsapp.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(image[index]),
                  ),
                  title: Text(whatsapp[index]),
                  subtitle: Text(subtitle[index]),
                  trailing: Text(trailing[index]),
                );


              },

            ),
            ),
          ),


        ],
      ),



    );

  }
}
