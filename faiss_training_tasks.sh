#!/bin/bash
python faiss_db_preparation.py \
       --notes-path data/mimic-iv_notes_training_set.csv \
       --annotations-path assets/train_annotations.csv \
       --terminologies-path assets/dataflattened_terminology.csv \
       --terminologies-path-syn assets/newdict_snomed.txt \
       --terminologies-path-syn-extended assets/newdict_snomed_extended.txt \
       --model-id mistralai/Mistral-7B-Instruct-v0.2 \
       --model-path-faiss sentence-transformers/all-MiniLM-L12-v2 \
       --faiss-index assets/faiss_index_constitution_all-MiniLM-L12-v2_finetuned

python faiss_db_preparation.py \
       --notes-path data/mimic-iv_notes_training_set.csv \
       --annotations-path assets/train_annotations.csv \
       --terminologies-path assets/dataflattened_terminology.csv \
       --terminologies-path-syn assets/newdict_snomed.txt \
       --terminologies-path-syn-extended assets/newdict_snomed_extended-150.txt \
       --model-id mistralai/Mistral-7B-Instruct-v0.2 \
       --model-path-faiss sentence-transformers/all-MiniLM-L12-v2 \
       --faiss-index assets/faiss_index_constitution_all-MiniLM-L12-v2_finetuned-150 \
       --nr-of-notes 150

python faiss_classification_data_preparation.py \
       data/mimic-iv_notes_training_set.csv \
       assets/train_annotations.csv \
       assets/newdict_snomed_extended-150.txt \
       assets/faiss_index_constitution_all-MiniLM-L12-v2_finetuned-150 \
       backup/annotations_extended_for_classification.gzip \
       mistralai/Mistral-7B-Instruct-v0.2 \
       sentence-transformers/all-MiniLM-L12-v2
