
public struct SettingStorageService: Sendable {
    var checkOnBoardingState: OnBoardingCheckCallback
    
    init(checkOnBoardingState: @escaping OnBoardingCheckCallback) {
        self.checkOnBoardingState = checkOnBoardingState
    }
}
