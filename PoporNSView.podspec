#
# Be sure to run `pod lib lint PoporNSView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PoporNSView'
  s.version          = '1.0.1'
  s.summary          = 'popor 常用 控件.'
  
  s.homepage         = 'https://github.com/popor/PoporNSView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'popor' => '908891024@qq.com' }
  s.source           = { :git => 'https://github.com/popor/PoporNSView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.osx.deployment_target  = '10.13'
  
  s.source_files        = 'PoporNSView/Classes/PoporNSView.h'
  s.public_header_files = 'PoporNSView/Classes/PoporNSView.h'
  
  s.osx.dependency 'Masonry'
  
  s.subspec 'AcceptDragFileView' do |ss|
    ss.source_files = 'PoporNSView/Classes/AcceptDragFileView/*.{h,m}'
  end
  
  s.subspec 'AppKeepFront' do |ss|
    ss.source_files = 'PoporNSView/Classes/AppKeepFront/*.{h,m}'
  end
  
  s.subspec 'iToast' do |ss|
    ss.source_files = 'PoporNSView/Classes/iToast/*.{h,m}'
  end
  
  s.subspec 'NSBundle' do |ss|
    ss.source_files = 'PoporNSView/Classes/NSBundle/*.{h,m}'
  end
  
  s.subspec 'NSView' do |ss|
    ss.osx.dependency  'PoporFoundation/NSObject'
    
    ss.source_files = 'PoporNSView/Classes/NSView/*.{h,m}'
  end
  
  s.subspec 'NSTask' do |ss|
    ss.source_files = 'PoporNSView/Classes/NSTask/*.{h,m}'
  end
  
  s.subspec 'Font' do |ss|
    ss.source_files = 'PoporNSView/Classes/Font/*.{h,m}'
  end
  
end
