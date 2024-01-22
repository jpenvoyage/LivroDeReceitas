//
//  RecipeModel.swift
//  LivroDeReceitas
//
//  Created by Joao Leal on 1/22/24.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        // get the path to the json file
        
       let pathString =  Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                
                do{
                  let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    for r in recipeData {
                        
                        r.id = UUID()
                    }
                    
                    self.recipes = recipeData
                }
                catch {
                    print(error)
                }
                    
                }
            catch {
                
                print(error)
            }
        }
        
        
    }
    
    func addRecipe() {
        
    }
    
}
