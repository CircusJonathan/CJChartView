Pod::Spec.new do |s|

    s.name         = 'CJChartView'
    
    # 库的版本
    s.version      = '1.1.3'
    
    # 库摘要
    s.summary      = '简单易用的统计图表(包括：扇形图、南丁格尔玫瑰图、仿网易云音乐进度条、柱状图、折线图。。。)'

    # 库描述
    s.description  = <<-DESC
                简单易用的统计图表(包括：扇形图、南丁格尔玫瑰图、仿网易云音乐进度条、柱状图、折线图。。。)
                提供方便用户集成使用的统计图表绘制
                持续更新中。。。
                    DESC

    s.homepage     = 'https://github.com/elkshrek/CJChartView'

    s.license      = 'MIT'
    s.author       = { 'Jonathan' => 'Jonathan_dk@163.com' }

    # 下载地址
    s.source       = { :git => "https://github.com/elkshrek/CJChartView.git", :tag => "#{s.version}" }
    s.requires_arc = true
    s.platform     = :ios, '9.0'
    
    s.public_header_files = 'CJChartView/CJChartHeader.h'
    s.source_files = 'CJChartView/CJChartHeader.h'
    
    s.subspec 'ChartView' do |cvs|
        cvs.source_files = 'CJChartView/ChartView/**/*.{h,m}'
        cvs.public_header_files = 'CJChartView/ChartView/**/*.h'
    end
    
    s.subspec 'PieChart' do |pcs|
        pcs.source_files = 'CJChartView/PieChart/CJPieView.{h,m}'
        pcs.public_header_files = 'CJChartView/PieChart/CJPieView.h'
    end
    
    s.subspec 'PieChartView' do |pcv|
        pcv.dependency 'CJChartView/ChartView'
        pcv.dependency 'CJChartView/PieChart'
        pcv.source_files = 'CJChartView/PieChart/PieChartView/**/*.{h,m}'
        pcv.public_header_files = 'CJChartView/PieChart/PieChartView/**/*.h'
        pcv.ios.frameworks = 'Foundation', 'UIKit'
    end
    
    s.subspec 'RoseChartView' do |rcv|
        rcv.dependency 'CJChartView/ChartView'
        rcv.dependency 'CJChartView/PieChart'
        rcv.source_files = 'CJChartView/PieChart/RoseChartView/**/*.{h,m}'
        rcv.public_header_files = 'CJChartView/PieChart/RoseChartView/**/*.h'
        rcv.ios.frameworks = 'Foundation', 'UIKit'
    end
    
    s.subspec 'ProgressChartView' do |pvs|
        pvs.dependency 'CJChartView/ChartView'
        pvs.source_files = 'CJChartView/ProgressChartView/**/*.{h,m}'
        pvs.public_header_files = 'CJChartView/ProgressChartView/**/*.h'
        pvs.ios.frameworks = 'Foundation', 'UIKit'
    end
    
    s.subspec 'LineChartView' do |lvs|
        lvs.dependency 'CJChartView/ChartView'
        lvs.source_files = 'CJChartView/LineChartView/**/*.{h,m}'
        lvs.public_header_files = 'CJChartView/LineChartView/**/*.h'
        lvs.ios.frameworks = 'Foundation', 'UIKit'
    end

end
