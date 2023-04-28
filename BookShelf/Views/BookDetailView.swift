//
//  BookDetailView.swift
//  BookShelf
//
//  Created by Jessie P on 4/28/23.
//

import SwiftUI

struct BookDetailView: View {
    
    @State private var rateSelection = 1
    
    var bookName: String
    var bookImage: String
    init(bookName: String, bookImage: String) {
        
        self.bookName = bookName
        self.bookImage = bookImage
    }
    
    var body: some View {
        
      
            VStack{
                Text("\(bookName)")
                    .font(.title)
                    .bold()
                    .padding(.top)
                    .padding(.bottom,-20)
                Text("Read Now")
                    .font(.title2)
                    .italic()
                    .padding(.top)
                    .padding(.bottom,-40)
                
                GeometryReader{ geo in
                    ZStack{
                        Rectangle()
                        Image("\(bookImage)")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .clipped()
                    }
                    .frame(width: geo.size.width - 100 , height:  geo.size.height - 100 )
                    .offset(x:50, y:80)
                    .foregroundColor(.black)
                }
                VStack{
                    Text("Mark for Later!")
                        .bold()
                        .padding(.bottom, 10)
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                }
                VStack{
                    Text("Rate \(bookName)")
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
            }
        
    }
}


struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(bookName: "Amazing Words", bookImage: "cover1")
    }
}
