//
//  AboboraCoordinator.swift
//  VIP
//
//  Created by Jade on 12/07/22.
//

import Foundation
import UIKit

protocol AboboraCoordinating {
    func showErrorView()
}

final class AboboraCoordinator {
    weak var viewController: UIViewController?
}

extension AboboraCoordinator: AboboraCoordinating {
    func showErrorView() {
        let nextViewController = ViewController()
        viewController?.navigationController?.pushViewController(nextViewController, animated: true)
    }
}
