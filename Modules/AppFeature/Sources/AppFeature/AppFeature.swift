import ComposableArchitecture
import OnBoardingFeature
import AuthorizedFeature
import SettingStorageServiceKey

@Reducer
public struct AppFeature {
    
    @ObservableState
    public struct State: Equatable {
        @Presents var destination: AppFeatureDestination.State?
    }
    
    public enum Action {
        case destinationAction(PresentationAction<AppFeatureDestination.Action>)
        case checkOnBoardingCompletion
        case navigateToOnBoarding
        case navigateToAuthorized
    }
    
    @Dependency(\.settingStorageService) var settingStorageService
    
    public var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            case .checkOnBoardingCompletion:
                return settingStorageService.checkIsOnBoardingState()
                ? .send(.navigateToAuthorized)
                : .send(.navigateToOnBoarding)
                
            case .navigateToAuthorized:
                state.destination = .authorized(AuthorizedFeature.State())
                return .none
            case .navigateToOnBoarding:
                state.destination = .onBoarding(OnBoardingFeature.State())
                return .none
            case .destinationAction(.presented(.onBoarding(.doneOnBoarding))):
                settingStorageService.setOnBoardingState(true)
                return .send(.checkOnBoardingCompletion)
            default:
                return .none
            }
        }
        .ifLet(\.$destination, action: \.destinationAction)
    }
    
    public init() {}
}
