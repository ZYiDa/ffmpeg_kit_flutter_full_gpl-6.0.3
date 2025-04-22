Pod::Spec.new do |s|
  s.name             = 'ffmpeg_kit_flutter_full_gpl'
  s.version          = '6.0.3'
  s.summary          = 'FFmpeg Kit for Flutter'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
  s.homepage         = 'https://github.com/ZYiDa/ffmpeg_kit_flutter_full_gpl-6.0.3'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ZYiDa' => '468466882@qq.com' }

  s.platform            = :ios, '13.0'
  s.requires_arc        = true
  s.static_framework    = true

  s.license = { :type => 'MIT', :file => '../LICENSE' }
  
  s.source           = {
    :git => 'https://github.com/ZYiDa/ffmpeg_kit_flutter_full_gpl.git',
    :tag => s.version.to_s
  }

  s.source_files        = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'

  s.dependency          'Flutter'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  # ✅ Chỉ sử dụng .xcframework build tay
  s.vendored_frameworks = 'Frameworks/ffmpeg-kit.xcframework'
end
