# Code for pretraining HF (hyperparameters in config.py)
# CUDA_VISIBLE_DEVICES=0 python path_int.py --prefix hml_926 \

#------------------------

# Code for training PFC
# CUDA_VISIBLE_DEVICES=0 python train.py --prefix hml_926 \
# 	 --load_encoder hml_926_encoder/checkpoint_3385000 \
# 	 --load_hippo hml_926_hippo/checkpoint_3385000 \
# 	 --theta_hidden_size 32 --theta_fast_size 4 \
# 	 --noise_scale 0.5 --replay_steps 4 --bottleneck_size 4 --hippo_mem_len 5 --hidden_size 64 \

#------------------------

# Code for test and visualization
# collect data
# CUDA_VISIBLE_DEVICES='' python record.py --prefix hml_926 \
# 	 --theta_hidden_size 32 --theta_fast_size 4 \
# 	 --noise_scale 0.5 --replay_steps 4 --bottleneck_size 4 --hippo_mem_len 5 --hidden_size 64 \
# 	 --option eval_info_circularly --pseudo_reward_idx 1 --total_eval_steps 400 --n_agents 120 \
# 	 --eval_temperature 0.5 \
# 	 --info_type hist_phase --suffix switch \
# 	 --path_start_value 1 --path_mid_value 3 --path_goal_value 5 \
# 	 --zero_goal_idx --replay_interest --initkey 0 \
	#  --load_encoder hml_926_encoder/checkpoint_3385000 \
	#  --load_hippo hml_926_hippo/checkpoint_3385000 


# visualize spatial distribution of replay sequences
# CUDA_VISIBLE_DEVICES='' python record.py --prefix hml_926 \
# 	 --theta_hidden_size 32 --theta_fast_size 4 \
# 	 --noise_scale 0.5 --replay_steps 4 --bottleneck_size 4 --hippo_mem_len 5 --hidden_size 64 \
# 	 --option eval_replay_circularly --pseudo_reward_idx 1 --total_eval_steps 400 --n_agents 120 \
# 	 --eval_temperature 0.5 \
# 	 --info_type hist_phase --suffix switch \
# 	 --path_start_value 1 --path_mid_value 3 --path_goal_value 5 \
# 	 --zero_goal_idx --replay_interest --initkey 0 \
	#  --load_encoder hml_926_encoder/checkpoint_3385000 \
	#  --load_hippo hml_926_hippo/checkpoint_3385000 


