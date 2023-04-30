//
//  BookView.swift
//  BookShelf
//
//  Created by Jessie P on 4/27/23.
//

import SwiftUI

struct BookView: View {
    
    var book : Book
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: -5, y:5)
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack{
                    Text(book.title)
                        .font(.title)
                        .bold()
                        .padding(.leading)
                    
                    if book.isFavourite {
                       Image(systemName: "star.fill")
                           .resizable()
                           .frame(width: 28, height: 28)
                           .foregroundColor(Color.yellow)
                   }
                    
                }
                
                Text(book.author)
                    .italic()
                
                
                Image(book.image)
                    .resizable()
                    .scaledToFit()
                
            }
            .padding()
            
        }
        .accentColor(.black)
        
        
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: Book())
        
        
    }
}
