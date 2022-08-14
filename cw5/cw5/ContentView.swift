//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {

            VStack{
                OurName(tap0: $counter[0], name: "أستغرالله العظيم")
                OurName(tap0: $counter[1], name: "الحمدلله")
                OurName(tap0: $counter[2], name: "سبحان الله")
            }
        //نهاية ال VStack
        
            .frame(width: 420, height: 900) .background(.teal)
            
        
    }
}


// يجب عمل extract



struct OurName: View {
    @Binding var tap0 : Int
    @State var name : String
    var body: some View {

        HStack{
        
            
            Text(name).font(.title)
                .foregroundColor(.white)
                .background(Color.black)
                
            
            Spacer()
            Text("\(tap0)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.blue) .opacity(0.9)
                .clipShape(Capsule())
                .padding()
                .onTapGesture {
                    tap0 = tap0 + 1
                }
        }.padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
