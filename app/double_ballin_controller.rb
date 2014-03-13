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
