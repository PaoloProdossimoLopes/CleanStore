//
//  CreateOrderPresenter.swift
//  CleanStore
//
//  Created by Paolo Prodossimo Lopes on 16/11/21.
//

protocol CreateOrderPresenterInput: AnyObject {
    func presentSomething(_ response: CreateOrderResponse)
}

protocol CreateOrderPresenterOutput: AnyObject {
    func displaySomathing(viewModel: CreateOrderViewModel)
}

final class CreateOrderPresenter: CreateOrderPresenterInput {
    
    //MARK: Business logic
    
    var output: CreateOrderPresenterOutput?
    
    //MARK: Presentation Logic
    
    func presentSomething(_ response: CreateOrderResponse) {
        DEBUG("in CreateOrderPresenter -execute-> presentSomething()")
        //NOTE: Format the response from the interacor and pass the result back to view controller
        let viewModel = CreateOrderViewModel()
        output?.displaySomathing(viewModel: viewModel)
    }
    
}

extension CreateOrderPresenter: CreateOrderInteractorOutput {
    func presentSomething(reponse: CreateOrderResponse) {
        DEBUG("in CreateOrderPresenter extension  -execute-> presentSomething()")
        presentSomething(reponse)
    }
}
