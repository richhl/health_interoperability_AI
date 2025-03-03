#!/bin/bash
python inference.py \
       --notes-path data/mimic-iv_notes_training_set.csv \
       --model-path-peft models/Mistral-7B-Instruct-v0.2-AddAnnotations-lora-v0.4 \
       --model-path-2-peft models/Mistral-7B-Instruct-v0.2-AddAnnotations-lora-v0.6 \
       --model-classification-path-peft models/Mistral-7B-Instruct-v0.2-Pescu-faiss-clasify-lora_2 \
       --faiss-index assets/faiss_index_constitution_all-MiniLM-L12-v2_finetuned \
       --terminologies assets/newdict_snomed_extended.txt \
       --annotations-path assets/train_annotations.csv

python remove-add-lists.py \
       backup/df_notes_v4_v6.gzip \
       assets/train_annotations.csv \
       submission.csv \
       sentence-transformers/all-MiniLM-L12-v2 \
       assets/faiss_index_constitution_all-MiniLM-L12-v2_finetuned \
       assets/newdict_snomed_extended.txt
