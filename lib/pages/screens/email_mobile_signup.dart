import 'package:flutter/material.dart';


class EmailMobileSignup extends StatefulWidget {
  const EmailMobileSignup({super.key});

  @override
  State<EmailMobileSignup> createState() => _EmailMobileSignupState();
}

class _EmailMobileSignupState extends State<EmailMobileSignup> {


  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return
      Scaffold(

       appBar: AppBar(
         backgroundColor: Colors.blueAccent,
         centerTitle: true,
         title: Text("Email and Phone Number",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
       
       ),
        
        body: SingleChildScrollView(

         child:

         Column(

           children: [

             Image.asset('assets/images/stanbic_bank_logo.png',height: 200, width: 200,),
Padding(
  padding: EdgeInsets.all(15),
            child:  TextFormField(
               controller: emailController,
               keyboardType: TextInputType.emailAddress,
               decoration: InputDecoration(
                 label: Text('Email Address'),
                 prefixIcon: Icon(Icons.email),
                 hintText: 'Enter your email',
                 border: OutlineInputBorder(),
               ),

             )),

             Padding(
               padding: EdgeInsets.all(15),
             child:TextFormField(
               controller: phoneController,
               keyboardType: TextInputType.phone,
               decoration: InputDecoration(
                 label: Text('Phone Number'),
                 prefixIcon: Icon(Icons.phone),
                 hintText: 'Enter your Phone number',
                 border: OutlineInputBorder(),
               ),

             )),
          SizedBox(height: 20),
             SizedBox(

               width: 300,
                 // Set desired width
               child: ElevatedButton(
                 onPressed: () {},
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue, // 🔵 Background color
                   foregroundColor: Colors.white, // ⚪ Text (and icon) color
                 ),
                 child: Text("Next"),
               )
             )

           ],
         ),
        )
        ,
    );
  }
}
