import 'package:flutter/material.dart';

class rto extends StatefulWidget {
  const rto({super.key});

  @override
  State<rto> createState() => _rtoState();
}

class _rtoState extends State<rto> {
   String dropdownvalue = 'Item 1';    
  
  
  var items = [     
    'one', 
    'two', 
    'three', 
    'four', 
    'five', 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: const Text("drop down"), 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            DropdownButton( 
                
               
              value: dropdownvalue, 
                
              
              icon: const Icon(Icons.keyboard_arrow_down),      
              items: items.map((String items) { 
                return DropdownMenuItem( 
                  value: items, 
                  child: Text(items), 
                ); 
              }).toList(),
              onChanged: (String? newValue) {  
                setState(() { 
                  dropdownvalue = newValue!; 
                }); 
              }, 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 
  
