//
//  EPassView.swift
//  SwiftTest
//
//  Created by Ankit Sinha on 07/04/20.
//  Copyright © 2020 Ankit Sinha. All rights reserved.
//

import SwiftUI

struct EPassView: View {
    @State private var selection = 2
    @State private var isEmergency = true
    
    var body: some View {
      
            
            VStack {
                Form{
                    Section{
                        TextField("Start Address", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        TextField("End Address", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                         TextField("Reason", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    }
                    Section{
                        Toggle(isOn: $isEmergency){
                            Text("Emergency")
                        }
                        Picker(selection: $selection, label: Text("Category")) {
                            Text("Emergency Services").tag(1)
                            Text("Medical Services").tag(2)
                             Text("Supply Services").tag(3)
                        }
                        DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("From") })
                        DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("To") })

                    }
                    Section{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Submit")
                        }

                    }
               
                }
                
                .navigationBarTitle("E-Pass Form",displayMode: .inline)
            }
//        .padding(Edge.Set.top,2)
    }
}

struct EPassView_Previews: PreviewProvider {
    static var previews: some View {
        EPassView()
    }
}
