import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:football/screens/explainPage.dart';

class PostList extends StatelessWidget {
  const PostList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Post').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        final docs = snapshot.data!.docs;

        return ListView.separated(
          itemCount: docs.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => explainPage(index: index)));
              },
              child: Container(
                  padding: EdgeInsets.all(8.0),
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(docs[index]['url']))
                        ),
                      ),
                      Text(
                          docs[index]['Title']
                      ),
                      Text(
                          "  "
                      ),
                      Text(
                          docs[index]['Context']
                      ),
                    ],
                  )
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index){
            return Divider();
          },);
      },
    );
  }
}
