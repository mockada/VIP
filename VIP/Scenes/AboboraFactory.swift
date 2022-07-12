//
//  AboboraFactory.swift
//  VIP
//
//  Created by Jade on 12/07/22.
//

import Foundation
import UIKit

enum AboboraFactory {
    static func make() -> UIViewController {
        let coordinator = AboboraCoordinator()
        let presenter = AboboraPresenter()
        let service = AboboraService()
        let interactor = AboboraInteractor(
            presenter: presenter,
            coordinator: coordinator,
            service: service)
        
        let viewController = AboboraViewController(interactor: interactor)
        
        coordinator.viewController = viewController
        presenter.viewController = viewController
        
        return viewController
    }
}
