//
//  DataService.swift
//  BookShelf
//
//  Created by Jessie P on 4/27/23.
//

import Foundation

class DataService {
    static func getLocalData()-> [Book] {
        
        let path = Bundle.main.path(forResource: "Data", ofType: "json")
        guard path != nil else{
            return[Book]()
        }
        let url = URL(fileURLWithPath: path!)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                let bookData = try decoder.decode([Book].self, from: data)
                return bookData
            }catch{
                print(error.localizedDescription)
            }
        }catch{
            print(error.localizedDescription)
        }
        
        return[Book]()
    }
}
