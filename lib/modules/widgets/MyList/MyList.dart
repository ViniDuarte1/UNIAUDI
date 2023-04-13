import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyList extends StatelessWidget {
  const MyList({super.key, required this.texttitle});

  final String texttitle;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7 * 0.2,
                  width: MediaQuery.of(context).size.width,
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
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(153, 180, 177, 177),
                            ),
                            child: Text(texttitle,
                            textAlign: TextAlign.center ,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}
