//
//  ProductsResponse.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 24.03.2023.
//

import Foundation

struct ProductResponse: Decodable{
    let status : String
    let statusCode: Int
    let message : String
    let result: [Product]
}

struct Product : Decodable{
    let id: Int
    let name : String
    let description : String
    let price: Double
    let categoryId: Int
    let imageUrl: URL
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case categoryId = "category_id"
        case imageUrl = "image_url"
    }
    
    

}
