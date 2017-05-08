//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerInterface: class {
    func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___.Something.ViewModel)
}

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController, ___FILEBASENAMEASIDENTIFIER___ViewControllerInterface {
    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInterface!
    var router: ___FILEBASENAMEASIDENTIFIER___Router!

    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        ___FILEBASENAMEASIDENTIFIER___Configurator.sharedInstance.configure(viewController: self)
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        doSomethingOnLoad()
    }

    // MARK: - Event handling

    func doSomethingOnLoad() {
        // NOTE: Ask the Interactor to do some work

        let request = ___FILEBASENAMEASIDENTIFIER___.Something.Request()
        interactor.doSomething(request: request)
    }

    // MARK: - Display logic

    func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___.Something.ViewModel) {
        // NOTE: Display the result from the Presenter

        // nameTextField.text = viewModel.name
    }
}
