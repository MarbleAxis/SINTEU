import 'package:flutter/material.dart';
import 'package:sinteu/core/app_colors.dart';

class NotificacoesPage extends StatefulWidget {
  const NotificacoesPage({ Key? key }) : super(key: key);

  @override
  _NotificacoesPageState createState() => _NotificacoesPageState();
}

class _NotificacoesPageState extends State<NotificacoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        ListView(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height/5,
                child: Center(
                  child: Text(
                    'Notificações',
                    style: TextStyle(
                      fontSize: 55,
                      color: AppColors.primaria03,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}