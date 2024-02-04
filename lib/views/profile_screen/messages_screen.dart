import 'package:get/get.dart';
import 'package:wytale_seller/views/profile_screen/chat_screen.dart';

import '../../const/const.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: const Text("Messages",style: TextStyle(fontSize: 20,fontFamily: bold,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20, (index) => GestureDetector(
                onTap: () {
                  // Handle tap for the specific item at the given index
                  Get.to(()=> const ChatScreen());
                  // Add your custom logic here
                },
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: purpleColor,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text("UserName", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: bold)),
                  subtitle: Text("last message", style: TextStyle(fontFamily: 'regular')),
                  trailing: Text("10:30", style: TextStyle(fontFamily: 'bold', fontWeight: FontWeight.bold, fontSize: 14)),
                )
              ),
            )

          ),
        ),
      ),
    );
  }
}
