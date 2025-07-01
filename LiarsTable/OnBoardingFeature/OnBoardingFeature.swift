
import ComposableArchitecture

@Reducer
struct OnBoardingFeature {
    
    @ObservableState
    struct State: Equatable {
    }
    
    enum Action {
        case doneOnBoarding
    }
    
    var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            default:
                return .none
            }
        }
    }
}
