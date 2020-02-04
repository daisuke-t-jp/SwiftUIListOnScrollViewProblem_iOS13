//
//  ContentView.swift
//  SwiftUIListOnScrollViewProblem_iOS13
//
//  Created by Daisuke TONOSAKI on 2020/02/04.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    List {
                        NavigationLink(destination: DetailView()) {
                            Text("1")
                        }
                        NavigationLink(destination: DetailView()) {
                            Text("2")
                        }
                        NavigationLink(destination: DetailView()) {
                            Text("3")
                        }
                        
                    }.frame(height: 300)
                }
            }
            .navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
