#
# Be sure to run `pod lib lint AipOcrSdkSimulator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AipOcrSdkSimulator'
  s.version          = '0.1.0'
  s.summary          = 'AipOcrSdk for Simulator.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AipOcrSdk framework.
                       DESC

  s.homepage         = 'https://github.com/aidevjoe/AipOcrSdkSimulator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aidevjoe' => 'aidevjoe@gmail.com' }
  s.source           = { :git => 'https://github.com/aidevjoe/AipOcrSdkSimulator.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'AipBase' do |b|
      b.vendored_frameworks ='AipOcrSdk/AipBase.framework'
  end
  
  s.subspec 'AipOcrSdk' do |s|
      s.vendored_frameworks ='AipOcrSdk/AipOcrSdk.framework'
  end
  
  s.subspec 'IdcardQuality' do |i|
      i.vendored_frameworks ='AipOcrSdk/IdcardQuality.framework'
  end
end
