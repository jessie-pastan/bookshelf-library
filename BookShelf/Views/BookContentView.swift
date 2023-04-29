//
//  BookContentView.swift
//  BookShelf
//
//  Created by Jessie P on 4/28/23.
//

import SwiftUI

struct BookContentView: View {
    
    @EnvironmentObject var model : BookViewModel
    var content : [String]
    
    init(content: [String]) {
        
        self.content = content
    }
    
    var body: some View {
        
        
            TabView {
                ForEach(0..<content.count, id: \.self){ index in
                    ScrollView{
                        VStack{
                        
                        Text("\(content[index])")
                        
                        let page = index + 1
                        Text("\(page)")
                        
                    }
                    .font(.title)
                }
            }
               
            
        } .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            
    }
    
}


struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookContentView(content: ["Hello this is test","Text2","Text3"])
    }
}
