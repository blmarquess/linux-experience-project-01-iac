# linux-experience-project-01

## Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões


### Controle de versão

O controle de versão é uma parte importante da IaC. Os arquivos de configuração devem pertencer à fonte como qualquer outro código-fonte de software. Ao implantar a infraestrutura como código, também é possível separá-la em módulos, que podem ser combinados de diferentes maneiras por meio da automação.

## Definições

- Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
- Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
- Subir arquivo de script criado para a sua conta no GitHub.


![imagem do organograma](https://github.com/blmarquess/linux-experience-project-01/blob/c5b8b018425e7b83749e0a7933b57ea0fe460d49/Captura%20de%20Tela%202022-08-15%20a%CC%80s%2023.31.48.png)
