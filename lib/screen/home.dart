import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lesson7/screen/detail.dart';
import 'package:lesson7/services/data_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = DataController();


    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text("Guides",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
          ],
        ),
        titleSpacing: 50,
        toolbarHeight: 100,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.upload,color: Colors.grey,),
          ),
          const SizedBox(width: 30),
        ],
      ),
      body: FutureBuilder<void>(
        future: controller.initialize(),
        builder: (context, _) {
          return ListView.builder(
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    child: Stack(
                      alignment: const Alignment(0.9, -0.9),
                      children: [
                        Stack(
                    alignment: const Alignment(-0.9,0.9),
                    children: [
                      SizedBox(
                        height: 240,
                        width: double.infinity,
                        child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        child: Image(image: AssetImage(controller.items[index].imageUrl),fit: BoxFit.cover,),
                        ),
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(controller.items[index].name,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(controller.items[index].address,
                               style: const TextStyle(
                               color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                      ),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent.shade700,
                            borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(controller.items[index].length,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Detail(whale: controller.items[index])));
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
