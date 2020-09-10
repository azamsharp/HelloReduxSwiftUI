//
//  ContentView.swift
//  HelloRedux
//
//  Created by Mohammad Azam on 9/8/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            
            List(store.state.movies, id: \.imdbId) { movie in
                Text(movie.title)
            }
            
            Button("Get Movies") {
                self.store.dispatch(action: GetMoviesAction())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(store)
    }
}
