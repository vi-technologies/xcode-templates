//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_sceneName___ViewModel: ViewModel {
    
    //MARK: properties
    private struct consts {
//        static let <#text1#> = "<#text1#>".localized
//        static let <#text2#> = "<#text2#>".localized
//        .
//        .
//        .
    }
    
//    let arrImages = [<#image literal1#>, <#image literal2#>, ...]
    
    private var <#___VARIABLE_sceneName___Coordinator#>: <#___VARIABLE_sceneName___Coordinator#>? {
        return coordinator as? <#___VARIABLE_sceneName___Coordinator#>
    }
    
    var model: ___VARIABLE_sceneName___Model = {
        return ___VARIABLE_sceneName___Model(title: consts.<#text1#>,
                                             subtitle: consts.<#text2#>,
                                             .
                                             .
                                             .)
    }()
    
    //MARK: - events handlers from view controller
    func handle<#Event1#>() {
        
    }
    
    func handle<#Event2#>() {
        
    }
}
