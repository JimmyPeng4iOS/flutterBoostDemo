platform :ios, '8.0'

project 'wespy.xcodeproj'

use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'


#require 'logger'
target "wespy" do
    flutter_application_path = './libflutter/'
    load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')
  
    install_all_flutter_pods(flutter_application_path)

end

