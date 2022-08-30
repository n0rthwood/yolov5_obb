conda env create
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
eval "$(conda shell.bash hook)" && conda activate yolov5_obb
cd $SCRIPT_DIR/
pwd

echo Current env : $CONDA_DEFAULT_ENV
echo Current env path : $CONDA_PREFIX

pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
pip install -r requirements.txt 

cd utils/nms_rotated
python setup.py develop

cd DOTA_devkit
sudo apt-get install swig
swig -c++ -python polyiou.i
python setup.py build_ext --inplace