//
//  ContentView.swift
//  H4XOR News
//
//  Created by Priyank Shah on 7/11/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in           //compuatable list, closure()for every post in posts {}
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))       //create a new text porperty
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR News")
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
