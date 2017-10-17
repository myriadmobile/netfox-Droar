#
# Be sure to run `pod lib lint netfox-Droar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'netfox-Droar'
  s.version          = '1.0.3'
  s.summary          = 'A Droar plugin for Netfox'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This adds an activation for Netfox straight in Droar.
                       DESC

  s.homepage         = 'https://github.com/Janglinator/netfox-Droar'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Janglinator' => 'njangula@myriadmobile.com' }
  s.source           = { :git => 'https://github.com/Janglinator/netfox-Droar.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'netfox-Droar/Classes/**/*'
  
# s.resource_bundles = {
#   'netfox-Droar' => ['netfox-Droar/Classes/**/*.{xib,png,jpeg,jpg,txt}']
# }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'netfox'
  s.dependency 'Droar'
end
