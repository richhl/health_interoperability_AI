#!/bin/bash
python Finetuning-Classification.py \
       backup/annotations_extended_for_classification.gzip \
       mistralai/Mistral-7B-Instruct-v0.2 \
       models/Mistral-7B-Instruct-v0.2-Pescu-faiss-clasify-lora_2/
