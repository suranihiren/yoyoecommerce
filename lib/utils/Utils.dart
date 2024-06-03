

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:yoyoecommerce/app_element/app_color.dart';
export  '../app_element/header.dart';

class Utils {

 static toastMessage(String message){
   Fluttertoast.showToast(
       msg: message,
       toastLength: Toast.LENGTH_SHORT,
       gravity: ToastGravity.CENTER,
       timeInSecForIosWeb: 1,
       backgroundColor: black,
       textColor:white,
       fontSize: 16.0
   );
 }

 static void flushBarErrorMessage(String message , BuildContext context){
   showFlushbar(context: context, flushbar: Flushbar(message:message,backgroundColor: black,
      title: "SAD",messageColor: white,
     duration: Duration(seconds: 3),)..show(context));
 }
 static snackBar(String message , BuildContext context){
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor: black,
            content: Text(message))
      );
 }

}