//
//  Store.swift
//  HelloRedux
//
//  Created by Mohammad Azam on 9/8/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation

typealias Reducer = (State, Action) -> State

protocol Action { }

struct IncrementAction: Action { }

struct State {
    var counter = 0
}

func reducer(state: State, action: Action) -> State {
    
    var state = state
    
    switch action {
        case _ as IncrementAction:
            state.counter += 1
        default:
            break
    }
    return state
}

class Store: ObservableObject {
    
    var reducer: Reducer
    @Published var state: State
    
    init(reducer: @escaping Reducer, state: State = State()) {
        self.reducer = reducer
        self.state = state
    }
    
    func dispatch(action: Action) {
        self.state = reducer(state, action)
    }
    
}
