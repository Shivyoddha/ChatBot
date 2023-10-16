import os

os.system('sh /setup.sh')  # Run setup script

import subprocess
subprocess.Popen(['python', '/app/text-generation-webui/server.py', '--share', '--chat', '--wbits', '4', '--groupsize', '128', '--model_type', 'llama'])
