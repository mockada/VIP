//
//  AboboraPresenter.swift
//  VIP
//
//  Created by Jade on 12/07/22.
//

import Foundation

protocol AboboraPresenting {
    func presentLoading()
    func hideLoading()
    func presentSuccess()
}

final class AboboraPresenter {
    weak var viewController: AboboraDisplaying?
}

extension AboboraPresenter: AboboraPresenting {
    func presentLoading() {
        viewController?.displayLoading()
    }
    
    func hideLoading() {
        viewController?.hideLoading()
    }
    
    func presentSuccess() {
        viewController?.displayHeader()
        viewController?.displayList()
        viewController?.displayFooter()
        viewController?.enableButton()
    }
}
