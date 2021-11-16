//
//  CreateOrderRouter.swift
//  CleanStore
//
//  Created by Paolo Prodossimo Lopes on 16/11/21.
//

import UIKit

protocol CreateOrderRouterInput: AnyObject {
    func navigateToSomeWhere()
}

final class CreateOrderRouter {
    
    //MARK: Properties:
    
    weak var viewController: CreateOrderViewController?
    
    //MARK: Navigation:
    
    func navigateToSomeWhere() {
        //NOTE: Teach the router how to navogate to another scene. Some example follow:
        
        //1. Trigger a storyBoard segue (if exist)
        //viewController.performSegueWithIdentifier("ShowSomeWhereScene", sender: nil)
        
        //2. present another view controller programmatically
        //viewController?.present(someWhereViewController, animated: true, completion: nil)
        
        //3. ask the navigation controller to push another view controller onto the stack
        //viewController?.navigationController?.pushViewController(someWhereViewController, animated: true)
        
        //4. present a view controller from a diferent storyboard
        
    }
    
    //MARK: Communication:
    
    func passDataToNextScene(segue: UIStoryboardSegue) {
        //NOTE: Teach the router which scene it can communicate with
        
        if segue.identifier == "ShowSomeWhereScene" {
            passDataToSomeWhereScene(segue: segue)
        }
    }
    
    func passDataToSomeWhereScene(segue: UIStoryboardSegue) {
        //NOTE: Teach the router how to pass data to the next scene
        
        //let someWhereViewController = segue.destination as? SomeWhereViewController
        //someWhereViewController.output.name = viewController?.output.name
    }
    
}
