@echo off
REM for output
SET OUTDIR=./results/ex1/plk
If not exist %OUTDIR% mkdir %OUTDIR%

REM Python3 command
SET PY3="python"

REM categories for testing and the trained model
SET MODEL=./results/ex1/ex1_pointlk_1122_model_best.pth
SET CMN="-i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL%"

REM perturbations
SET PERDIR=./results/ex1/gt

REM test PointNet-LK with given perturbations (see. 'ex1_genrot.sh' for perturbations)
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_010.csv -p %PERDIR%/pert_00.csv -l %OUTDIR%/log_00.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_01.csv -l %OUTDIR%/log_01.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_010.csv -p %PERDIR%/pert_02.csv -l %OUTDIR%/log_02.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_03.csv -l %OUTDIR%/log_03.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_010.csv -p %PERDIR%/pert_04.csv -l %OUTDIR%/log_04.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_05.csv -l %OUTDIR%/log_05.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_010.csv -p %PERDIR%/pert_06.csv -l %OUTDIR%/log_06.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_07.csv -l %OUTDIR%/log_07.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_010.csv -p %PERDIR%/pert_08.csv -l %OUTDIR%/log_08.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_09.csv -l %OUTDIR%/log_09.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_10.csv -l %OUTDIR%/log_10.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_11.csv -l %OUTDIR%/log_11.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_12.csv -l %OUTDIR%/log_12.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_13.csv -l %OUTDIR%/log_13.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_14.csv -l %OUTDIR%/log_14.log
%PY3% test_mydata.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --format wt --pretrained %MODEL% -o %OUTDIR%/result_000.csv -p %PERDIR%/pert_15.csv -l %OUTDIR%/log_15.log

REM EOF
