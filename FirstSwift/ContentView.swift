//
//  ContentView.swift
//  FirstSwift
//
//  Created by Omer Ammo on 2024-01-15.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    @State private var images: [ImageResource] = [.image1, .image2, .image3]
    private let coloumns = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationStack(path : $path){
            
            ScrollView{
                LazyVGrid(columns: coloumns, content: {
                    ForEach(images, id:\.self) { image in
                        NavigationLink(value: image){
                            Image(image)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    
                })
            }
            .navigationTitle("Hamsters!")
            .navigationDestination(for: ImageResource.self)
            {image in
                ImageDetail(image: image)}
            
            .toolbar(content: {
                Button(action: {
                   guard  let randomhamster = images.randomElement() else {
                        return
                    }
                    path.append(randomhamster)
                }, label: {
                    Label("Random",systemImage: "dice")
                    Text("Button")
                })
            })
        }
    }
}

#Preview {
    ContentView()
}
