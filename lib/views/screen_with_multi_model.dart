import 'package:flutter/material.dart';
import 'package:learn_api/models/multi_data_model.dart';
import 'package:learn_api/services/api_service.dart';


class ScreenWithMultiModel extends StatefulWidget {
  const ScreenWithMultiModel({super.key});

  @override
  State<ScreenWithMultiModel> createState() => _ScreenWithMultiModelState();
}

class _ScreenWithMultiModelState extends State<ScreenWithMultiModel> {
  
  MultiData multiData = MultiData();
  bool isReady = false;
  void _getMultiData(){
    isReady = true;
    ApiServices().getMultiDataWithModel().then((value){
      setState(() {
        multiData = value!;
        isReady = false;
      });
    }).onError((error, stackTrace){
      print(error);
    });
  }
  
  
  
  @override
  void initState() {
    _getMultiData();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Multi Data With Model"),
      ),
      
      
      body: isReady == true?
          const Center(child: CircularProgressIndicator(),):

      Column(
        children: [
          Text(multiData.page.toString(), style: const TextStyle(color: Colors.teal, fontSize: 18),),
          Text(multiData.total.toString(), style: const TextStyle(color: Colors.teal, fontSize: 18),),
          Text(multiData.totalPages.toString(), style: const TextStyle(color: Colors.teal, fontSize: 18),),
          Text(multiData.support!.text.toString(), style: const TextStyle(color: Colors.teal, fontSize: 18),),



          Expanded(
              child: ListView.builder(
                  itemCount: multiData.data!.length,
                  itemBuilder: (context, i){
                    return Card(
                      child: ListTile(
                        title: Text(multiData.data![i].name.toString()),
                        subtitle: Text(multiData.data![i].pantoneValue.toString()),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}