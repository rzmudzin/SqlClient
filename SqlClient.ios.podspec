Pod::Spec.new do |s|
  s.name             = 'SqlClient.ios'
  s.version          = '0.1.0'
  s.summary          = 'A brief description of SqlClient.ios.'
  s.homepage         = 'https://github.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rob Zmudzinski' => 'rob@rob.com' }
  s.source           = { :git => 'https://github.com/rzmudzin/SqlClient.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'SqlClient.ios/src/**/*'
#  s.source_files = 'SqlClient.ios/src/*.{h,m}'
  

  # s.resource_bundles = {
  #   'SqlClient.ios' => ['SqlClient.ios/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.vendored_libraries = 'SqlClient.ios/lib/libsybdb.a'
  s.libraries = 'iconv'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
