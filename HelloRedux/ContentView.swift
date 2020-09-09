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
            Text("\(store.state.counter)")
            
            Button("Increment") {
                self.store.dispatch(action: IncrementAction())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(store)
    }
}
