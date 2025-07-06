

import ComposableArchitecture

@Reducer
struct AuthorizedFeature {
    
    @ObservableState
    struct State: Equatable {
        
    }
    
    enum Action {
        case doSomething
    }
    
    var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            case .doSomething:
                return .none
            }
        }
    }
}
