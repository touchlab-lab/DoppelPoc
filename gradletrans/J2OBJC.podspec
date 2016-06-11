#
#  Be sure to run `pod spec lint J2OBJC.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "J2OBJC"
  s.version      = "0.0.1"
  s.summary      = "A short description of J2OBJC."

  

  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  
s.authors = { 'John Connor' => 'jc@touchlab.co' }
  s.license = { :type => 'BSD' }
  s.version = '1.0'
  s.homepage = 'https://github.com/touchlab/DoppelPoc'
  s.source = { :git => 'https://github.com/touchlab/DoppelPoc.git' }
  
  s.source_files  = "include/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  s.public_header_files = "include/**/*.h"
  s.header_mappings_dir = "include"


end
