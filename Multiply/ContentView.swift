//
//  ContentView.swift
//  Multiply
//
//  Created by Chris Markiewicz on 8/26/22.
//

import SwiftUI

struct ContentView: View {
    @State var numberOne = ""
    @State var numberTwo = ""
    @State var numOne = 0
    @State var numTwo = 0
    @State var product = 0
    var body: some View {
        VStack{
            Text("Multiply")
                .padding()
                .font(.largeTitle)
            Button("Ready")
            {
                numOne = Int(numberOne) ?? 0
                numTwo = Int(numberTwo) ?? 0
                product = numOne * numTwo
            }
            Text(String(product))
                .padding()
            if (product == 64) {
                Image("Mario")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
            }
            else if (product % 2 == 0){
                Image("Bowser")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
            }
            else {
                Image("Luigi")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
            }
        }
        HStack{
            TextField("Enter First Number Here", text: $numberOne).multilineTextAlignment(.center)
            TextField("Enter Second Number Here", text: $numberTwo).multilineTextAlignment(.center)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
