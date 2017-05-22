#
# Be sure to run `pod lib lint WechatSDk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "QqcAliPaySDK"
s.version          = "15.1.3"
s.summary          = "Alipay iOS SDK."
s.homepage         = "https://github.com/xukiki/QqcAliPaySDK"
s.license          = { :type => 'LGPL', :text => <<-LICENSE
                        ® 1998 - 2017 Ali All Rights Reserved.
                        LICENSE
                     }
s.author           = { "xukiki" => "20599378@qq.com" }
s.source           = { :git => "https://github.com/xukiki/QqcAliPaySDK.git", :tag => "#{s.version}" }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'QqcAliPaySDK/*.{h,m}'

s.subspec 'openssl' do |sp|
    sp.source_files = "QqcAliPaySDK/openssl/*.h"
end

s.subspec 'Util' do |sp|
	sp.source_files = "QqcAliPaySDK/Util/*.{h,m}"
end

s.subspec 'sdk' do |sp|
	sp.vendored_libraries = 'QqcAliPaySDK/sdk/libcrypto.a','QqcAliPaySDK/sdk/libssl.a'
    sp.vendored_frameworks = 'QqcAliPaySDK/sdk/AlipaySDK.framework'
    sp.resource = 'QqcAliPaySDK/sdk/AlipaySDK.bundle'
end

s.subspec 'order' do |sp|
	sp.source_files = "QqcAliPaySDK/order/*.{h,m}"
end

s.frameworks = 'SystemConfiguration','CoreTelephony','QuartzCore','CoreText','CoreGraphics','CFNetwork','CoreMotion','Foundation','UIKit'
s.library = 'z','c++'

end
