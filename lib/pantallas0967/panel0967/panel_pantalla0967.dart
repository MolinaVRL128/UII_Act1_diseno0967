import 'package:flutter/material.dart';
import 'package:molina0967/pantallas0967/panel0967/widgets0967/item_pastel.dart';

class PanelPantalla0967 extends StatelessWidget {
  const PanelPantalla0967({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff580707),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          const Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/MolinaVRL128/Img_IOS/main/logo4.png"),
              ))
        ],
        title: const Text('Sweet Queen Molina 0967',
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Qué quieres ver?",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.brown)),
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/MolinaVRL128/Img_IOS/main/pasteleria.png"))),
          ),
          ListTile(
            title: Text("Mejores pasteles"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Itempastel()],
            ),
          )
        ],
      ),
    );
  }
}
