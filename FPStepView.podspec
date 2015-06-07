Pod::Spec.new do |s|
  s.name         = "FPStepView"
  s.version      = "1.0.0"
  s.summary      = "Simple step view"
  s.homepage     = "https://github.com/FellowPlusDev/FPStepView"
  s.license      = "MIT"
  s.author       = { "Liu Yi" => "61@fellowplus.com" }
  s.source       = { :git => "git@github.com:FellowPlusDev/FPStepView.git", :tag => '1.0.0'}
  s.source_files = "FPStepView/Sources/**/*.{h,m}"
  s.requires_arc = true
  s.platform     = :ios, '7.0'

end