//
//  Recipe.swift
//  LivroDeReceitas
//
//  Created by Joao Leal on 1/22/24.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id: UUID?
    var name = ""
    var cuisine = ""
}
