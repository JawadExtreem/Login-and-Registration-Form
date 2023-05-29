import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class MyHomePage extends StatelessWidget {
  //const MyHomePage({Key? key}) : super(key: key);

  GlobalKey<FormState> _FormKey = GlobalKey<FormState> ();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login And Registration'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.purple,
            ]),
          ),
          padding: EdgeInsets.all(50),
          child: Form(
            key: _FormKey,
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8),),),
                    hintText: 'First Name',
                    labelText: 'Fisrt Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: MultiValidator(
                    [
                      RequiredValidator(errorText: 'Required'),
                    ]
                  ),
                ),
                SizedBox(height: 10,),

                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8),),),
                    hintText: 'Last Name',
                    labelText: 'last Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: MultiValidator(
                      [
                        RequiredValidator(errorText: 'Required'),
                      ]
                  ),
                ),
                SizedBox(height: 10,),

                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 30,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8),),),
                    hintText: 'Email',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: MultiValidator(
                      [
                        RequiredValidator(errorText: 'Required'),
                        EmailValidator(errorText: 'please type a valid email')
                      ]
                  ),
                ),
                SizedBox(height: 10,),

                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  maxLength: 6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8),),),
                    hintText: 'Password',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                  validator: MultiValidator(
                      [
                        RequiredValidator(errorText: 'Required'),
                      ]
                  ),
                ),
                SizedBox(height: 10,),

                ElevatedButton(onPressed: (){
                  _FormKey.currentState?.validate();
                }, child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
