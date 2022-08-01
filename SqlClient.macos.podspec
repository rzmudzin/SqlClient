#
# Be sure to run `pod lib lint SqlClient.macos.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SqlClient.macos'
  s.version          = '0.2.1'
  s.summary          = 'A short description of SqlClient.macos.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

	 s.homepage         = 'https://github.com/rzmudzin/SqlClient.git'
	 # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
	 s.license          = { :type => 'MIT', :file => 'LICENSE' }
	 s.author           = { 'Rob Zmudzinski' => 'rob@rob.com' }
	 s.source           = { :git => 'https://github.com/rzmudzin/SqlClient.git', :tag => s.version.to_s }
	 # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

	 s.swift_version = '5.0'
	 s.platform = :osx
	 s.osx.deployment_target = "12.3"
 #  s.osx.deployment_target = "10.10"

	 s.source_files = 'SqlClient.macos/Classes/**/*', 'SqlClient.macos/src/**/*', 'SqlClient.macos/lib/**/*'

	 
	 s.vendored_libraries = 'SqlClient.macos/lib/libsybdb.a'
	 s.libraries = 'iconv'
 #  s.requires_arc = true

	 #x86_64
	 #arm64
	 s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=macos*]' => 'arm64' }
	 s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=macos*]' => 'arm64' }
 s.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) _WINDEF_=1' }
end
