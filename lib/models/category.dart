import 'package:flutter/material.dart';
import 'package:tut_shopapp/widgets/app_drawer.dart';

class Category extends StatelessWidget {
  static const routeName = '/Category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Categories"),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SamSung()),
              );
            },
            child: const Text('SAMSUNG Galaxy A53 5G',
                style: const TextStyle(color: Colors.red)
                ),
            style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          
          
          ElevatedButton(
            onPressed: () {},
            child: const Text('iPhone XS',
                style: const TextStyle(color: Colors.red)),
            style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Oppo Find X5 Pro',
                style: const TextStyle(color: Colors.red)),
            style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Huawei P30 Pro',
                style: const TextStyle(color: Colors.red)),
            style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Xiaomi Redmi Note 10 Pro ',
                style: const TextStyle(color: Colors.red)),
            style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('LENOVO Legion Y700 ',
                style: const TextStyle(color: Colors.red)),
            style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ],
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 20, 
          mainAxisSpacing: 20,
        ),
      ),
      drawer: AppDrawer(),
    
    );
  }
}


class SamSung extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samsung'),
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              width: 250.0,
              height: 250.0,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/samsung.png'),
                  fit: BoxFit.fill),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                  ),
              ),         
              ),
              Container(
                 alignment: Alignment.center,
                 child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                child: 
                const Text('Go back!'),
            ),
                  ),
                  
        ],   
      ),
    );
  }
}