//
//  AboboraService.swift
//  VIP
//
//  Created by Jade on 12/07/22.
//

import Foundation

protocol AboboraServicing {
    func loadList(completion: @escaping (Bool) -> Void)
}

final class AboboraService {
    
}

extension AboboraService: AboboraServicing {
    func loadList(completion: @escaping (Bool) -> Void) {
        
    }
}
