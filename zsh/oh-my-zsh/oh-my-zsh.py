import re

file_path = '~/.zshrc'

# Itens a serem adicionados
new_plugins = '''
    zsh-syntax-highlighting
    zsh-autosuggestions
    fzf
'''

# Ler o conteúdo do arquivo
with open(file_path, 'r') as file:
    content = file.read()

# Realizar a substituição apenas para arrays plugins não em comentários
pattern = r'^(?!#)(.*plugins=\([^\)]*)\)'
replacement = r'\1' + new_plugins + ')'
new_content = re.sub(pattern, replacement, content, flags=re.MULTILINE)

# Escrever o novo conteúdo de volta ao arquivo
with open(file_path, 'w') as file:
    file.write(new_content)
