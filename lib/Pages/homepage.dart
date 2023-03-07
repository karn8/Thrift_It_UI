import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:rating_summary/rating_summary.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {

    Map<String, double> dataMap = {
    "Pending": 5,
    "Dispatched": 3,
    "Completed": 2,
    };

   const List<Color> colorList = [
   Color.fromARGB(255, 255, 61, 47), // red
   Color.fromARGB(255, 255, 157, 0), // blue
   Color.fromARGB(255, 252, 243, 160), // yellow// black
    ];

    Map<String, double> dataMap2 = {
    "Pending": 5,
    "Completed": 2,
    };

   const List<Color> colorList2 = [
   Color.fromARGB(255, 67, 255, 224), // red
   Color.fromARGB(255, 0, 140, 255), // blue // black
    ];


    return  Scaffold(
      backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Column(
            children: const [
              Text('Thrift it'),
              Text(
                'Seller Portal',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  ),
                ),
            ],
          ),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Open Information page',
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.messenger_outline),
            tooltip: 'Report an issue',
            onPressed: () {
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left:10.0, top:10, bottom: 2),
                        child: Text('Welcome Back, Khush Dembla'),
                      )
                    ],
                  ),
                  
                  const SizedBox(height: 10),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height:210,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0,left: 10),
                                  child: PieChart(
                  dataMap: dataMap,
                  animationDuration: const Duration(milliseconds: 800),
                  chartLegendSpacing: 15,
                  chartRadius: MediaQuery.of(context).size.width / 3.2,
                  colorList: colorList,
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  legendOptions: const LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendTextStyle: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: false,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                )
                                ),
                                Text('Orders')
                              ],
                             ),
                            ),
            
                            const SizedBox(height: 10),
            
                          Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text('46', style: TextStyle(fontSize: 40),)
                                ),
                                Text('Products')
                              ],
                             ),
                            ),
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Icon(Icons.post_add),
                                ),
                                Text('Add Product')
                              ],
                             ),
                            ),
            
                          const SizedBox(height: 10),
                          
                          Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Icon(Icons.mode_edit_sharp),
                                ),
                                Text('Edit Product')
                              ],
                             ),
                            ),
                        ],
                      ),
                      
                      const SizedBox(width: 10),
            
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text('3', style: TextStyle(fontSize: 40),)
                                ),
                                Text('Customers')
                              ],
                             ),
                            ),
            
                          const SizedBox(height: 10),
            
                          Container(
                            height: 210,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0, left: 10),
                                  child: PieChart(
                  dataMap: dataMap2,
                  animationDuration: const Duration(milliseconds: 800),
                  chartLegendSpacing: 15,
                  chartRadius: MediaQuery.of(context).size.width / 3.2,
                  colorList: colorList2,
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  legendOptions: const LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendTextStyle: TextStyle(
                      fontSize: 10
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: false,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                )
                                ),
                                const Text('Tasks')
                              ],
                             ),
                            ),
            
                          const SizedBox(height: 10),
            
                          Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Icon(Icons.add_photo_alternate_rounded),
                                ),
                                Text('Add Images')
                              ],
                             ),
                            ),
            
            
                          const SizedBox(height: 10),
            
                          Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5),
                              ]
                             ),
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Icon(Icons.home),
                                ),
                                Text('Edit Store Details')
                              ],
                             ),
                            ),
                        ],
                      ),
                      
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                              height: 150,
                              width: 370,
                              decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5),
                                ]
                               ),
                                 child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Reviews'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 8.0),
                                      child: RatingSummary(
                                        counter: 13,
                                        average: 3.846,
                                        showAverage: true,
                                        counterFiveStars: 5,
                                        counterFourStars: 4,
                                        counterThreeStars: 2,
                                        counterTwoStars: 1,
                                        counterOneStars: 1,
                                      )
                                    ),
                                  ],
                                 ),
                               ),
                              
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
     );
  }
}


