//
//  CreateOrderInteractor.swift
//  CleanStore
//
//  Created by Paolo Prodossimo Lopes on 16/11/21.
//

protocol CreateOrderInteractorInput: AnyObject {
    func doSometing(request: CreateOrderReqeust)
}

protocol CreateOrderInteractorOutput: AnyObject {
    func presentSomething(reponse: CreateOrderResponse)
}

final class CreateOrderInteractor: CreateOrderInteractorInput {
    
    //MARK: Properties
    
    var output: CreateOrderInteractorOutput?
    var worker: CreateOrderWorker?
    
    //MARK: Business logic
    
    func doSometing(request: CreateOrderReqeust) {
        DEBUG("in CreateOrderInteractor -execute-> doSometing()")
        //NOTE: create some worker to do the work
        worker = CreateOrderWorker()
        worker?.doSomeWork()
        
        //NOTE: Pass the result to the Presenter
        let reponse = CreateOrderResponse()
        output?.presentSomething(reponse: reponse)
    }
    
}

extension CreateOrderInteractor: CreateOrderViewControllerOutput {
    func doSomething(request: CreateOrderReqeust) {
        DEBUG("in CreateOrderInteractor extension  -execute-> doSomething()")
        doSometing(request: request)
    }
}
