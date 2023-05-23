//
//  HomeVM.swift
//  NetflixClone
//
//  Created by Samet Bilgi on 19.05.2023.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String = Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    init() {
        setupMovies()
    }
    
    private func setupMovies() {
        movies["Trending Now"] = [exampleMovie1]
    }
    
}
