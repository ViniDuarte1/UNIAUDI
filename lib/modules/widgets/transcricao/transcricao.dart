import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../telas/transcricao_page.dart';

class Transcricao extends StatefulWidget {
  const Transcricao({super.key});

  @override
  State<Transcricao> createState() => _TranscricaoState();
}

class _TranscricaoState extends State<Transcricao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.4 * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(3, 140, 101, 1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 15,
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black
                      )
                    )
                  ),
                  child: const Text(
                    "TRANSCRIÇÃO",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
         
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 20,
                  icon: const Icon(Icons.mic),
                  onPressed: () {
                     navigator!.push(
                MaterialPageRoute(
                  builder: (context) => const TranscriptPage(),
                ),
          ); 
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
