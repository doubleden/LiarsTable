//
//  File.swift
//  AppFeature
//
//  Created by Denis Denisov on 27/6/25.
//

import ComposableArchitecture

@Reducer
enum AppFeatureDestination {
    case onBoarding(OnBoardingFeature)
    case authorized(AuthorizedFeature)
    
    @ObservableState
    enum State: CaseReducerState, Equatable {
        public typealias StateReducer = AppFeatureDestination
        
        case onBoarding(OnBoardingFeature.State)
        case authorized(AuthorizedFeature.State)
    }
}
