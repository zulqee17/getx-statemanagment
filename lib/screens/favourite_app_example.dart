import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemenagment_one/getx_controller/favourite_app_controller.dart';

class FavouriteAppExample extends StatefulWidget {
  const FavouriteAppExample({Key? key}) : super(key: key);

  @override
  State<FavouriteAppExample> createState() => _FavouriteAppExampleState();
}

class _FavouriteAppExampleState extends State<FavouriteAppExample> {
  
  // through traditional way
  // List<String> itemList=['mango','orange','banana','apple'];
  // List favouriteItemList=[];

  final favouriteItemController=Get.put(FavouriteAppController());
  
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App Getx'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // this is traditional way to add without getx statemanagment
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: itemList.length,
          //       itemBuilder: (context,index){
          //         return Card(
          //           child: ListTile(
          //             onTap: (){
          //               if(favouriteItemList.contains(itemList[index].toString())){
          //                 favouriteItemList.remove(itemList[index].toString());
          //                 print('item removed');
          //               }else{
          //                 favouriteItemList.add(itemList[index].toString());
          //                 print('item added');
          //               }
          //               setState(() {
          //
          //               });
          //             },
          //             title: Text(itemList[index].toString()),
          //             trailing: favouriteItemList.contains(itemList[index].toString())
          //                 ?
          //             Icon(Icons.favorite,color: Colors.red,)
          //                 :
          //             Icon(Icons.favorite,color: Colors.grey,),
          //           ),
          //         );
          //       }
          //   ),
          // )

        //   this is to add fav item using getx statemanagement
          Expanded(
              child:ListView.builder(
                  itemCount: favouriteItemController.itemList.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        onTap: (){
                          if(favouriteItemController.favouriteItemList.contains(favouriteItemController.itemList[index].toString())){
                            favouriteItemController.removeFavouriteItem(favouriteItemController.itemList[index].toString());
                            print('item removed');
                          }else{
                            favouriteItemController.addFavouriteItem(favouriteItemController.itemList[index].toString());
                            print('item added');
                          }
                        },
                        title: Text(favouriteItemController.itemList[index].toString()),
                        trailing: Obx((){
                          return favouriteItemController.favouriteItemList.contains
                            (favouriteItemController.itemList[index].toString()
                          )?
                          Icon(
                              Icons.favorite,
                              color: Colors.red
                          ):
                          Icon(
                              Icons.favorite,
                              color: Colors.grey
                          );
                        })
                      ),
                    );
                  })

          )
        ],
      ),
    );
  }
}
