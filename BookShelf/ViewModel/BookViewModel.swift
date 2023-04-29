//
//  BookViewModel.swift
//  BookShelf
//
//  Created by Jessie P on 4/27/23.
//

import Foundation

class BookViewModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init(){
        self.books = DataService.getLocalData()
    }
    
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].isFavourite.toggle()
        }
    }
    
    
}
