import Foundation

/**
 Swift protocol defining the requirements for modules providers.
 */
public protocol ModulesProviderProtocol {
  func getModuleClasses() -> [AnyModule.Type]

  /**
   Returns an array of classes that hooks into `ExpoAppDelegate` to receive app delegate events.
   */
  func getAppDelegateSubscribers() -> [ExpoAppDelegateSubscriber.Type]

  typealias ExpoReactDelegateHandlerTupleType = (packageName: String, handler: ExpoReactDelegateHandler.Type)
  /**
   Returns an array of `ExpoReactDelegateHandlerTupleType` for `ABI46_0_0ReactDelegate` to hook ABI46_0_0React instance creation.
   */
  func getReactDelegateHandlers() -> [ExpoReactDelegateHandlerTupleType]
}

/**
 The default implementation for modules provider.
 The proper implementation is generated by autolinking as part of `pod install` command.
 */
@objc
open class ModulesProvider: NSObject, ModulesProviderProtocol {
  public override required init() {}

  open func getModuleClasses() -> [AnyModule.Type] {
    return []
  }

  open func getAppDelegateSubscribers() -> [ExpoAppDelegateSubscriber.Type] {
    return []
  }

  open func getReactDelegateHandlers() -> [ExpoReactDelegateHandlerTupleType] {
    return []
  }
}
