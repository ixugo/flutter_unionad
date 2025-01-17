#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_unionad.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_unionad'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'gstory' => 'https://github.com/gstory0404/flutter_tencentad' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*','PangleSDK/BUAdSDK.bundle'
  s.static_framework = true
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'
  s.dependency 'Ads-CN','~> 3.9.0.4'
#  s.vendored_frameworks = 'PangleSDK/*.framework'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
