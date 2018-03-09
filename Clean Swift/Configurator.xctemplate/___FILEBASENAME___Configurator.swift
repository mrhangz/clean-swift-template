//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter

extension ___VARIABLE_sceneName___ViewController {
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    router.passDataToNextScene(segue: segue)
  }

  @IBAction func unwindTo___VARIABLE_sceneName___ViewController(from segue: UIStoryboardSegue) {
    print("unwind...")
    router.passDataToNextScene(segue: segue)
  }
}

class ___VARIABLE_sceneName___Configurator {

  // MARK: - Object lifecycle

  static let sharedInstance = ___VARIABLE_sceneName___Configurator()

  private init() {}

  // MARK: - Configuration

  func configure(viewController: ___VARIABLE_sceneName___ViewController) {
    let router = ___VARIABLE_sceneName___Router()
    router.viewController = viewController

    let presenter = ___VARIABLE_sceneName___Presenter()
    presenter.viewController = viewController

    let interactor = ___VARIABLE_sceneName___Interactor()
    interactor.presenter = presenter
    interactor.worker = ___VARIABLE_sceneName___Worker(store: ___VARIABLE_sceneName___Store())

    viewController.interactor = interactor
    viewController.router = router
  }
}
