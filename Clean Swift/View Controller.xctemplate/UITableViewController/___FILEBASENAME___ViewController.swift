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

class ___VARIABLE_sceneName___ViewController: UITableViewController, ___VARIABLE_sceneName___ViewControllerInterface {
  var interactor: ___VARIABLE_sceneName___InteractorInterface!
  var router: ___VARIABLE_sceneName___Router!

  // MARK: - Object lifecycle

  override func awakeFromNib() {
    super.awakeFromNib()
    configure(viewController: self)
  }

  // MARK: - Configuration

  private func configure(viewController: ___VARIABLE_sceneName___ViewController) {
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

  // MARK: - Router

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    router.passDataToNextScene(segue: segue)
  }

  @IBAction func unwindTo___VARIABLE_sceneName___ViewController(from segue: UIStoryboardSegue) {
    print("unwind...")
    router.passDataToNextScene(segue: segue)
  }
}
