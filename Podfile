platform :ios, '7.0'

pod 'CocoaLumberjack'
pod 'MagicalRecord'
pod 'BlocksKit'

post_install do | installer |
  require 'fileutils'
  FileUtils.cp_r('Pods/Target Support Files/Pods/Pods-acknowledgements.plist', 'TableTalkRolePlayingGame/Settings.bundle/Acknowledgements.plist', :remove_destination => true)
end
