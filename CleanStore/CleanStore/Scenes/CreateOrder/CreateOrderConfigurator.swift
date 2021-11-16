//
//  CreateOrderConfigurator.swift
//  CleanStore
//
//  Created by Paolo Prodossimo Lopes on 16/11/21.
//

import Foundation

final class CreateOrderConfigurator {
    
    static let sharedInstance = CreateOrderConfigurator()
    
    private init() { }
    
    //MARK:  Configurator
    
    func configure(viewController: CreateOrderViewController) {
        let router = CreateOrderRouter()
        router.viewController = viewController
        
        let presenter = CreateOrderPresenter()
        presenter.output = viewController
        
        let interactor = CreateOrderInteractor()
        interactor.output = presenter
        
        viewController.output = interactor
        viewController.router = router
    }
    
}

