#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint WalletConnect.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'WalletConnectSwiftV2'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.platform = :ios, '13.0'

  s.subspec 'WalletConnectSwiftV2' do |r|
      r.dependency 'Relayer'
      r.dependency 'WalletConnectUtils'
      r.dependency 'WalletConnectKMS'
      r.source_files = 'Sources/WalletConnect/**/*'
  end

  s.subspec 'Relayer' do |r|
      r.dependency 'WalletConnectUtils'
      r.source_files = 'Sources/Relayer/**/*'
  end

  s.subspec 'WalletConnectKMS' do |r|
      r.dependency 'WalletConnectUtils'
      r.source_files = 'Sources/WalletConnectKMS/**/*'
  end

  s.subspec 'WalletConnectUtils' do |r|
      r.source_files = 'Sources/WalletConnectUtils/**/*'
  end

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.resource_bundles = { }
end
