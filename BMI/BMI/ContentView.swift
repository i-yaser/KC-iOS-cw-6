//
//  ContentView.swift
//  BMI
//
//  Created by Yasr Alajmi on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var NNN = 0.0
    @State var OurName = ""
    var body: some View {
       
        VStack{
            Spacer()
            Image("jjj")
                .resizable()
                .frame(width: 200, height: 200)
                
            Text("ادخل الطول والوزن ")
            //Image and Text

            Spacer()

            TextField("الطول", text: $height)
                
                .padding()
                .frame(width: 400, height: 40)
                .background(Color.indigo).opacity(0.8)
               
            TextField("الوزن", text: $weight)
                
                .padding()
                .frame(width: 400, height: 40)
                .background(Color.indigo).opacity(0.8)
           // TextField 1-2
            
            Button {
                NNN = BMI(h: Double(height) ?? 0.0, w: Double(weight) ?? 0.0)
                
                if (NNN <= 20) {
                    OurName = "ضعيف"
                }
                else if NNN <= 25 {
                    OurName = "جيد"
                }
                else {
                    OurName = "سمين"
                }
                
            } label: {
                Text("احسب")
                    .frame(width: 90, height: 50)
                    .background(.yellow)
                    .clipShape(Capsule())
            }
            //button 1
            
       Text("BMI =\(NNN)")
            Text("الحاله = \(OurName)")
                    
         Spacer()
            
            
            // the end
        }

        }
    func BMI(h: Double, w: Double) -> Double{
         return  w / (h*h)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")

    }
}
