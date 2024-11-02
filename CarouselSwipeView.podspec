#
# Be sure to run `pod lib lint CarouselSwipeView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CarouselSwipeView'
  s.version          = '1.0.1'
  s.summary          = 'A Carousel Swipe is a design pattern commonly used in mobile apps.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A Carousel Swipe is a design pattern commonly used in mobile apps and websites to showcase a series of images, cards, or content panels that users can scroll or swipe through horizontally or vertically. It’s a popular way to present content in an interactive, visually engaging format that saves space and gives users more control over what they see.
                       DESC

  s.homepage         = 'https://github.com/mohamed.a.raouf@icloud.com/CarouselSwipeView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mohamed.a.raouf@icloud.com' => 'mohamed.a.raouf@icloud.com' }
  s.source           = { :git => 'https://github.com/mohamed.a.raouf@icloud.com/CarouselSwipeView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version  = '5.3.2'
  s.static_framework = true
  s.requires_arc = true

  s.source_files = 'CarouselSwipeView/Classes/**/*'
  s.dependency 'Kingfisher', '4.1.0'
  
  # s.resource_bundles = {
  #   'CarouselSwipeView' => ['CarouselSwipeView/Assets/*.png']
  # }

   s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
