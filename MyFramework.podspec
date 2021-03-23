Pod::Spec.new do |s|
    s.name         = "MyFramework"
    s.version      = "1.0.2"
    s.summary      = "A brief description of MyFramework project."
    s.description  = <<-DESC
    An extended description of MyFramework project.
    DESC
    s.homepage     = "http://your.homepage/here"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :git => "https://github.com/smileidentity/ios_sdk.git", :tag => "#{s.version}" }
   s.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64 i386 armv7",
                              "EXCLUDED_ARCHS[sdk=iphoneos*]" => "armv7" }
    s.vendored_frameworks = "MyFramework.xcframework"
    s.platform = :ios
    s.swift_version = "4.2"
    s.dependency "GoogleMLKit/FaceDetection"
    s.ios.deployment_target  = '12.0'
end