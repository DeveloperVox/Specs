Pod::Spec.new do |spec|
  spec.name         = 'DTCoreText'
  spec.version      = '1.6.1'
  spec.platform     = :ios, '4.3'
  spec.license      = 'BSD'
  spec.source       = { :git => 'https://github.com/Cocoanetics/DTCoreText.git', :tag => spec.version.to_s }
  spec.source_files = 'Core/Source/*.{h,m,c}'
  spec.dependency 'DTFoundation/Core', '~>1.4.4'
  spec.dependency 'DTFoundation/UIKit', '~>1.4.4'
  spec.dependency 'DTFoundation/DTHMLParser', '~>1.4.4'
  spec.frameworks   = 'MediaPlayer', 'QuartzCore', 'CoreText', 'CoreGraphics', 'ImageIO'
  spec.requires_arc = true
  spec.homepage     = 'https://github.com/Cocoanetics/DTCoreText'
  spec.summary      = 'Methods to allow using HTML code with CoreText.'
  spec.author       = { 'Oliver Drobnik' => 'oliver@cocoanetics.com' }
  spec.prefix_header_contents = '#import <CoreText/CoreText.h>'

  spec.prepare_command = 'echo "This Pod relies on the removed \`pre_install\` or \`post_install\` hooks and therefore will no longer continue to work. Please try updating to the latest version of this Pod or updating the Pod specification. See http://blog.cocoapods.org/CocoaPods-Trunk/ for more details." && exit 1'
end

