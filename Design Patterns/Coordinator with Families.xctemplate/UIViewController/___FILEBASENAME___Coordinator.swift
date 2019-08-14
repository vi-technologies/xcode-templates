//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

class ___VARIABLE_sceneName___Coordinator: Coordinator {
    
    //MARK: properties
    private enum destination: CoordinatorDestination {
        case <#defaultDestination#>, <#secondDestination#>, ..., none
        
        var id: String {
            switch self {
            case .<#defaultDestination#>:
            return <#Default#>ViewController.className
            case .<#secondDestination#>:
                return <#Second#>ViewController.className
            case .none:
                return ""
            }
        }
    }
    
    private var initialDestination: destination {
        return .<#defaultDestination#>
    }
    
    //MARK: lifecycle
    override func start(with completion: @escaping () -> Void) {
        navigate(to: initialDestination)
        super.start()
    }
    
    //MARK: navigation
    private func navigate(to destination: destination) {
                
        switch destination {
        case .<#defaultDestination#>:
            if let viewController = <#Default#>ViewController() {
                viewController.viewModel = <#Default#>ViewModel(coordinator: self, viewController: viewController)
                navigate(to: destination, controller: viewController, embedInNavigation: true, animated: true)
            }
            
        case .<#secondDestination#>:
            if let viewController = <#Second#>ViewController() {
                viewController.viewModel = <#Second#>ViewModel(coordinator: self, viewController: viewController)
                navigate(to: destination, controller: viewController, embedInNavigation: true, animated: true)
            }
        case .none:
            parent?.coordinatorDidFinish(self)
            return
        }
    }
    
    private func nextDestination() -> destination {
        guard let currentDestination = currentDestination as? destination else {
            return .<#defaultDestination#>
        }
        
        switch currentDestination {
        case .<#defaultDestination#>n:
            return .<#second#>Destination
            
        case .<#secondDestination#>:
            return . none
            
        case .none:
            logError("not sure how you got here...")
            return .none
        }
    }
    
    //MARK: - Handle events
    
    //MARK: -
    
    
}
