import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('dialogo'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: ()=>Navigator.pop(context),
                  child: const Text('Cancelar')
              ),TextButton(
                  onPressed: ()=>Navigator.pop(context),
                  child: const Text('Ok')
              ),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return  AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('dialogo'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: ()=>Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child:ElevatedButton(
          onPressed: ()=>Platform.isAndroid ? displayDialogAndroid(context): displayDialogIOS(context),
          child: const Text('Mostrar alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
