import 'package:flutter/material.dart';
import 'package:lesson7/models/whale.dart';

class Detail extends StatelessWidget {
  final Whale whale;
  const Detail({required this.whale, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        actionsPadding: const EdgeInsets.only(right: 40,top: 30),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.home_outlined,color: Colors.white,size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: const Alignment(-0.9,0.9),
              children: [
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: Image(image: AssetImage(whale.imageUrl),fit: BoxFit.cover),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade700,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(whale.length,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                    ),
                    Text(whale.name,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(whale.address,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(32),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            const Icon(Icons.compare_arrows,color: Colors.blueAccent,),
                            Text(whale.length,
                              style: const TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            const Icon(Icons.backpack,color: Colors.blueAccent,),
                            Text(whale.weight,
                              style: const TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            const Icon(Icons.speed,color: Colors.blueAccent,),
                            Text(whale.worldwide,
                              style: const TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(whale.about,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Stack(
                    children: [
                      Divider(
                        height: 10,
                        thickness: 4,
                        color: Colors.grey,
                      ),
                      Divider(
                        height: 10,
                        thickness: 4,
                        color: Colors.blue,
                        endIndent: 220,
                      ),
                      Center(
                        child: Icon(Icons.circle,color: Colors.blue,size: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2:12",
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                      Text("4:42",
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.fast_rewind,color: Colors.grey,size: 40,),
                      ),
                      MaterialButton(
                        onPressed: (){},
                        shape: CircleBorder(),
                        color: Colors.blueAccent.shade700,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 72,
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.fast_forward,color: Colors.grey,size: 40,),
                      ),
                    ],
                  ),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}
