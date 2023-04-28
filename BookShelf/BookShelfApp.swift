//
//  BookShelfApp.swift
//  BookShelf
//
//  Created by Jessie P on 4/27/23.
//

import SwiftUI

@main
struct BookShelfApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
                .environmentObject(BookViewModel())
        }
    }
}
