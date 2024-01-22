//
//  ContentView.swift
//  LivroDeReceitas
//
//  Created by Joao Leal on 1/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            List(model.recipes) { r in
                VStack(alignment: .leading) {
                    Text(r.name)
                        .font(.title)
                    
                        Text(r.cuisine)
                }
            }
            Button("Add Recipe") {
                model.addRecipe()
            }
        }
    }
}

#Preview {
    ContentView()
}
