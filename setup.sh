pip install torch
apt-get -y install aria2
apt-get -y install -qq aria2
git clone -b v1.3 https://github.com/camenduru/text-generation-webui
cd text-generation-webui
pip install -r requirements.txt
pip install -U gradio==3.28.3
mkdir repositories
cd repositories
git clone -b v1.2 https://github.com/camenduru/GPTQ-for-LLaMa.git
cd GPTQ-for-LLaMa
python setup_cuda.py install
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/4bit/Llama-2-7b-Chat-GPTQ/raw/main/config.json -d /text-generation-webui/models/Llama-2-7b-Chat-GPTQ -o config.json
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/4bit/Llama-2-7b-Chat-GPTQ/raw/main/generation_config.json -d /text-generation-webui/models/Llama-2-7b-Chat-GPTQ -o generation_config.json
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/4bit/Llama-2-7b-Chat-GPTQ/raw/main/special_tokens_map.json -d /text-generation-webui/models/Llama-2-7b-Chat-GPTQ -o special_tokens_map.json
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/4bit/Llama-2-7b-Chat-GPTQ/resolve/main/tokenizer.model -d /text-generation-webui/models/Llama-2-7b-Chat-GPTQ -o tokenizer.model
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/4bit/Llama-2-7b-Chat-GPTQ/raw/main/tokenizer_config.json -d /text-generation-webui/models/Llama-2-7b-Chat-GPTQ -o tokenizer_config.json
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/4bit/Llama-2-7b-Chat-GPTQ/resolve/main/gptq_model-4bit-128g.safetensors -d /text-generation-webui/models/Llama-2-7b-Chat-GPTQ -o gptq_model-4bit-128g.safetensors
