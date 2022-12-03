import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/pages/Statistic.dart';
import '../componants/ImageIcon.dart';
import 'SendMoney.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F7FA),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 20 , left: 20),
                    child: Text("~Hi,Norlanda!")
                    ),
                   


                  Container(
                    padding: EdgeInsets.only(top: 20 , right: 20),
                    

                    child: Container(
                       margin: EdgeInsets.only(left: 1100, bottom: 10),
                      child: InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(
                         
                         
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),color: Color(0xffD0DAE6)
                                  ),
                          child: Center(
                            
                            child: Icon(Icons.account_circle_outlined , size: 35,))
                         
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                  
                  
              
                ],
              ),
              Container(
                
                width: MediaQuery.of(context).size.width-30,
                height:  MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Color(0xffDCE8F5)
                ),
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  
                  children: [
                    Text("Main account" ,style: TextStyle(color: Color(0xff446388), fontStyle: FontStyle.italic, fontSize: 20),),
                    SizedBox(height: 10,),
                    TextButton(onPressed: () { 
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Statistic()));
                     },
                    child: Text("\$154.723.00",style: TextStyle(color: Color(0xff283B51),fontSize: 30),)),

                    SizedBox(height: 10,),

                    Container(
                      
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                             width: 140,
                              height: 68,
                              padding: EdgeInsets.only(left: 40),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Color(0xff283B51)
                              ),
                              child: Center(
                                child: Row(
                                  children: [Text("TopUp" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.input , color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                               padding: EdgeInsets.only(left: 30),
                              width: 140,
                              height: 68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                               child: Center(
                                 child: Row(

                                  children: [Text("Withdraw", style: TextStyle( fontWeight: FontWeight.w500),),
                                  Icon(Icons.output)
                                  ],
                              ),
                               ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
              Row(
                children: [
                  
                  Container(
                    padding: EdgeInsets.only(top: 20 , left: 20),
                    child: Text("Recent Activity" , style: TextStyle(fontWeight: FontWeight.w600 , color: Color(0xff283B51)),)),

                  Container(
                    margin: EdgeInsets.only(left: 1100),
                    child: TextButton(
                      
                      onPressed: (){}, child: Text("See All" ,style: TextStyle(color: Color(0xff446388)),)),
                  )
                ],
              ),
              Container(
                
                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color:Colors.white
                                   
                                  ),
                 width: MediaQuery.of(context).size.width-30,
                 height: 83,
                child: Row(children: [
                  InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(

                          margin: EdgeInsets.all( 20),
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: Color(0xffD0DAE6)
                                  ),
                           child: Center(
                            
                            child: Icon(Icons.account_circle_outlined , size: 35,))
                         
                        ),
                      ),
                      
                       Container(
                          margin: EdgeInsets.only(top: 20,right: 20),
                          child: Column(
                            children: [
                              
                              Text("Figma", style: TextStyle( fontWeight: FontWeight.w700,color: Color(0xff283B51)),),
                              Text("12 August 2022", style: TextStyle(color: Color.fromARGB(255, 202, 216, 230)),)
                            ],
                            
                          ),
                        ),
                     
                       Padding(
                        padding: const EdgeInsets.only(left: 980),
                        child: Text("\$20.1", style: TextStyle(fontWeight: FontWeight.w700),),
                      )

                ]),
              ),
              SizedBox(height: 10,),
              Container(
                
                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color:Colors.white
                                   
                                  ),
                 width: MediaQuery.of(context).size.width-30,
                 height: 83,
                child: Row(children: [
                  InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(

                          margin: EdgeInsets.all( 20),
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: Color(0xffD0DAE6)
                                  ),
                          child: Center(
                            
                            child: Icon(Icons.account_circle_outlined , size: 35,))
                         
                        ),
                      ),
                      
                       Container(
                          margin: EdgeInsets.only(top: 20,right: 20),
                          child: Column(
                            children: [
                              
                              Text("Netflix", style: TextStyle( fontWeight: FontWeight.w700,color: Color(0xff283B51)),),
                              Text("07 August 2022", style: TextStyle(color: Color.fromARGB(255, 202, 216, 230)),)
                            ],
                            
                          ),
                        ),
                     
                       Padding(
                        padding: const EdgeInsets.only(left: 980),
                        child: Text("\$14.1", style: TextStyle(fontWeight: FontWeight.w700),),
                      )

                ]),
              ),

              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text("Recent Send Money", style: TextStyle(color: Color(0xff283B51), fontWeight: FontWeight.w700),)
                ),
                 Container(
                padding: EdgeInsets.only(left: 300),
                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color:Colors.white
                                   
                                  ),
                 width: MediaQuery.of(context).size.width-30,
                 height: 110,
                 child: Column(
                   children: [
                     Row(
                      children: [
                        SizedBox(width: 20,),
                       Container(
                    padding: EdgeInsets.only(top: 20 , right: 20),
                    

                    child: Container(
                       margin: EdgeInsets.only( bottom: 10),
                      child: InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(

                         
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),color: Color(0xffDCE8F5)
                                  ),
                          child: Center(
                            
                            child: Icon(Icons.account_circle_outlined , size: 35,))
                         
                        ),
                      ),
                    ),
                  ),
                     SizedBox(width: 100,),
                  Container(
                    padding: EdgeInsets.only(top: 20 , right: 20),
                    

                    child: Container(
                       margin: EdgeInsets.only( bottom: 10),
                      child: InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(

                         
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),color: Color(0xffFBE7D0)
                                  ),
                          child: Center(
                            
                            child: Icon(Icons.account_circle_outlined , size: 35,))
                         
                        ),
                      ),
                    ),
                  ),
                     SizedBox(width: 100,),
                  Container(
                    padding: EdgeInsets.only(top: 20 , right: 20),
                    

                    child: Container(
                       margin: EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(
   
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),color: Color(0xffD6E3FC)
                                  ),
                         child: Center(
                            
                            child: Icon(Icons.account_circle_outlined , size: 35,))
                         
                        ),
                      ),
                    ),
                  ),
                   SizedBox(width: 100,),
                  Container(
                    padding: EdgeInsets.only(top: 20 , right: 20),
                    

                    child: Container(
                       margin: EdgeInsets.only( bottom: 10),
                      child: InkWell(
                        
                       onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SendMoney()));
                          },
                        child: Container(

                          
                          height: 50,
                          width: 50,
                         decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),color: Color(0xffDEC6FC)
                                  ),
                          child: Center(
                            
                            child: Icon(Icons.account_circle_outlined , size: 35,))
                         
                        ),
                      ),
                    ),
                  ),
                  
                      ],
                     ),
                     
                     Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: Row(
                    children: [
                        Text("Agus"),
                        SizedBox(width: 145,),
                        Text("Siti"),
                         SizedBox(width: 145,),
                        Text("Udin"),
                       SizedBox(width: 140,),
                        Text("Tina"),
                         SizedBox(width: 145,),

                    
                    
                    ],
                  ),
                     )
                   ],
                 ),
                 
                 )


            ],
            
            

          )
        ],


      )

    );
  }
}