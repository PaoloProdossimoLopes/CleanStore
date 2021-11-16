//
//  CreateOrderViewController.swift
//  CleanStore
//
//  Created by Paolo Prodossimo Lopes on 16/11/21.
//

import UIKit

protocol CreateOrderViewControllerInput {
    func displaySomething(viewModel: CreateOrderViewModel)
}

protocol CreateOrderViewControllerOutput {
    func doSomething(request: CreateOrderReqeust)
}

typealias COVCWithInput = (UIViewController & CreateOrderViewControllerInput)

final class CreateOrderViewController: COVCWithInput {
    
    //MARK: Properties
        
    var output: CreateOrderViewControllerOutput?
    var router: CreateOrderRouter?
    
    //MARK: View lifecycle
    
    override func loadView() {
        super.loadView()
        CreateOrderConfigurator.sharedInstance.configure(viewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSometingOnLoad()
    }
    
    //MARK: Event handleing
    
    private final func doSometingOnLoad() {
        DEBUG("in viewContorller -execute-> doSometingOnLoad()")
        //NOTE: ask the interactor to do some work
        let resquest = CreateOrderReqeust()
        output?.doSomething(request: resquest)
    }
    
    //MARK: Display logic
    
    func displaySomething(viewModel: CreateOrderViewModel) {
        DEBUG("in CreateOrderViewController  -execute-> displaySomething()")
        //NOTE: Diplay the result from the presenter
        //EXAMPLE: nameTextField.text = viewModel.name
    }
    
}


extension CreateOrderViewController: CreateOrderPresenterOutput {
    func displaySomathing(viewModel: CreateOrderViewModel) {
        DEBUG("in CreateOrderViewController extension  -execute-> displaySomathing()")
        displaySomething(viewModel: viewModel)
    }
}
