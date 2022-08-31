import 'package:flutter/material.dart';
import 'package:public_tourism/common/constants.dart';
import 'package:public_tourism/common/models/post_model.dart';
import 'package:public_tourism/resource/post_resource.dart';
import 'package:public_tourism/widget/most_heart_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TouristMA"),
      ),
      
      body: SingleChildScrollView(

        
        child: Stack(
          children: [
            Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Most Heart",
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                MostHeart(),
                MostHeart(),
                 ],
            ),
            const Text(
              'Demo Headline 2',
              style: TextStyle(fontSize: 18),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
          ],
        ),
 
            StreamBuilder(
              stream: PostResource.store.stream(),
              builder: (BuildContext context, AsyncSnapshot<List<PostModel>> snapshot) { 
                if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = snapshot.data![index];
                      return InkWell(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children:  [
                              Text((item.title is String) ? item.title ?? '' : "No Title")
                            ],
                          ),),
                      );
                  },);
                } else {
                  return const Center(
                    child: Text("No post available"),
                  );
                }
             },
            ),
          ],
        ),
      ),

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () async {
            Navigator.pushNamed(context, AppContants.contributorRoute);
          }, icon: const Icon(Icons.add_a_photo)),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, AppContants.contributorRoute);
          }, icon: const Icon(Icons.apps)),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, AppContants.contributorRoute);
          }, icon: const Icon(Icons.person))
        ],
      ),
    );
  }
}
