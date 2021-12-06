//this will allow you to use widget in your app
import 'package:flutter/material.dart';

// this is the class for our homepage
class TodoList extends StatelessWidget {
  const TodoList({ Key? key, required String title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // the scaffold is the root widget of the app (it has the AppBar,body, floatingaction buttom)
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text("My tasks", style: TextStyle(color: Colors.deepPurple),), 
        actions: const [Icon(Icons.filter_list, color: Colors.purple,), Icon(Icons.search)
        ],
          leading: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1592388607848-4b1f15d93ff8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80")),
        )
      ),

      body: ListView(
        children: const [
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
          TodoWidget(),
        ],
      ), 

      floatingActionButton: FloatingActionButton (
        onPressed: (){},
        child: const Icon(Icons.add),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.blue[50],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [
                Icon(Icons.check_circle, color: Colors.deepPurple.shade100,),
                // ignore: prefer_const_constructors
                Text("Completed",
                style:  TextStyle(color: Colors.purple),
                
                ),
                  Icon(Icons.arrow_drop_down),
                 const Spacer(),
                const Text("24",
                style: TextStyle(color: Colors.purple ),),
              ],),
            ),
          ),
        ),

       
       
    
      
    );
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 45,
      child: ListTile(
        leading:  const Icon(Icons.check_circle,color:Colors.pink,),
        title: const Text("plan the trip to Finland",
        style: TextStyle(color: Colors.deepPurple),),
        subtitle: const Text("The family's trip to Ghana  summer"),
        trailing: Row(
          
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.up,
          children:  [
            Icon(Icons.notifications,
            color: Colors.pink.shade100 ,),
           Text("yesterday",
           style: TextStyle(color: Colors.pink.shade100),)
            
          ],
        ),
      ),
    );
  }
}

