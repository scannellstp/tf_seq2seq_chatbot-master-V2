#!/usr/bin/env bash

# create and own the directories to store results locally
save_dir='/var/lib/tf_seq2seq_chatbot'
mkdir -p $save_dir'/data/'
mkdir -p $save_dir'/nn_models/'
mkdir -p $save_dir'/results/'
chown -R "$USER" $save_dir

# copy train and test data with proper naming
data_dir='./tf_seq2seq_chatbot-master/tf_seq2seq_chatbot/data/train'
cp $data_dir'/movie_lines_selected.txt' $save_dir'/data/chat.in'
cp $data_dir'/movie_lines_selected_10k.txt' $save_dir'/data/chat_test.in'
