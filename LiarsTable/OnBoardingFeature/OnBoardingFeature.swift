
import ComposableArchitecture

@Reducer
struct OnBoardingFeature {
    
    @ObservableState
    struct State: Equatable {
        var currentPage = Page.first
    }
    
    enum Action {
        case moveToNextPage
        case callbackToAppFeatureCompleteOnBoarding
    }
    
    var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            case .moveToNextPage:
                switch state.currentPage {
                case .first: state.currentPage = .second
                case .second: state.currentPage = .third
                case .third: return .send(.callbackToAppFeatureCompleteOnBoarding)
                }
                return .none
            case .callbackToAppFeatureCompleteOnBoarding:
                return .none
            }
        }
    }
}
