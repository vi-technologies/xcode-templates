//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

class ___VARIABLE_sceneName___Coordinator: Coordinator {
    
    //MARK: - Properties
    
    private enum Destination: CoordinatorDestination {
        case <#default#>Destination, <#second#>Destination, none
        
        var id: String {
            switch self {
            case .<#default#>Destination:
            return <#Default#>ViewController.className
            case .<#second#>Destination:
                return <#Second#>ViewController.className
            case .none:
                return ""
            }
        }
    }
    
    private var initialDestination: Destination {
        return .<#default#>Destination
    }
    
    //MARK: - Lifecycle
    
    override func start(with completion: @escaping () -> Void) {
        navigate(to: initialDestination)
        super.start()
    }
    
    //MARK: - Navigation
    
    private func navigate(to destination: Destination) {
                
        switch destination {
        case .<#default#>Destination:
            if let viewController = <#Default#>ViewController() {
                viewController.viewModel = <#Default#>ViewModel(coordinator: self, viewController: viewController)
                navigate(to: destination, controller: viewController, embedInNavigation: true, animated: true)
            }
            
        case .<#second#>Destination:
            if let viewController = <#Second#>ViewController() {
                viewController.viewModel = <#Second#>ViewModel(coordinator: self, viewController: viewController)
                navigate(to: destination, controller: viewController, embedInNavigation: true, animated: true)
            }
        case .none:
            parent?.coordinatorDidFinish(self)
            return
        }
    }
    
    private func nextDestination() -> Destination {
        guard let currentDestination = currentDestination as? Destination else {
            return .<#default#>Destination
        }
        
        switch currentDestination {
        case .<#default#>Destination:
            return .<#second#>Destination
            
        case .<#second#>Destination:
            //TODO:
            return . none
            
        case .none:
            logError("not sure how you got here...")
            return .none
        }
    }
    
    //MARK: - Handle events
    
    func authenticationRequired() {
        //TODO:
        //check if onboarding is needed and continue
        
        navigate(to: nextDestination())
    }
    
    //TODO: add authentication type
    func authenticationCompleted() {
        //TODO:
        //check if onboarding is needed and continue
        
        //
        navigate(to: nextDestination())
    }
    
    //MARK: -
    
    
    
}
