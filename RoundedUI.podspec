#
# Be sure to run `pod lib lint RoundedUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RoundedUI'
  s.version          = '1.1.12'
  s.summary          = 'Configure rounded corners UI components on your Interface Builder.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This framework help you configure rounded corners UI components on your Interface Builder without having to specify in code, written in swift.
                       DESC

  s.homepage         = 'https://github.com/BraveSoft-Vietnam/RoundedUI.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hien Pham' => 'hienpham@bravesoft.com.vn' }
  s.source           = { :git => 'https://github.com/BraveSoft-Vietnam/RoundedUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'

  s.source_files = 'RoundedUI/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RoundedUI' => ['RoundedUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
