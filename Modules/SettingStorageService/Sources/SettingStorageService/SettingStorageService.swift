
public struct SettingStorageService: Sendable {
    public static let keyName = "onBoardingState_flag"
    
    public var checkOnBoardingState: OnBoardingCheckCallback
    public var setOnBoardingState: OnBoardingSetCallback
    
    public init(
        checkOnBoardingState: @escaping OnBoardingCheckCallback,
        setOnBoardingState: @escaping OnBoardingSetCallback
    ) {
        self.checkOnBoardingState = checkOnBoardingState
        self.setOnBoardingState = setOnBoardingState
    }
}
