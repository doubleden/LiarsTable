
import ComposableArchitecture

@Reducer
public struct OnBoardingFeature {
    
    @ObservableState
    public struct State: Equatable {
        public init() {}
    }
    
    public enum Action {
        case doneOnBoarding
    }
    
    public var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            case .doneOnBoarding:
                return .none
            default:
                return .none
            }
        }
    }
    
    public init() {}
}
