import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'BookingPage.dart';
class explainPage extends StatelessWidget {
  final int index;

  const explainPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Post').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          final docs = snapshot.data!.docs;
          return Scaffold(
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          icon: Icon(Icons.arrow_back, color: Colors.white,)),
                      Text(
                        docs[index]['Title'],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Container()
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.network(docs[index]['url'], fit: BoxFit.cover,)
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(docs[index]['Title']),
                              Text(docs[index]['Context']),
                              ElevatedButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage()));
                              }, child: Text('예약하기'))
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
