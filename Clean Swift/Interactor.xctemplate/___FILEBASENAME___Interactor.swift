//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___InteractorInterface {
  func doSomething(request: ___VARIABLE_sceneName___.Something.Request)
  var model: Entity? { get }
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorInterface {
  var presenter: ___VARIABLE_sceneName___PresenterInterface!
  var worker: ___VARIABLE_sceneName___Worker?
  var model: Entity?

  // MARK: - Business logic

  func doSomething(request: ___VARIABLE_sceneName___.Something.Request) {
    worker?.doSomeWork { [weak self] in
      if case let Result.success(data) = $0 {
        // If the result was successful, we keep the data so that we can deliver it to another view controller through the router.
        self?.model = data
      }

      // NOTE: Pass the result to the Presenter. This is done by creating a response model with the result from the worker. The response could contain a type like UserResult enum (as declared in the SCB Easy project) with the result as an associated value.
      let response = ___VARIABLE_sceneName___.Something.Response()
      self?.presenter.presentSomething(response: response)
    }
  }
}
