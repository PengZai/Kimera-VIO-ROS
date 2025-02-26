
DATASET="BotanicGarden"
DIR="1005_07"
TEST_DIR="test_0"
SENSOR_TYPE="monocular_inertial"
ESITMATED_FOLDER="kimera_vio_${SENSOR_TYPE}_for_${DIR}_img10hz600p"
REFERENCE="${DIR}_GT_output.txt"

# cam
evo_rpe tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.txt ${DATASET}/$DIR/$REFERENCE --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_rpe_traj_vio > ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/rpe_${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.log
evo_ape tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.txt ${DATASET}/$DIR/$REFERENCE --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_ape_traj_vio > ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/ape_${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.log
evo_ape tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.txt ${DATASET}/$DIR/$REFERENCE --align --pose_relation trans_part --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_ate_traj_vio > ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/ate_${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.log


evo_traj tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.txt --ref=${DATASET}/$DIR/$REFERENCE -p --plot_mode=xyz --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/3d_traj_vio
evo_traj tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_vio_coordinate_aligned.txt --ref=${DATASET}/$DIR/$REFERENCE -p --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_traj_vio

# # keyframe
evo_rpe tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.txt ${DATASET}/$DIR/$REFERENCE --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_rpe_traj_pgo > ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/rpe_${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.log
evo_ape tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.txt ${DATASET}/$DIR/$REFERENCE --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_rpe_traj_pgo > ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/ape_${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.log
evo_ape tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.txt ${DATASET}/$DIR/$REFERENCE --align --pose_relation trans_part --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_rpe_traj_pgo > ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/ate_${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.log


evo_traj tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.txt --ref=${DATASET}/$DIR/$REFERENCE -p --plot_mode=xyz --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/3d_traj_pgo
evo_traj tum ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/${ESITMATED_FOLDER}_traj_pgo_coordinate_aligned.txt --ref=${DATASET}/$DIR/$REFERENCE -p --plot_mode=xy --save_plot ${DATASET}/$DIR/${ESITMATED_FOLDER}/${TEST_DIR}/2d_traj_pgo
