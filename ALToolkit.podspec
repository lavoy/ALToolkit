Pod::Spec.new do |s|
  s.name          = "ALToolkit"
  s.version       = "0.1"
  s.summary       = "ALToolkit is a collection of categories I find myself recreating all the time and decided to stop."
  s.homepage      = "https://github.com/lavoy/ALToolkit"
  s.license       = { :type => "MIT", :file => 'LICENSE' }
  s.author        = { "Andy LaVoy" => "andy@logcabinapps.com" }
  s.source        = { :git => "https://github.com/lavoy/ALToolkit.git", :tag => "0.1" }
  s.platform      = :ios, '5.0'
  s.source_files  = 'ALToolkit', 'ALToolkit/ALToolkit/*.{h,m}'
  s.framework     = 'Foundation'
  s.requires_arc  = true
end
