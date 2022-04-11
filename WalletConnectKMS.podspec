#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint WalletConnect.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'WalletConnectKMS'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => './LICENSE', :type => 'Apache License Version 2.0' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.platform = :ios, '13.0'

  s.dependency 'WalletConnectUtils'
  s.source_files = 'Sources/WalletConnectKMS/**/*'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
