Pod::Spec.new do |s|
  s.name             = 'SqlClient.ios'
  s.version          = '0.1.0'
  s.summary          = 'A brief description of SqlClient.ios.'
  s.homepage         = 'https://github.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rob Zmudzinski' => 'rob@rob.com' }
  s.source           = { :git => 'https://github.com/rzmudzin/SqlClient.ios.git', :tag => s.version.to_s }

#  s.swift_version = '5.0'
#  s.ios.deployment_target = '10.0'
#  #s.source_files = 'SqlClient.ios/Classes/**/*'
  s.source_files = 'SqlClient.ios/src/*.{h,m}'
  
  # s.resource_bundles = {
  #   'SqlClient.ios' => ['SqlClient.ios/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.vendored_libraries = 'SQLClient/SQLClient/SQLClient/libsybdb.a'
  s.libraries = 'iconv'
  s.requires_arc = true
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
end
