//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter

extension ___FILEBASENAMEASIDENTIFIER___ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput {}

class ___FILEBASENAMEASIDENTIFIER___Configurator {

    // MARK: - Object lifecycle

    static let sharedInstance = ___FILEBASENAMEASIDENTIFIER___Configurator()

    private init() {}

    // MARK: - Configuration

    func configure(viewController: ___FILEBASENAMEASIDENTIFIER___ViewController) {
        let router = ___FILEBASENAMEASIDENTIFIER___Router()
        router.viewController = viewController

        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        presenter.viewController = viewController

        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        interactor.presenter = presenter

        viewController.output = interactor
        viewController.router = router
    }
}
