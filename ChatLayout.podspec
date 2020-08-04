Pod::Spec.new do |s|
  s.name             = 'ChatLayout'
  s.version          = '0.1.0'
  s.summary          = 'Custom UICollectionViewLayout to support a Chat like layout of the cells.'
  s.swift_version    = '5.2'

  s.description      = <<-DESC
    Custom UICollectionViewLayout to support a Chat like layout of the cells. Supports ful width alignment and
    and leading/trailing/center alignment of the cells.
                       DESC

  s.homepage         = 'https://github.com/ekazaev/ChatLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eugene Kazaev' => 'eugene.kazaev@gmail.com' }
  s.source           = { :git => 'https://github.com/ekazaev/ChatLayout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.default_subspec = "Ultimate"

  s.subspec "Ultimate" do |complete|
      complete.dependency "ChatLayout/Core"
      complete.dependency "ChatLayout/Extras"
  end
  
  s.subspec "Core" do |core|
    core.source_files = 'ChatLayout/Classes/Core/**/*'
  end

  s.subspec "Extras" do |extras|
      extras.source_files = 'ChatLayout/Classes/Extras/**/*'
      extras.dependency "ChatLayout/Core"
  end

  s.frameworks = 'UIKit'

  s.frameworks = 'UIKit'
end
