#!/bin/bash
#SBATCH --job-name=GPTQ-Auto
#SBATCH --output=falcon_p_q.out
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1 
#SBATCH --cpus-per-task=4 
#SBATCH --gres=gpu:1 
#SBATCH --time=1:00:00

source /lustre1/tier2/users/karnakar.reddy/miniconda3/bin/activate
conda activate mix_depths
# Load required modules module load module_name
pip install flash-attn
pip install  -e /lustre1/tier2/users/karnakar.reddy/projects_2024/AutoGPTQ
# Your job commands here python <your-script>
python examples/quantization/basic_usage_gpt_xl.py
 