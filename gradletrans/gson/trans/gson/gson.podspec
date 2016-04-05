Pod::Spec.new do |s|

s.name = 'gson'
s.version = '2.6.2'
s.summary = 'Gson lib (J2OBJC)'

s.description = <<-DESC
Java Gson library transpiled with J2OBJC
DESC

s.license = { :type => 'BSD', :file => 'LICENSE' }

s.platform = :ios, '8.0'
s.source_files = 'build/j2objcOutputs/src/main/objc/**/*.{h,m}'
s.public_header_files = 'build/j2objcOutputs/src/main/objc/**/*.h'
s.header_mappings_dir = 'build/j2objcOutputs/src/main/objc'

#s.preserve_paths = 'build/j2objcOutputs/lib/iosDebug/libgson-j2objc.a'
#s.ios.vendored_library = 'build/j2objcOutputs/lib/iosDebug/libgson-j2objc.a'

#s.libraries = 'stdc++', 'Calculator'
s.requires_arc = true

  s.libraries = 'ObjC', 'guava', 'javax_inject', 'jre_emul', 'jsr305', 'z', 'icucore'
  #spec.source_files  = 'ios', 'src/main/objc/**/*.{h,m}'
  # s.exclude_files = 'Classes/Exclude'

  #spec.public_header_files = 'src/main/objc/**/*.h'
  #spec.header_mappings_dir = 'src/main/objc'

end