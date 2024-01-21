//
//  ImageDetail.swift
//  FirstSwift
//
//  Created by Omer Ammo on 2024-01-21.
//

import SwiftUI

struct ImageDetail: View {
    let image : ImageResource
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        ImageDetail(image: .image1)
    }
    
}
