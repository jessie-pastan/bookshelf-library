//
//  BookDetailView.swift
//  BookShelf
//
//  Created by Jessie P on 4/28/23.
//

import SwiftUI

struct BookDetailView: View {
    
    @EnvironmentObject var model : BookViewModel
    @State private var rateSelection = 1
    
    var book: Book
    
    var body: some View {
        
        VStack(spacing:20){
            
            NavigationLink(destination: BookContentView(content: book.content), label: {
                
                VStack{
                    Text("Read Now")
                        .font(.title2)
                        .italic()
                        .accentColor(.black)
                    
                    Image("cover1")
                        .resizable()
                        .scaledToFit()
                }
            })
            .padding()
            
            Text("Mark for Later!")
                .bold()
                .padding(.bottom, 10)
            
            Button(action: { model.updateFavourite(forId: book.id) }) {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            .accentColor(.yellow)
            
                Text("Rate \(book.title)")
                    .padding(.top,20)
                    .padding(.bottom,-10)
                Picker("", selection: $rateSelection){
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(10)
                .frame(width: 200)
            
        }
        .navigationBarTitle("\(book.title)")
    }
}



struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book())
            .environmentObject(BookViewModel())
    }
}
