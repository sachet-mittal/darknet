rm -rf esesc_*

cp simu.conf.apache_orig simu.conf.apache
ESESC_ReportFile=darknet_report_original ESESC_BenchName='darknet nightmare cfg/vgg-conv.cfg cfg/vgg-conv.weights data/scream.jpg 17  -range 3 -iters 2  -rounds 4' ../../main/esesc

cp simu.conf.apache_modifed simu.conf.apache
ESESC_ReportFile=darknet_report_modified ESESC_BenchName='darknet nightmare cfg/vgg-conv.cfg cfg/vgg-conv.weights data/scream.jpg 17  -range 3 -iters 2  -rounds 4' ../../main/esesc

echo "Original Report"
../scripts/report.pl esesc_darknet_report_original*

echo "Modified  Report"
../scripts/report.pl esesc_darknet_report_modified*


