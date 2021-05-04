//
//  ContentView.swift
//  JsonDataUrlSession
//
//  Created by Samim Hakimi on 5/4/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var VM = ContentViewModel()
 
    var body: some View {
        VStack {
            List(VM.posts, id: \.id) { post in
                VStack(alignment:.leading) {
                    HStack {
                        Text("\(post.id)")
                            .font(.title)
                        
                        Text(post.title)
                            .padding()
                            .font(.title)
                            .lineLimit(2)
                    }
                    
                     Text(post.body)
                         .font(.subheadline)
                }
               
            }
        }
        .onAppear(){
            VM.fetchData()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
