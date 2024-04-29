image1=1
image2=2
GPU=5
image_size=512
maxError=1e-04
formatted_maxError=$(printf "%.0e" $maxError)
picType="Shapes"
truncation_thresh=1e-4
formatted_truncation_thresh=$(printf "%.0e" $maxError)
summary_file="SparseSK_image${image1}to${image2}_Error${formatted_maxError}_Resolution${image_size}_TruncationThresh${formatted_truncation_thresh}_summary.txt"
# 清空文件，以确保开始时文件是空的
> "${summary_file}"

for picType in "WhiteNoise" "GRFrough" "GRFmoderate" "GRFsmooth" "LogGRF" "LogitGRF" "CauchyDensity" "Shapes" "ClassicImages" "MicroscopyImages" 
# for picType in "Shapes"
do 
    build_command="cmake .. && make"
    run_command="./SparseSK ${image_size} ${GPU} ${picType} ${image1} ${image2} ${formatted_maxError} ${formatted_truncation_thresh}"
    log_file="run_SparseSK.log"
    eval ${build_command}
    if [ $? -ne 0 ]; then
        echo "Build failed"
        exit 1
    fi

    echo ${run_command}
    eval ${run_command}
    wait $!

    # echo "Command to run: ${run_command}"
    # echo "Output will be logged to: ${log_file}"
    # nohup ${run_command} > ${log_file} 2>&1 &
    # echo "Command is running in the background."
    # wait $!
    current_filename="sinkhorn_${image_size}_${GPU}_${picType}_${image1}_${image2}_${formatted_maxError}_${formatted_truncation_thresh}.txt"
    # 检查文件是否存在
    if [ -f "${current_filename}" ]; then
        # 获取文件的第一行并尝试提取结果数字
        result_line=$(sed -n '1p' "${current_filename}")
        result_number=$(echo $result_line | grep -oP '\d+(\.\d+)?')
        echo "Result: $result_number"
        # 检查提取的结果是否为整数
        if [[ $result_number =~ ^-?[0-9]+$ ]]; then
            echo "——" >> "${summary_file}"
        else
            # 读取文件的第二行并提取时间值
            time_line=$(sed -n '2p' "${current_filename}")
            time_value=$(echo "$time_line" | grep -oP '(?<=Time: )[\d\.]+')
            echo "$time_value" >> "${summary_file}"
        fi
    else
        echo "File not found: ${current_filename}"
    fi
    echo "Summary file updated: ${summary_file}"
    
done

# line="Result: 10001, Time: 0.021042"
# number=$(echo $line | sed -n 's/.*Result: \([0-9]*\).*/\1/p')
# echo $number

# line="Result: 10001, Time: 0.021042"
# numbers=$(echo $line | grep -oP '\d+(\.\d+)?')
# echo $numbers

# line="Result: 10001, Time: 0.021042"
# number=$(echo $line | awk '{ for(i=1; i<=NF; i++) if ($i ~ /^[0-9]+(\.[0-9]+)?$/) print $i }')
# echo $number


