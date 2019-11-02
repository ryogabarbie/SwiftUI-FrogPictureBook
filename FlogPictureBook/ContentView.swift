//
//  ContentView.swift
//  FlogPictureBook
//
//  Created by YamamuraRyoga on 2019/11/02.
//  Copyright © 2019 y.ryoga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var frogs: [Frog]
    var body: some View {
        
        NavigationView {
            List(frogs) { frog in
                NavigationLink(destination: FrogDetail(frog: frog)) {
                    FrogItem(frog: frog)
                }
            }
            .navigationBarTitle("カエル図鑑")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(frogs: sampleFrogs)
                .environment(\.colorScheme, .light)
            ContentView(frogs: sampleFrogs)
                .environment(\.colorScheme, .dark)
        }
    }
}
