log_file=log_test.txt
echo 'train!'
python main.py --gpus=1 --model_choice=use_img_clip --max_image_id=307 \
    --fix_text=false --fix_img=true --train_data_path=./data/train_pair.json --train_batch_size=8 \
    --add_emotion_task=false --add_predict_context_task=false --add_predict_img_label_task=false --add_ocr_info=false \
    --img_lr=5e-7 --other_lr=9e-6 --sent_num=0 --gradient_accumulation_steps=1 2>&1 | tee $log_file
