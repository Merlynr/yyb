#!/bin/bash
SCRIPT_DIR=$(dirname "$0")
PARENT_DIR="$(dirname "$SCRIPT_DIR")"
#
 根据运行环境选择文件路径
if [ "$ALIPAY_APP_ENV" = "prod" ]; then
    PREDICTIONS_RESULT_FILE="/home/admin/workspace/job/output/predictions/predictions.jsonl"
    DATASET_FILE="/home/admin/workspace/job/input/$TEST_FILE"
else
    PREDICTIONS_RESULT_FILE="${PARENT_DIR}/data/predictions.jsonl"
    DATASET_FILE="${PARENT_DIR}/data/$TEST_FILE"
fi
#
 执行预测代码
 ##
 可修改为任意实现
SCRIPT_DIR=$(dirname "$0")
chmod 777 "${SCRIPT_DIR}/predict_demo.py"
python "${SCRIPT_DIR}/predict_demo.py" \
    --data_path "$DATASET_FILE" \
    --output_path "$PREDICTIONS_RESULT_FILE"