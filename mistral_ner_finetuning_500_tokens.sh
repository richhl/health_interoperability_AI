#!/bin/bash
python Finetuning-Entity-Recognition.py \
       data/mimic-iv_notes_training_set.csv \
       assets/train_annotations.csv \
       mistralai/Mistral-7B-Instruct-v0.2 \
       models/Mistral-7B-Instruct-v0.2-AddAnnotations-lora-v0.4/ \
       500 \
       400
