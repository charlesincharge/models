set START=%TIME%
echo Start TIME %START%

python run_lfads.py --kind=train ^
--data_dir=%TEMP%\rnn_synth_data_v1.0\ ^
--data_filename_stem=chaotic_rnn_no_inputs ^
--lfads_save_dir=%TEMP%\lfads_chaotic_rnn_no_inputs ^
--co_dim=0 ^
--factors_dim=20 ^
--ext_input_dim=0 ^
--controller_input_lag=1 ^
--output_dist=poisson ^
--do_causal_controller=false ^
--batch_size=128 ^
--learning_rate_init=0.01 ^
--learning_rate_stop=1e-05 ^
--learning_rate_decay_factor=0.95 ^
--learning_rate_n_to_compare=6 ^
--do_reset_learning_rate=false ^
--keep_prob=0.95 ^
--con_dim=128 ^
--gen_dim=200 ^
--ci_enc_dim=128 ^
--ic_dim=64 ^
--ic_enc_dim=128 ^
--ic_prior_var_min=0.1 ^
--gen_cell_input_weight_scale=1.0 ^
--cell_weight_scale=1.0 ^
--do_feed_factors_to_controller=true ^
--kl_start_step=0 ^
--kl_increase_steps=2000 ^
--kl_ic_weight=1.0 ^
--l2_con_scale=0.0 ^
--l2_gen_scale=2000.0 ^
--l2_start_step=0 ^
--l2_increase_steps=2000 ^
--ic_prior_var_scale=0.1 ^
--ic_post_var_min=0.0001 ^
--kl_co_weight=1.0 ^
--prior_ar_nvar=0.1 ^
--cell_clip_value=5.0 ^
--max_ckpt_to_keep_lve=5 ^
--do_train_prior_ar_atau=true ^
--co_prior_var_scale=0.1 ^
--csv_log=fitlog ^
--feedback_factors_or_rates=factors ^
--do_train_prior_ar_nvar=true ^
--max_grad_norm=200.0 ^
--device=gpu:0 ^
--num_steps_for_gen_ic=100000000 ^
--ps_nexamples_to_process=100000000 ^
--checkpoint_name=lfads_vae ^
--temporal_spike_jitter_width=0 ^
--checkpoint_pb_load_name=checkpoint ^
--inject_ext_input_to_gen=false ^
--co_mean_corr_scale=0.0 ^
--gen_cell_rec_weight_scale=1.0 ^
--max_ckpt_to_keep=5 ^
--output_filename_stem="" ^
--ic_prior_var_max=0.1 ^
--prior_ar_atau=10.0 ^
--do_train_io_only=false ^
--do_train_encoder_only=false

set END=%TIME%

echo Start time: %START%, End time: %END%