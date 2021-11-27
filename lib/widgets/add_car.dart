import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as io;

class Imagen extends StatefulWidget {
  @override
  _ImagenState createState() => _ImagenState();
}


class _ImagenState extends State<Imagen> {
   io.File? imagene;
   final picker = ImagePicker();
   Future selImagen(op) async{
     var pickedFile;
     if(op == 1){
       pickedFile = await picker.getImage(source: ImageSource.camera);
     }else{
       pickedFile = await picker.getImage(source: ImageSource.gallery);
     }
     setState(() {
       if(pickedFile != null){
         imagene = File(pickedFile.path);
       }else{
         print("No seleccionastre ninguna foto");
       }
     });
   }
   opciones(context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        content: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  selImagen(1);
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Tomar foto", style: TextStyle(fontSize: 16),),
                      ),
                      Icon(Icons.camera_alt, color: Colors.lightBlue,)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  selImagen(2);

                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Seleccionar foto", style: TextStyle(fontSize: 16),),
                      ),
                      Icon(Icons.image, color: Colors.lightBlue,)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Cancelar", style: TextStyle(fontSize: 16),),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        )
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecciona imagen'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){}, child: Text("selecciona una imagen")
                ),
                SizedBox(height: 30,),
                imagene == null ? Center() : Image.file(imagene)
              ],
            ),
          )
        ],
      ),
    );
  }
}