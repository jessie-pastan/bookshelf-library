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
        
        ForEach(0..<content.count, id: \.self){ index in
            ScrollView {
                Text("\(content[index])")
                let page = index + 1
                Text("\(page)")
            }
            
        }
        
        
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookContentView(content: ["Text1","Text2","Text3"])
    }
}
