import os

os.system('sh setup.sh')  # Run setup script

import subprocess
subprocess.Popen(['python', 'text-generation-webui-main/server.py', '--share', '--chat', '--wbits', '4', '--groupsize', '128', '--model_type', 'llama'])
