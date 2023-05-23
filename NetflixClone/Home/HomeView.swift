//
//  HomeView.swift
//  NetflixClone
//
//  Created by Samet Bilgi on 19.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    var homeVM = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ForEach(homeVM.allCategories, id: \.self) { category in
                Text(category)
                    .foregroundColor(.blue)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
