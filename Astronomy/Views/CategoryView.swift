//
//  CategoryView.swift
//  Astronomy
//
//  Created by Elvis Cuevas on 9/30/21.
//

import SwiftUI

struct CategoryView: View {
    @ObservedObject var model = SpaceModel()
    var body: some View {
        List(model.space) { s in
            NavigationLink(
                destination: DetailView(space:s),
                label: {
                    HStack(spacing: 30.0) {
                        Image(s.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(12)
                        Text(s.name)
                            .font(.title2)
                    }
                })
        }
        }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
