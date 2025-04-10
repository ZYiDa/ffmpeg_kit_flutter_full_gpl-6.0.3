Pod::Spec.new do |s|
  s.name             = 'ffmpeg_kit_flutter'
  s.version          = '6.0.3'
  s.summary          = 'FFmpeg Kit for Flutter'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
  s.homepage         = 'https://github.com/QuangThuanDinh304/ffmpeg_kit_flutter_full_gpl-6.0.3'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'QuangThuanDinh304' => 'you@example.com' }

  s.platform            = :ios, '12.1'
  s.requires_arc        = true
  s.static_framework    = true

  s.source              = { :path => '.' }
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
