

import ComposableArchitecture

@Reducer
struct AuthorizedFeature {
    
    @ObservableState
    struct State: Equatable {
        var selectedTab = Tab.lobby
    }
    
    enum Action {
        case selectTab(Tab)
        
    }
    
    var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            case .selectTab(let tab):
                state.selectedTab = tab
                return .none
            }
        }
    }
}
