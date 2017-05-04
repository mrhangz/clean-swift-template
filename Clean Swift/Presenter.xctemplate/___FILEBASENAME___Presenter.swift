//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___PresenterInterface {
    func presentSomething(response: ___FILEBASENAMEASIDENTIFIER___.Something.Response)
}

class ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInterface {
    weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewControllerInterface!

    // MARK: - Presentation logic

    func presentSomething(response: ___FILEBASENAMEASIDENTIFIER___.Something.Response) {
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller

        let viewModel = ___FILEBASENAMEASIDENTIFIER___.Something.ViewModel()
        viewController.displaySomething(viewModel: viewModel)
    }
}
