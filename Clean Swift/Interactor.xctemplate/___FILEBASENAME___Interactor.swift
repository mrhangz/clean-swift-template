//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___InteractorInput {
    func doSomething(request: ___FILEBASENAMEASIDENTIFIER___.Something.Request)
}

class ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInput {
    var presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInterface!
    var worker: ___FILEBASENAMEASIDENTIFIER___Worker!

    // MARK: - Business logic

    func doSomething(request: ___FILEBASENAMEASIDENTIFIER___.Something.Request) {
        // NOTE: Create some Worker to do the work

        worker = ___FILEBASENAMEASIDENTIFIER___Worker()
        worker.doSomeWork()

        // NOTE: Pass the result to the Presenter

        let response = ___FILEBASENAMEASIDENTIFIER___.Something.Response()
        presenter.presentSomething(response: response)
    }
}
