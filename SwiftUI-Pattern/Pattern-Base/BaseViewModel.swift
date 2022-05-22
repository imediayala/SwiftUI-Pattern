//
//  BaseViewModel.swift
//  SwiftUI-Pattern
//
//  Created by Daniel Ayala on 22/5/22.
//

import Combine
import SwiftUI

/// BASE VIEW MODEL PROTOCOL
protocol AnyObservableObject: AnyObject {
    var objectWillChange: ObservableObjectPublisher { get }
}

protocol BaseViewModelProtocol: AnyObservableObject {
    var title: String { get set }
    var isNavigationLinkActive: Bool { get set }
    var destinationTag: UUID? { get set }
    var isSheetActive: Bool { get set }
    var isAlertActive: Bool { get set }

    func requestData()
}
