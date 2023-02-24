#! /bin/bash
indir='../Input/Scans'
outdir='../Output/Test1'

# Create list and configuration file
cmd="mrisnapshot_prep_data -i $indir -s _T1_DS.nii.gz -d $outdir --mask _T1_ICVMASK.nii.gz --olay _T1_ICVMASK.nii.gz --olay2 _T1_BRAINMASK.nii.gz"
echo "Running: $cmd"
$cmd

# Run MRISnaphot QC report creation
cmd="mrisnapshot_create_report -d $outdir"
echo "Running: $cmd"
$cmd

