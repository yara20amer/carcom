import 'package:flutter/material.dart';

class CarDealerReservationList extends StatefulWidget {
  const CarDealerReservationList({super.key});

  @override
  State<CarDealerReservationList> createState() =>
      _CarDealerReservationListState();
}

class _CarDealerReservationListState extends State<CarDealerReservationList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Reservations",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount:
                  10, // here after finished database get count from data base
              itemBuilder: (context, index) {
                return Card(
                  elevation: 8.0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 6.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(right: 12.0),
                      leading: Container(
                        padding: const EdgeInsets.only(right: 12.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            right:
                                BorderSide(width: 1.0, color: Colors.white24),
                          ),
                        ),
                        child: const Icon(Icons.calendar_month),
                      ),
                      title: const Text(
                        'Customer name', // here after finished database add car dealer name from data base
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Row(
                        children: [
                          Icon(Icons.timer, color: Colors.white),
                          Text(
                            'date of the reservation',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right,
                          color: Colors.white),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
