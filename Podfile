platform :ios, '9.0'
use_frameworks!
workspace 'PokeHunt.xcworkspace'

target 'PokeHunt' do
	pod 'SnapKit', '~> 0.15.0'
	pod 'GoogleMaps'
	pod 'R.swift'
    pod 'TOWebViewController'
    pod 'AppAuth', :path => 'LocalPods/AppAuth/'
    pod 'Alamofire'
    pod 'SSKeychain'
    pod 'Protobuf', '3.0.0-beta-4'
    pod 'OpenSSL', '1.0.208'
    pod 'SwiftTask'
    pod 'INTULocationManager'
end


abstract_target 'libSphere' do
    project 'S2Sphere/S2Sphere.xcodeproj'
    pod 'OpenSSL', '1.0.208'

    target 'S2SphereUtil' do
    end

    target 'S2SphereCellId' do
    end
end


target 'S2SphereAdapter' do
    pod 'OpenSSL', '1.0.208'
end


target 'POGOProto' do
    pod 'Protobuf', '3.0.0-beta-4'
end
