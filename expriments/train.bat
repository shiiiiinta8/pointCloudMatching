@echo off
rem for output
If not exist results mkdir results

rem 「date」から切り出した数字をそれぞれ変数に代入
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%

set date2=%month%%day%

rem echo %date2%

rem train PointNet-LK. fine-tune the PointNet feature for classification (the above file).
python ptlk_trans.py ^
    -o ./results/ex1_pointlk_%date2% ^
    -i ./dataset/ModelNet40 ^
    -c ./sampledata/modelnet40_half1.txt ^
    -l ./results/ex1_pointlk_%date2%.log ^
    --transfer-from results/ex1_classifier_%date2%_feat_best.pth ^
    --epochs 200