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

  s.subspec 'WalletConnectUtils' do |r|
      r.source_files = 'Sources/WalletConnectUtils/**/*'
  end

  s.subspec 'Relayer' do |r|
      r.dependency 'WalletConnectSwiftV2/WalletConnectUtils'
      r.source_files = 'Sources/Relayer/**/*'
  end

  s.subspec 'WalletConnectKMS' do |r|
      r.dependency 'WalletConnectSwiftV2/WalletConnectUtils'
      r.source_files = 'Sources/WalletConnectKMS/**/*'
  end

  s.subspec 'WalletConnectSwiftV2' do |r|
      r.dependency 'WalletConnectSwiftV2/Relayer'
      r.dependency 'WalletConnectSwiftV2/WalletConnectUtils'
      r.dependency 'WalletConnectSwiftV2/WalletConnectKMS'
      r.source_files = 'Sources/WalletConnect/**/*'
  end

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.resource_bundles = { }
end
