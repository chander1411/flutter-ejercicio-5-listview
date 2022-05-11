import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 0: Usa widgets básicos que ya conoces para crear este widget/cell.
    // Algunos consejos útiles:
    // * No elimine el widget Container(), agregue todos sus widgets dentro. Recuerde que el widget Container
    //   tiene un solo hijo, pero su primer paso probablemente debería ser agregar un widget Row como ese hijo.
    // * Cargue imágenes con Image.asset (character.image, ...
    // * En el widget Container, siéntase libre de usar decoration:
    //   BoxDecoration (color: Colors.black12, borderRadius: BorderRadius.all (Radius.circular (20.0)))
    return Container(
      height: MediaQuery.of(context).size.height * 0.24,
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: const BorderRadius.all(Radius.circular(20.0))),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(character.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(character.name,
                  style: const TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                          color: character.stars > 4
                              ? Colors.green
                              : Colors.orange,
                          child:
                              Center(child: Text(character.stars.toString()))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(character.jobTitle,
                          style: const TextStyle(fontSize: 18.0)),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
