@echo off
REM generate perturbations for each object (for each 'ModelNet40/[category]/test/*')

REM for output
SET OUTDIR=/results/gt
mkdir %OUTDIR%

REM Python3 command
SET PY3="python"

REM categories for testing
SET CMN="-i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation"
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_01.csv --mag 0.1
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_02.csv --mag 0.2
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_03.csv --mag 0.3
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_04.csv --mag 0.4
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_05.csv --mag 0.5
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_06.csv --mag 0.6
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_07.csv --mag 0.7
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_08.csv --mag 0.8
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_09.csv --mag 0.9
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_10.csv --mag 1.0
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_11.csv --mag 1.1
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_12.csv --mag 1.2
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_13.csv --mag 1.3
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_14.csv --mag 1.4
python ./generate_perturbations.py -i ./dataset/PointCloudSet -c ./sampledata/pointcloud.txt --no-translation -o ./results/gt/pert_15.csv --mag 1.5

REM EOF
