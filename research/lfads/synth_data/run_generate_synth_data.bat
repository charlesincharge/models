REM Derived from run_generate_synth_data.sh 

SYNTH_PATH=%TEMP%\rnn_synth_data_v1.0\

 echo "Generating chaotic rnn data with no input pulses (g=1.5) with spiking noise"
 python generate_chaotic_rnn_data.py --save_dir=%SYNTH_PATH% --datafile_name=chaotic_rnn_no_inputs --synth_data_seed=5 --T=1.0 --C=400 --N=50 --S=50 --train_percentage=0.8 --nreplications=10 --g=1.5 --x0_std=1.0 --tau=0.025 --dt=0.01 --input_magnitude=0.0 --max_firing_rate=30.0 --noise_type='poisson'

echo "Generating chaotic rnn data with no input pulses (g=1.5) with Gaussian noise"
python generate_chaotic_rnn_data.py --save_dir=%SYNTH_PATH% --datafile_name=gaussian_chaotic_rnn_no_inputs --synth_data_seed=5 --T=1.0 --C=400 --N=50 --S=50 --train_percentage=0.8 --nreplications=10 --g=1.5 --x0_std=1.0 --tau=0.025 --dt=0.01 --input_magnitude=0.0 --max_firing_rate=30.0 --noise_type='gaussian'

 echo "Generating chaotic rnn data with input pulses (g=1.5)"
 python generate_chaotic_rnn_data.py --save_dir=%SYNTH_PATH% --datafile_name=chaotic_rnn_inputs_g1p5 --synth_data_seed=5 --T=1.0 --C=400 --N=50 --S=50 --train_percentage=0.8 --nreplications=10 --g=1.5 --x0_std=1.0 --tau=0.025 --dt=0.01 --input_magnitude=20.0 --max_firing_rate=30.0 --noise_type='poisson'

 echo "Generating chaotic rnn data with input pulses (g=2.5)"
 python generate_chaotic_rnn_data.py --save_dir=%SYNTH_PATH% --datafile_name=chaotic_rnn_inputs_g2p5 --synth_data_seed=5 --T=1.0 --C=400 --N=50 --S=50 --train_percentage=0.8 --nreplications=10 --g=2.5 --x0_std=1.0 --tau=0.025 --dt=0.01 --input_magnitude=20.0 --max_firing_rate=30.0 --noise_type='poisson'

 echo "Generate the multi-session RNN data (no multi-session synth example in paper)"
 python generate_chaotic_rnn_data.py --save_dir=%SYNTH_PATH% --datafile_name=chaotic_rnn_multisession --synth_data_seed=5 --T=1.0 --C=150 --N=100 --S=20 --npcs=10 --train_percentage=0.8 --nreplications=40 --g=1.5 --x0_std=1.0 --tau=0.025 --dt=0.01 --input_magnitude=0.0 --max_firing_rate=30.0 --noise_type='poisson'

 echo "Generating Integration-to-bound RNN data"
 python generate_itb_data.py --save_dir=%SYNTH_PATH% --datafile_name=itb_rnn --u_std=0.25 --checkpoint_path=SAMPLE_CHECKPOINT --synth_data_seed=5 --T=1.0 --C=800 --N=50 --train_percentage=0.8 --nreplications=5 --tau=0.025 --dt=0.01 --max_firing_rate=30.0

 echo "Generating chaotic rnn data with external input labels (no external input labels example in paper)"
 python generate_labeled_rnn_data.py --save_dir=%SYNTH_PATH% --datafile_name=chaotic_rnns_labeled --synth_data_seed=5 --T=1.0 --C=400 --N=50  --train_percentage=0.8 --nreplications=10 --g=1.5 --x0_std=1.0 --tau=0.025 --dt=0.01 --max_firing_rate=30.0
