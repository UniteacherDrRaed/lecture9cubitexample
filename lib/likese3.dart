import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecture9bloc/cubitforlikese.dart';
class LikeSoftwareEngineering extends StatelessWidget {
  const LikeSoftwareEngineering({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lime,
      title: const Text("Cubit example"),),
      body: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
              foregroundColor: Colors.white
            ),
              onPressed: (){
           context.read<CubitForSE3>().like();
          }, child: const Text("like",)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,
                  foregroundColor: Colors.orangeAccent
              ),
              onPressed: (){
           context.read<CubitForSE3>().unlike();
          },
              child: const Text("unlike")),

          BlocBuilder<CubitForSE3,bool>(
              builder: (context,state){
                return state? const Row(
                  children: [
                    Icon(Icons.favorite,color: Colors.red,),
                    Text("Software Engineering 3", style: TextStyle(color: Colors.red),),
                  ],
                ): const Row(
                children: [
                Icon(Icons.favorite,color: Colors.grey,),
                Text("Software Engineering 3", style: TextStyle(color: Colors.grey),),
                ],
                );

              })


        ],
      ),
    );
  }
}


