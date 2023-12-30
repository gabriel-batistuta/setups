import re
import json
from os.path import dirname as up_dir
from pathlib import Path

zsh_path = str(Path.home()) + '/.zshrc'

directory_root = up_dir(up_dir(up_dir(__file__)))   
with open(f'{directory_root}/KEYS.json') as secret_file:
    json_object = json.load(secret_file)
    platform = json_object.get('platform')

if platform == 'x86_64':
    new_plugins = '''
    zsh-syntax-highlighting
    zsh-autosuggestions
    fzf
    '''
elif platform == 'Android':
    new_plugins = '''
    zsh-syntax-highlighting
    zsh-autosuggestions
    '''
else:
    exit()

# Ler o conteúdo do arquivo
with open(zsh_path, 'r') as file:
    content = file.read()

# Realizar a substituição apenas para arrays plugins não em comentários
pattern = r'^(?!#)(.*plugins=\([^\)]*)\)'
replacement = r'\1' + new_plugins + ')'
new_content = re.sub(pattern, replacement, content, flags=re.MULTILINE)

# Escrever o novo conteúdo de volta ao arquivo
with open(zsh_path, 'w') as file:
    file.write(new_content)
