//
//  BookListView.swift
//  BookShelf
//
//  Created by Jessie P on 4/27/23.
//

import SwiftUI

struct BookListView: View {
    
    @EnvironmentObject var  model : BookViewModel
    
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0..<model.books.count, id: \.self){ index in
                        NavigationLink(destination:
                            BookDetailView(bookName: model.books[index].title, bookImage: model.books[index].image),
                            
                        label: {
                            
                            BookView(title: model.books[index].title, author: model.books[index].author, image: model.books[index].image)
                            
                        })
                       
                            
                    }
                    .scaledToFit()
                    .padding()
                    .offset(x:30)
                    
                }
            }
            .navigationBarTitle("My Library")
        }
    }
            
}



struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
            .environmentObject(BookViewModel())
    }
}
