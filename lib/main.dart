import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> steps = [
    {
      'icon': Icons.favorite,
      'title': 'Choose your method of sanitation',
      'description': 'Use sanitary napkins, tampons, menstrual cups, etc. Choose one that has the lowest absorbency rate for your flow.'
    },
    {
      'icon': Icons.clean_hands,
      'title': 'Maintain personal hygiene',
      'description': 'Wash your hands before and after using the restroom and before using a menstrual product.'
    },
    {
      'icon': Icons.change_history,
      'title': 'Change your menstrual products regularly',
      'description': 'Change sanitary pads every few hours, no matter how light the flow. Change them more frequently if your period is heavy.'
    },
    {
      'icon': Icons.local_laundry_service,
      'title': 'Wear breathable clothing',
      'description': 'Wear lightweight, breathable clothing (such as cotton underwear). Tight fabrics can trap moisture and heat, allowing germs to thrive.'
    },
    {
      'icon': Icons.bathtub,
      'title': 'Keep your genital area clean',
      'description': 'Wash the outside of your vagina (vulva) and bottom every day.'
    },
    {
      'icon': Icons.local_drink,
      'title': 'Stay hydrated',
      'description': 'Drink enough liquids. This can help wash out your urinary tract and help prevent infections.'
    },
    {
      'icon': Icons.calendar_today,
      'title': 'Track and monitor your period',
      'description': 'Your menstrual cycle is a valuable marker for your overall health.'
    },
    {
      'icon': Icons.local_hospital,
      'title': 'Visit a healthcare provider for your annual check-up',
      'description': 'Regular check-ups can help detect any irregularities or health issues at an early stage.'
    },
    {
      'icon': Icons.bubble_chart,
      'title': 'Use unscented toilet paper, tampons, or pads',
      'description': 'Scented hygiene products can irritate the skin and impact your natural pH balance.'
    },
    {
      'icon': Icons.wc,
      'title': 'Use only water to rinse your vulva',
      'description': 'The vagina is a self-cleaning organ. Changing the natural pH balance of your vagina by washing or using chemicals to cleanse out the vagina can be harmful and may result in a yeast infection or bacterial vaginosis[^1^][2].'
    },
    {
      'icon': Icons.directions_walk,
      'title': 'Stay active',
      'description': 'Regular exercise can help alleviate menstrual cramps and improve your overall health.'
    }


  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.lightGreenAccent, Colors.green],
            ),
          ),
          child: ListView.builder(
            itemCount: steps.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {

                },
                child: Card(
                  color: Colors.primaries[index % Colors.primaries.length].shade100, // use lighter shade for card color
                  elevation: 5.0, // add shadow
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // increase card size
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0, // increase icon size
                        child: Icon(steps[index]['icon'], size: 30.0), // replace with your own icon
                      ),
                      title: Text(
                        steps[index]['title'],
                        style: TextStyle(fontWeight: FontWeight.bold), // make title bold
                      ),
                      subtitle: Text(steps[index]['description']), // replace with your own content
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
