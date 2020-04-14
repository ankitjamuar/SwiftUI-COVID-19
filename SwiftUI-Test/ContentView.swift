//
//  ContentView.swift
//  SwiftUI-Test
//
//  Created by Ankit Sinha on 13/04/20.
//  Copyright © 2020 Ankit Sinha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                //Upper Portion VStack
                VStack{
                    HStack{
                        Image("sidebar_icon")
                            .resizable()
                            .frame(width:20, height:20)
                        Spacer()
                    }
                    .padding(Edge.Set.top,40)
                    
                    //Tite Text
                    HStack{
                        Text("Prevent COVID-19")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        Image("virus_img")
                        .resizable()
                            .frame(width:30,height:30)
                        Spacer()
                    }
                    
                    //Upper Grid Icons
                    HStack{
                        
                        NavigationLink(destination: DiagnoseView()) {
                           Image("self_diagnose_img")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        NavigationLink(destination: EPassView()) {
                            Image("e_pass_img")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                        }

                    }
                    
                    //Lower Grid Icons
                    HStack{
                        
                        NavigationLink(destination: FAQView()) {
                            Image("faqs_img")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        NavigationLink(destination: SettingsView()) {
                            Image("reports_img")
                            .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    
                }
                .padding()
                .background(Color.blue)
                
                //Lower Portion of VStack
                VStack(alignment: .leading){
                    
                    HStack{
                        //Quick Stats Text
                        VStack(alignment: .leading){
                            Text("Quick Stats")
                                .font(.title)
                            Text("Helps prevent from virises")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                        }
                        Spacer()
                        
                    }
                    .padding(Edge.Set.leading)
                    HStack{
                        VStack{
                            
                            Image("passengers_icon")
                            .resizable()
                                .frame(width:80, height:80)
                            Text("3467")
                                .foregroundColor(Color.red)
                            Text("Passengers")
                            .foregroundColor(Color.red)
                        }
                        Spacer()
                        VStack{
                            
                            Image("death_case_icon")
                            .resizable()
                                .frame(width:80, height:80)
                            Text("234")
                                .foregroundColor(Color.gray)
                            Text("Death")
                            .foregroundColor(Color.gray)
                        }
                       Spacer()
                        VStack{
                            
                            Image("cured_icon")
                            .resizable()
                                .frame(width:80, height:80)
                            Text("12")
                                .foregroundColor(Color.blue)
                            Text("Passengers")
                            .foregroundColor(Color.blue)
                        }
                       
                    }
                .padding(Edge.Set.leading,30)
                .padding(Edge.Set.trailing,30)
                .padding(Edge.Set.top,20)
                   
                    
                }
                Spacer()
                
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
