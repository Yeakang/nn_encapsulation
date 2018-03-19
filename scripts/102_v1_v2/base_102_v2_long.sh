#!/bin/bash

start=`date +%s`

# train and test
DEVICE_ID=3
CUDA_VISIBLE_DEVICES=$DEVICE_ID python holly_capsule.py \
--device_id=$DEVICE_ID \
--experiment_name=base_102_v2_long \
--connect_detail=all \
--cap_N=5 \
--cap_model=v2 \
--debug_mode=False \
--less_data_aug \
--max_epoch=600 \
--loss_form=margin \
--optim=adam \
--schedule 200 300 400 \
--lr=0.0001 \
--batch_size_train=128 \
--batch_size_test=128 \
--s35


end=`date +%s`
runtime=$((end-start))

echo "Completed in" $runtime "seconds"