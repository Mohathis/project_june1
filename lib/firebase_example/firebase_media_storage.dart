import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyDyECp0hutoOiKtc2YhYls4cuS-UEdxr54",
      appId: "1:393733216721:android:90e3da8aca799c2e7568f0",
      messagingSenderId: '',
      projectId: "projectfirebase-a044a",
      storageBucket: "projectfirebase-a044a.appspot.com"));
  runApp(MaterialApp(home: FireMediaStorage(),));
}

class FireMediaStorage extends StatefulWidget {
  const FireMediaStorage({Key? key}) : super(key: key);

  @override
  State<FireMediaStorage> createState() => _FireMediaStorageState();
}

class _FireMediaStorageState extends State<FireMediaStorage> {
  FirebaseStorage storage = FirebaseStorage.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Media'),),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                  onPressed: ()=> upload('camera'),
                  icon: Icon(Icons.camera_alt_outlined),
                  label: Text('Camera')),
              ElevatedButton.icon(
                  onPressed: ()=> upload('gallery'),
                  icon: Icon(Icons.photo),
                  label: Text('Gallery'))
            ],
          ),
        Expanded(child: FutureBuilder(
          //if firebase connection is success load data or media from firebase
            future: loadMedia(),
            builder: (context,AsyncSnapshot<List<Map<String, dynamic>>> snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                return ListView.builder(
                    itemCount:snapshot.data?.length ?? 0,
                itemBuilder: (context,index){
                      final Map<String,dynamic> image = snapshot.data![index];
                  return Card(
                    child: ListTile(
                      leading: Image.network(image['imageurl']),
                      title: Text(image['uploadedBy']),
                      subtitle: Text(image['description']),
                      trailing: IconButton(onPressed: ()=> deleteMedia(image['path']),
                          icon: Icon(Icons.delete)),
                    ),
                  );
                });
              }
              return const Center(child: CircularProgressIndicator(),);
            }))
        ],
      ),),
    );
  }

  Future<void> upload(String imageSource) async {
    final picker = ImagePicker();
    XFile? pickedImage;

    try{
      pickedImage = await picker.pickImage(
          source: imageSource == 'camera'?
                  ImageSource.camera:ImageSource.gallery,maxWidth: 1920);
      final String fileName = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path);
      try{
        await storage.ref(fileName).putFile(imagefile,
        SettableMetadata(customMetadata: {
          'uploadedBy': "Its Me Xxxx",
          'description': "Some Description"
        })
        );
        setState(() {});
      }on FirebaseException catch(error){
        print(error);
      }
    }catch(error){
      print(error);
    }
  }

  Future<List<Map<String, dynamic>>> loadMedia() async{
    List<Map<String,dynamic>> images = [];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfiles = result.items;
    await Future.forEach(allfiles, (singlefile) async{
      final String fileUrl = await singlefile.getDownloadURL();
      final FullMetadata metadata = await singlefile.getMetadata();

      images. add({
        'imageurl' : fileUrl,
        'path'     :singlefile.fullPath,
        'uploadedBy':metadata.customMetadata?['uploadedBy']?? 'No Data',
        'description':metadata.customMetadata?['description']?? ' No Description'
      });
    });
    return images;
  }

  Future<void> deleteMedia(String imagepath) async {
    await storage.ref(imagepath).delete();
    setState(() {});
  }
}
