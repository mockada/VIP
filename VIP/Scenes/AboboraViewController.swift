//
//  AboboraViewController.swift
//  VIP
//
//  Created by Jade on 12/07/22.
//

import Foundation
import UIKit

protocol AboboraDisplaying: AnyObject {
    func displayLoading()
    func hideLoading()
    func displayHeader()
    func displayList()
    func displayFooter()
    func enableButton()
}

final class AboboraViewController: UIViewController {
    private let interactor: AboboraInteracting
    
    init(interactor: AboboraInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.loadList()
    }
}

extension AboboraViewController: AboboraDisplaying {
    func displayLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    func displayHeader() {
        
    }
    
    func displayList() {
        
    }
    
    func displayFooter() {
        
    }
    
    func enableButton() {
        
    }
}
