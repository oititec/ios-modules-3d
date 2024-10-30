Pod::Spec.new do |s|
    s.name            = 'OILiveness3D'
    s.version         = '2.4.0-rn'
    s.summary         = 'Framework OILiveness3D para iOS.'
    s.homepage        = 'https://www.oititec.com.br/'
    s.license         = { :type => 'Copyright', :text => 'Copyright © 2024 Oiti. All rights reserved.' }
    s.author          = 'Oititec'
    s.platform        = :ios, '12.0'
    s.swift_version   = '5.0'
    s.source          = { :git => 'https://github.com/oititec/ios-modules-3d.git', :tag => s.version.to_s }
    s.vendored_frameworks  = 'Framework/OILiveness3D.xcframework'
  
    s.dependency 'OICommons', '~> 2.0.1'
    s.dependency 'OINetwork', '~> 2.1.1'
    s.dependency 'OIComponents', '~> 1.8'
    s.dependency 'OISecurity', '~> 3.1.2'
    s.dependency 'OILiveness3D_FT', '9.7.36'
  end