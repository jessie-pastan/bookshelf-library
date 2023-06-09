//
//  Book.swift
//  BookShelf
//
//  Created by Jessie P on 4/27/23.
//

import Foundation
struct Book: Identifiable, Decodable{
    var title: String = ""
    var author: String = ""
    var image: String = ""
    var isFavourite: Bool = false
    var currentPage: Int = 1
    var rating: Int = 1
    var id: Int = 1
    var content: [String] = [String]()
}
