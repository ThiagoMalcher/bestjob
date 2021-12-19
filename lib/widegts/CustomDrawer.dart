import 'package:bestjob/tiles/drawerTile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget{

final PageController pageController;
CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context){

    Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 110, 172, 181),
                Colors.white
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),

    );

    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  // para possicionar os itens podemos usar o stack pois definimos o local e alinhar todos os componentes como desejar
                  children: <Widget>[
                    Positioned(
                      top: 30.0,
                      left: 0.0,
                      child: Text("Best Job", style: TextStyle(fontSize:  34.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Olá,",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Entre ou cadastre-se",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            onTap: (){

                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início", pageController, 0),
              DrawerTile(Icons.list, "Serviços", pageController, 1),
              DrawerTile(Icons.playlist_add_check, "Meus serviços", pageController, 2),
            ],
          )
        ],
      ),
    );

  }
}