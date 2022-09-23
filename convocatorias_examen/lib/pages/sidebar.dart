import 'package:examen_prueba01/pages/convocatorias.dart';
import 'package:examen_prueba01/pages/home_page.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}
int control_pag = 0;

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b396a),
      body: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            title: const Text(
              'Inicio',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.house,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {},
            ),
            tileColor: const Color(0xff044b7f),
            selectedTileColor: const Color(0xff485378),
            selected: false,
            onTap: () {
              //Comprobación de pagina
              if(control_pag != 0){
                Navigator.of(context)
                  .push(MaterialPageRoute(
                  builder: (context) => const HomePage()));
                  setState(() {
                    control_pag =0;
                  });

              }
            },
          ),

          ListTile(
            contentPadding: const EdgeInsets.all(10),
            title: const Text(
              'Convocatorias',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.description_rounded,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {},
            ),
            tileColor: const Color(0xff044b7f),
            selectedTileColor: const Color(0xff485378),
            selected: false,
            onTap: () {
              //comprobacion de pagina 
              if(control_pag != 1){
                Navigator.of(context)
                  .push(MaterialPageRoute(
                  builder: (context) => const Convocatorias()));
                  setState(() {
                    control_pag = 1;
                  });

              }
              
            },
          ),
        ],
      ),
    );
  }
}
