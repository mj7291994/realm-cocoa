Pod::Spec.new do |s|
  # Info
  s.name                = 'RealmSwift'
  s.version             = `sh build.sh get-version`
  s.summary             = 'Realm is a modern data framework & database for iOS & OS X.'
  s.description         = <<-DESC
                          The Realm database, for Swift. (If you want to use Realm from Objective-C, see the “Realm” pod.)

                          Realm is a mobile database: a replacement for Core Data & SQLite. You can use it on iOS & OS X. Realm is not an ORM on top SQLite: instead it uses its own persistence engine, built for simplicity (& speed). Learn more and get help at https://realm.io
                          DESC
  s.homepage            = "https://realm.io"
  s.social_media_url    = 'https://twitter.com/realm'
  s.documentation_url   = "https://realm.io/docs/swift/#{s.version}"
  s.source              = { :git => 'https://github.com/realm/realm-cocoa-private.git', :tag => "v#{s.version}" }
  s.author              = { 'Realm' => 'help@realm.io' }
  s.license             = { :type => 'Apache 2.0', :file => 'LICENSE' }

  # Compilation
  s.dependency            'Realm', "= #{s.version}"
  s.source_files        = 'RealmSwift/*.swift'

  s.prepare_command     = 'sh build.sh set-swift-version'

  s.pod_target_xcconfig = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                            'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES' }

  # Platforms
  s.ios.deployment_target     = '8.0'
  s.osx.deployment_target     = '10.9'
  s.tvos.deployment_target    = '9.0'
  s.watchos.deployment_target = '2.0'
end
