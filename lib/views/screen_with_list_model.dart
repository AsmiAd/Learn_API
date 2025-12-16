import 'package:flutter/material.dart';
import 'package:learn_api/models/list_post_with_model.dart';
import 'package:learn_api/services/api_service.dart';


class ScreenWithListModel extends StatefulWidget {
  const ScreenWithListModel({super.key});

  @override
  State<ScreenWithListModel> createState() => _ScreenWithListModelState();
}

class _ScreenWithListModelState extends State<ScreenWithListModel> {

  bool isReady = false;
  List<PostModel> postModel = [];
  void _getPost(){
    isReady = true;
    ApiServices().getPostWithModel().then((value){
      setState(() {
        postModel = value!;
        isReady = false;
      });
    });
  }


  @override
  void initState() {
    _getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Posts With Model"),
      ),



      body: isReady == true?
          const Center(child: CircularProgressIndicator(),):


          ListView.builder(
              itemCount: postModel.length,
              itemBuilder: (context, index){
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Text(postModel[index].id.toString()),
                    title: Text(postModel[index].title.toString()),
                    subtitle: Text(postModel[index].body.toString()),
                  ),
                );
              })
    );
  }
}