//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___ViewControllerInterface: class {
  func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UICollectionViewController, ___VARIABLE_sceneName___ViewControllerInterface {
  var interactor: ___VARIABLE_sceneName___InteractorInterface!
  var router: ___VARIABLE_sceneName___Router!

  // MARK: - Object lifecycle

  override func awakeFromNib() {
    super.awakeFromNib()
    ___VARIABLE_sceneName___Configurator.sharedInstance.configure(viewController: self)
  }

  // MARK: - View lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    doSomethingOnLoad()
  }

  // MARK: - Event handling

  func doSomethingOnLoad() {
    // NOTE: Ask the Interactor to do some work

    let request = ___VARIABLE_sceneName___.Something.Request()
    interactor.doSomething(request: request)
  }

  // MARK: - Display logic

  func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
    // NOTE: Display the result from the Presenter

    // nameTextField.text = viewModel.name
  }
}
