//
//  CategoriesResponse.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 19.03.2023.
//

import Foundation

struct CategoriesResponse : Decodable{
    let status : String
    let statusCode : Int
    let message : String
    let result: [Category]
}

struct Category: Decodable{
    let id:Int
    let name: String
    let prefix : String
    let img_url: URL
    
    enum CodingKeys: String,CodingKey {
        case id 
        case name
        case prefix
        case img_url
     
    }
}
