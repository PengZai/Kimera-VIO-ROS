

DIR=."./output_logs/Euroc"

evo_traj euroc $DIR/traj_gt.csv --save_as_tum
mv traj_gt.tum $DIR/traj_gt.tum
evo_traj euroc $DIR/traj_pgo.csv --save_as_tum
mv traj_pgo.tum $DIR/traj_pgo.tum
evo_traj euroc $DIR/traj_vio.csv --save_as_tum
mv traj_vio.tum $DIR/traj_vio.tum
evo_rpe tum $DIR/traj_vio.tum $DIR/traj_gt.tum > $DIR/rpe_traj_vio_gt.log
evo_ape tum $DIR/traj_vio.tum $DIR/traj_gt.tum > $DIR/ape_traj_vio_gt.log

evo_traj tum $DIR/traj_vio.tum --ref=$DIR/traj_gt.tum -p --plot_mode=xz --save_plot $DIR/