//
//  NavigationManager.swift
//  SampleCodes
//
//  Created by Kyle Kim on 7/29/24.
//

import Foundation
import SwiftUI

enum ScreenType {
    case splash
    case singIn
    case tab
}

final class NavigationManager: ObservableObject {
   @Published var navigationPath = NavigationPath()
     
    @ViewBuilder
    func navigate(to screen: ScreenType) -> some View {
        switch screen {
        case .splash:
            Text("SplashView")
            
        case .singIn:
            Text("SignInView")
            
        case .tab:
            Text("MainTabView")
        }
    }
    
    func push(_ screen: ScreenType) {
        self.navigationPath.append(screen)
    }
    
    func pop() {
        self.navigationPath.removeLast()
    }
    
    func popToRoot() {
        self.navigationPath.removeLast(self.navigationPath.count)
    }
}
