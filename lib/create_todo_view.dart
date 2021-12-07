import 'package:flutter/material.dart';

class CreateToDo extends StatelessWidget {
  const CreateToDo({ Key? key }) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text("CreateToDo"),
        backgroundColor: Colors.blue,
        centerTitle: false,
      
      ),

      body: ListView(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text("Title"),
              
            ),
            
          ),
          const SizedBox(
            height: 100,
          ),
          
          TextFormField(
            decoration: const InputDecoration(
              label: Text("Description"),
              
              
            ),
          ),
          //enable you to introduce or alighn a widget horizontally 
          Row(
            children: 
        [
          // it expands the widget to fit in its state when wrapped with widget
           Expanded(
             //TextFormField introduce a thin line for a text to be typed
             child: TextFormField(
              decoration: const InputDecoration(
                label: Text("Date")
              ) ),
           ),
           //sizebox allows spacing
           const SizedBox(width: 10,),
              Expanded(
                child: TextFormField(
                          decoration: const InputDecoration(
                label: Text("Time"))
                ),
              ),
            ]),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: onPressed, child:  const Text ("Create",
              style: TextStyle(color:Colors.white, fontSize: 20),),
              style: TextButton.styleFrom(backgroundColor:Colors.blue ),
              
            
              ),
            )],
            
          )

          
        
      
      
    );
  }
}