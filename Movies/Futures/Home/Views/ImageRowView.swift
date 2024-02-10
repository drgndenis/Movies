//
//  ImageRowView.swift
//  Movies
//
//  Created by Denis DRAGAN on 10.02.2024.
//

import SwiftUI

struct ImageRowView: View {
    let url = URL(string: "https://picsum.photos/400")
    
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<20) { _ in
                    AsyncImage(url: url) { image in
                        image
                            .resizable()                            
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 150, height: 200)
                }
            }
            .padding(.horizontal, 7)
        }
        .scrollIndicators(.never)
    }
}

#Preview {
    ImageRowView()
}
