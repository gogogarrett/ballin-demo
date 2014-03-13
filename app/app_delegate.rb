class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = build_tab_bar
    @window.makeKeyAndVisible

    true
  end


  def build_tab_bar
    tab_bar_controller = UITabBarController.alloc.init
    tab_bar_controller.viewControllers = [BallinController.alloc.init, DoubleBallinController.alloc.init]
    tab_bar_controller
  end
end

class BallinController < UIViewController
  def init
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemTopRated, tag: 1)
    self
  end

  def viewDidLoad
    view.backgroundColor = UIColor.redColor
  end
end

class DoubleBallinController < UIViewController
  def init
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemMostViewed, tag: 1)
    self
  end

  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
  end
end
