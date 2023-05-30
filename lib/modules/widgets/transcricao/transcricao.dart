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
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.7 * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(153, 180, 177, 177),
                  ),
                  child: const Text(
                    "TRANSCRIÇÃO",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              iconSize: 50,
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
      ),
    );
  }
}
