Pod::Spec.new do |s|
  s.name             =  'Acheron'
  s.version          =  '0.2.0'
  s.summary          =  'Joined forces of MKNetworkKit,JSONModel'
  s.homepage         =  'https://github.com/yanke_guo/Acheron'
  s.author           =  { 'YANKE Guo' => 'yanke.guo@icloud.com' }

  s.platform = :ios,'6.0'
  s.requires_arc      =  true

  s.subspec 'Log' do |sp|
    sp.source_files = 'Acheron/Log/*.{h,m}'
  end

  s.subspec 'Assert' do |sp|
    sp.source_files = 'Acheron/Assert/*.{h,m}'
    sp.dependency 'Acheron/Log'
  end

  s.subspec 'Common' do |sp|
    sp.source_files = 'Acheron/Common/*.{h,m}'
    sp.frameworks   = 'Security'
    sp.dependency 'Acheron/Log'
    sp.dependency 'Acheron/Assert'
  end

  s.subspec 'Network' do |sp|
    sp.source_files = 'Acheron/Network/*.{h,m}'
    sp.frameworks   = 'CFNetwork', 'Security', 'SystemConfiguration'
    sp.dependency 'Acheron/Common'
    sp.dependency 'Acheron/Model'
  end

  s.subspec 'Model' do |sp|
    sp.source_files = 'Acheron/Model/*.{h,m}'
    sp.frameworks = 'CoreData','SystemConfiguration'
    sp.dependency 'Acheron/Common'
  end

  s.subspec 'UI' do |sp|
    sp.source_files = 'Acheron/UI/*.{h,m}'
  end

end
