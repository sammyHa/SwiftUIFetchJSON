//
//  ContentViewModel.swift
//  JsonDataUrlSession
//
//  Created by Samim Hakimi on 5/4/21.
//

import Foundation
class ContentViewModel: ObservableObject {
    @Published var posts = [Posts]()
    func fetchData(){
        let api = "https://jsonplaceholder.typicode.com/posts"
        guard let url = URL(string: api) else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            do {
                if let data = data {
                    let result = try JSONDecoder().decode([Posts].self, from: data)
                    DispatchQueue.main.async {
                        self.posts = result
                    }
                }else {
                    print("No Data")
                }
            }
            catch(let error){
                print(error.localizedDescription)
            }
        }.resume()
        
    }
}
