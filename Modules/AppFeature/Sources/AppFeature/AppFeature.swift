import ComposableArchitecture
import SettingStorageServiceKey

@Reducer
struct  AppFeature {
    
    @ObservableState
    struct State: Equatable {
        var isOnBoardingCompleted = false
    }
    
    enum Action {
        case checkOnBoardingCompletion
        case setOnBoardingCompletion(Bool)
    }
    
    @Dependency(\.settingStorageService) var settingStorageService
    
    var body: some Reducer <State, Action> {
        Reduce { state, action in
            switch action {
            case .checkOnBoardingCompletion:
                state.isOnBoardingCompleted = settingStorageService.checkOnBoardingState()
                return .none
                
            case .setOnBoardingCompletion(let newValue):
                settingStorageService.setOnBoardingState(newValue)
                state.isOnBoardingCompleted = newValue
                return .none 
            }
        }
    }
}
