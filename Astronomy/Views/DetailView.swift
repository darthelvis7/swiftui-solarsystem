//
//  DetailView.swift
//  Astronomy
//
//  Created by Elvis Cuevas on 10/2/21.
//

import SwiftUI
import SceneKit

struct DetailView: View {
    var space:Space
    var body: some View {
        ScrollView {
           
            Image(space.image)
                .resizable()
                .scaledToFill()
           
            Text(space.description)
                .font(.system(size: 20))
                
                .padding(.horizontal)
            Divider()
            VStack(alignment: .leading) {
                Text("Three Fun Facts")
                    .font(.system(size:25))
                    .fontWeight(.semibold)
                    .padding(.bottom, 2.0)
                    
                    
                
                    
                ForEach(0..<space.facts.count, id: \.self) { index in
                    Text(String(index+1) + ". " +
                            space.facts[index])
                        
                }
                .padding(.bottom)
            }
            .padding(.horizontal)
            
        }
        .navigationBarTitle(space.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = SpaceModel()
        DetailView(space: model.space[1])
    }
}
