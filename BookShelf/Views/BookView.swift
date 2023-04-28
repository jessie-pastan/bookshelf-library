//
//  BookView.swift
//  BookShelf
//
//  Created by Jessie P on 4/27/23.
//

import SwiftUI

struct BookView: View {
    
    var title: String
    var author: String
    var image: String
    
    
    var body: some View {

                GeometryReader { geo in
                    ZStack{
                        
                        Rectangle()
                        
                        VStack(spacing: 0) {
                            
                            
                            
                            VStack{
                                HStack(spacing: 0) {
                                    Text("\(title)")
                                        .font(.caption)
                                        .bold()
                                    .padding(.leading)
                                    
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color.yellow)
                                }
                                    
                                Text("\(author)")
                                    .font(.caption2)
                                    .italic()
                            }
                            .foregroundColor(.black)
                            .aspectRatio( contentMode: .fit)
                            .offset(y:30)
                            
                            
                            Image("\(image)")
                                
                                .resizable()
                                .aspectRatio(contentMode:.fill)
                                .frame(width: 200, height: 250)
                                .clipped()
                                .padding(40)
                                .offset()
                        }
                        
                        
                    }
                    
                    .frame(width: geo.size.width * 2/3, height: geo.size.height 
                           , alignment: .center)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.4), radius: 10, x: -5, y:5)
                }
                .offset(x:30)
                
        
      
        
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(title: "Day Dream", author: "Jessie", image: "cover1")
        
        
    }
}
