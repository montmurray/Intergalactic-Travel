//
//  ContentView.swift
//  Intergalactic Travel
//
//  Created by Tessa Murray on 9/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                StarLink(name: "Blue Star")
                    .padding()
                StarLink(name: "Red Dwarf")
                    .padding()
                    .foregroundColor(.red)
                }
            }
            .navigationBarTitle("Intergalactic Travel", displayMode: .inline)
        }
    }
    #Preview {
        ContentView()
    }

struct StarLink: View {
    let name: String
    var body: some View {
        NavigationLink("Travel to \(name)"){
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

