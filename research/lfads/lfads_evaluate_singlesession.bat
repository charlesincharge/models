SET SESSION_DATE=%1
SET FACTORS_DIM=%2
SET GEN_DIM=%3
SET IC_DIM=%4
SET BATCH_SIZE=%5
SET WEIGHT_INCREASE_STEPS=%6
SET KEEP_PROB=%7
SET IC_ENC_DIM=%8
SET DEVICE=%9

SHIFT
SET L2_COST=%9

set START=%TIME%
echo Start TIME %START%

set LFADS_SAVE_DIR=C:\Users\hst\Documents\cguan\LFADS_results\\FingerTapping_singlesession_%SESSION_DATE%_no_inputs_F%FACTORS_DIM%_N%GEN_DIM%_ICD%IC_DIM%_ICED%IC_ENC_DIM%_BS%BATCH_SIZE%_WIS%WEIGHT_INCREASE_STEPS%_KP%KEEP_PROB%_LTWO%L2_COST%

python run_lfads.py --kind=posterior_sample_and_average ^
--data_dir=Y:\Users\Charles\LFADS_data ^
--data_filename_stem=FingerTappingNeuralData_%SESSION_DATE% ^
--lfads_save_dir=%LFADS_SAVE_DIR% ^
--co_dim=0 ^
--controller_input_lag=1 ^
--con_dim=128 ^
--factors_dim=%FACTORS_DIM% ^
--output_dist=poisson ^
--batch_size=%BATCH_SIZE% ^
--learning_rate_init=0.01 ^
--learning_rate_decay_factor=0.95 ^
--learning_rate_stop=0.0001 ^
--keep_prob=%KEEP_PROB% ^
--gen_dim=%GEN_DIM% ^
--ci_enc_dim=128 ^
--ic_dim=%IC_DIM% ^
--ic_enc_dim=%IC_ENC_DIM% ^
--gen_cell_input_weight_scale=1.0 ^
--cell_weight_scale=1.0 ^
--do_feed_factors_to_controller=true ^
--kl_start_step=0 ^
--kl_increase_steps=%WEIGHT_INCREASE_STEPS% ^
--kl_ic_weight=1 ^
--l2_con_scale=%L2_COST% ^
--l2_gen_scale=%L2_COST% ^
--l2_increase_steps=%WEIGHT_INCREASE_STEPS% ^
--kl_co_weight=1.0 ^
--max_ckpt_to_kscale=0.1 ^
--feedback_factors_or_rates=factors ^
--max_grad_norm=300.0 ^
--device=%DEVICE%:0 ^
--temporal_spike_jitter_width=0 ^
--checkpoint_pb_load_name=checkpoint ^
--gen_cell_rec_weight_scale=1.0 ^

set END=%TIME%

echo Start time: %START%, End time: %END%
