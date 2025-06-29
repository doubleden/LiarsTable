

import ComposableArchitecture

@Reducer
public struct AuthorizedFeature {
    
    @ObservableState
    public struct State: Equatable {
        public init () {}
    }
    
    public enum Action {
        case doSomething
    }
    
    public var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            case .doSomething:
                return .none
            default:
                return .none
            }
        }
    }
    
    public init() {}
}
