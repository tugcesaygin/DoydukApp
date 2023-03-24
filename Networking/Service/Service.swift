//
//  Service.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 19.03.2023.
//

import Foundation

struct Service {
    func getCategories(completion : @escaping (_ response : CategoriesResponse) -> Void) {
        
        let endpointURL : URL = URL(string: "http://159.223.0.153/categories")!
        let urlSession : URLSession = URLSession.shared
        let urlRequest : URLRequest = URLRequest(url: endpointURL)
       
        urlSession.dataTask(with: urlRequest) { data, urlResponse, error in
            let decoder = JSONDecoder()
            do{
                let response = try decoder.decode(CategoriesResponse.self, from: data!)
                completion(response)
            }
            catch{
                print(error)
            }
        }.resume()
    }
    
    
    func getProducts(completion: @escaping (_ response : ProductResponse) -> Void) {
        let endpointUrl : URL = URL(string: "https://159.223.0.153/dishes")!
        let urlSession: URLSession = URLSession.shared
        let urlRequest : URLRequest = URLRequest(url: endpointUrl)
        
        
        
        urlSession.dataTask(with: urlRequest) { data, uRLResponse, error in
        
            let decoder = JSONDecoder()
            do{
                let response = try decoder.decode(ProductResponse.self,from: data!)
                completion(response)
            }
            catch{
                print(error)
            }
        }.resume()
    }
    
}
