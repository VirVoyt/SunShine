part of 'game_demo.dart';




class Shop extends StatelessWidget{
const Shop({super.key});

@override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Scaffold(
        body: ShopPage(),
      ),
    );
  }
}

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});

  @override
  State <ShopPage> createState() => _ShopPage();
}

class _ShopPage extends State<ShopPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar (backgroundColor: Colors.purpleAccent,
    title: const Text("Shop"),),
        body: Container(
            decoration: const BoxDecoration(
             color: Colors.black
            ),
            child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index){
              return  Container(
                  padding: const EdgeInsets.symmetric(vertical: 7),

                  child:
                  SizedBox(
                      height: 95,
                      child: Material(
                          color: colorCodes[index],
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          child: Stack( children: [
                            Container(

                              alignment: const Alignment(0.9, 0),
                              child:ElevatedButton(
                                onPressed: () => {
                                  _buyPet(context, index),
                                },
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(Colors.green),
                                ),
                                child: const Icon(Icons.add , color: Colors.black,),
                              ),
                            ),
                            Row(
                              children: [
               //картинка + подпись
                                SizedBox(
                                    width: 87,
                                    child: Column(children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(vertical: 5),
                                        child: picture[index],
                                      ),
                                      Center(child:  Text(users[index], style: const TextStyle(fontSize: 14)),),
                                    ],
                                    )),
               //описание и прайс
                                Column(children: [
                                  Container(
                                    alignment: const Alignment(-1, -1),
                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal:10 ),
                                    height: 30,
                                    width: MediaQuery.of(context).size.width-165,
                                    child: const Text("Описание", style: const TextStyle(fontSize: 18)),),
                                  Container(
                                    alignment: const Alignment(-1, 0),
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                    height: 34,
                                    width: MediaQuery.of(context).size.width-165,
                                    child: Text(description[index], style: const TextStyle(fontSize: 11)),),

                                  Container(
                                      alignment: const Alignment(-1, 1),
                                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      height: 28,
                                      width: MediaQuery.of(context).size.width-165,
                                      child: Text("Цена: ${price2[index]}", style: const TextStyle(fontSize: 14))),
                                ],
                                ),
                              ],
                            ),
                          ])
                      )
                  )
              );
            }
            )
    ));
  }
}
