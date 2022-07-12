//
//  AboboraInteractor.swift
//  VIP
//
//  Created by Jade on 12/07/22.
//

import Foundation

protocol AboboraInteracting {
    func loadList()
}

final class AboboraInteractor {
    private let presenter: AboboraPresenting
    private let coordinator: AboboraCoordinating
    private let service: AboboraServicing
    
    init(presenter: AboboraPresenting,
         coordinator: AboboraCoordinating,
         service: AboboraServicing) {
        self.presenter = presenter
        self.coordinator = coordinator
        self.service = service
    }
}

extension AboboraInteractor: AboboraInteracting {
    func loadList() {
        presenter.presentLoading()
        
        service.loadList { [presenter, coordinator] result in
            presenter.hideLoading()
            
            switch result {
            case true:
                presenter.presentSuccess()
                
            case false:
                coordinator.showErrorView()
            }
        }
    }
}
