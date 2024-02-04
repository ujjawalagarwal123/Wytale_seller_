import '../../const/const.dart';
import 'chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(itemCount: 20,
                itemBuilder: ((context,index){
                  return chatBubble();
                }))),
            10.heightBox,
            SizedBox(
              height: 60,
                child: Row(
                  children: [

                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(
                        isDense: true,
                        hintText: "Enter Message",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.black)), ),
                    )),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send,color:Colors.black,))
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
