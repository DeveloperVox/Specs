Pod::Spec.new do |m|

  m.name    = 'MapBox'
  m.version = '0.5.1'

  m.summary     = 'Open source alternative to MapKit.'
  m.description = 'Open source alternative to MapKit supporting custom tile sources, offline use, and complete cache control.'
  m.homepage    = 'http://mapbox.com/mobile'
  m.license     = 'BSD'
  m.author      = { 'MapBox' => 'ios@mapbox.com' }

  m.source = { :git => 'https://github.com/mapbox/mapbox-ios-sdk.git', :tag => '0.5.1' }

  m.platform = :ios, '5.0'

  m.source_files = 'Proj4/*.h', 'MapView/Map/*.{h,c,m}'

  m.prefix_header_file = 'MapView/MapView_Prefix.pch'

  m.documentation = {
    :html => 'http://mapbox.com/mapbox-ios-sdk/api/',
    :appledoc => [
      '--project-company', 'MapBox',
      '--docset-copyright', 'MapBox',
      '--no-keep-undocumented-objects',
      '--no-keep-undocumented-members',
      '--ignore', '.c',
      '--ignore', '.m',
      '--ignore', 'Proj4',
      '--ignore', 'RMAttributionViewController.h',
      '--ignore', 'RMBingSource.h',
      '--ignore', 'RMConfiguration.h',
      '--ignore', 'RMCoordinateGridSource.h',
      '--ignore', 'RMDBMapSource.h',
      '--ignore', 'RMFoundation.h',
      '--ignore', 'RMFractalTileProjection.h',
      '--ignore', 'RMGenericMapSource.h',
      '--ignore', 'RMGlobalConstants.h',
      '--ignore', 'RMLoadingTileView.h',
      '--ignore', 'RMMapOverlayView.h',
      '--ignore', 'RMMapQuestOpenAerialSource.h',
      '--ignore', 'RMMapQuestOSMSource.h',
      '--ignore', 'RMMapScrollView.h',
      '--ignore', 'RMMapTiledLayerView.h',
      '--ignore', 'RMNotifications.h',
      '--ignore', 'RMOpenCycleMapSource.h',
      '--ignore', 'RMOpenSeaMapLayer.h',
      '--ignore', 'RMOpenSeaMapSource.h',
      '--ignore', 'RMPixel.h',
      '--ignore', 'RMProjection.h',
      '--ignore', 'RMTile.h',
      '--ignore', 'RMTileImage.h',
      '--ignore', 'RMTileSourcesContainer.h',
    ]
  }

  m.framework = 'CoreGraphics'
  m.framework = 'CoreLocation'
  m.framework = 'Foundation'
  m.framework = 'QuartzCore'
  m.framework = 'UIKit'

  m.library = 'Proj4'
  m.library = 'sqlite3'
  m.library = 'z'

  m.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC', 'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/MapBox/Proj4"' }

  m.preserve_paths = 'Proj4/libProj4.a', 'MapView/MapView.xcodeproj', 'MapView/Map/Resources'

  m.dependency 'FMDB', '2.0'
  m.dependency 'GRMustache', '5.4.3'
  m.dependency 'SMCalloutView', '1.0.1'

  m.requires_arc = false

  m.prepare_command = 'echo "This Pod relies on the removed \`pre_install\` or \`post_install\` hooks and therefore will no longer continue to work. Please try updating to the latest version of this Pod or updating the Pod specification. See http://blog.cocoapods.org/CocoaPods-Trunk/ for more details." && exit 1'
end
