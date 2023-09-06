Pod::Spec.new do |s|
    s.name            = 'OILiveness3D'
    s.version         = '1.0.3'
    s.summary         = 'Framework OILiveness3D para iOS.'
    s.homepage        = 'https://www.oititec.com.br/'
    s.license         = { :type => 'Copyright', :text => 'Copyright © 2022 Oiti. All rights reserved.' }
    s.author          = 'Oititec'
    s.platform        = :ios, '11.0'
    s.swift_version   = '5.0'
    s.source          = { :git => 'https://github.com/oititec/ios-modules-3d.git', :tag => s.version.to_s }
    s.vendored_frameworks  = 'Framework/OILiveness3D.xcframework'
  
    s.dependency 'OICommonModules', '~> 1.0.0'
    s.dependency 'OILiveness3D_FT', '9.6.40'
  end