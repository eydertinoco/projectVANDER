
# Resumos Git e Github

## 📚 Documentação
 - [Documentação Git](https://git-scw.com/doc)
 - [Documetação Github](https://docs.github.com)

## 📊 TABELAS
### 👨🏻‍💻 Comandos Git
|                         Comando                           |                                   Descrição                                  |
|-----------------------------------------------------------|------------------------------------------------------------------------------|
| `git init`                                                | Inicia um novo repositório Git                                               |
| `git clone URL`                                           | Clona um repositório para o diretório ativo                                  | 
| `touch nome_arquivo.extensão OU touch nome_pasta/arquivo` | Cria um arquivo o diretório ativo                                            |
| `git status`                                              | Verifica o estado do repositório, se possui arquivos Untracked, entre outros |
| `git add . OU git add arquivo`                            | Adiciona o(s) arquivos(s) no Stage (para serem commitados)                   |
| `git commit -m "mensagem" `                               | Dá commit a todos os arquivos no Stage para o repositório                    |
| `echo resumos/ > .gitignore`                              | Adiciona pastas/arquivos ao .gitignore                                       |
| `git log`                                                 | Mostra todos os commits feitos                                               |
| `rm -rf .git`                                             | Remove o arquivo .git, tornando a pasta normal e não um repositório git      |
| `clear OU CTR + L`                                        | Limpa a tela do git                                                          |
| `git restore arquivo`                                     | Restaura o arquivo para a versão commitada                                   |
| `git commit --amend -m "nova mensagem"`                   | Atualiza o último commit feita com a nova mensagem                           |
| `git reset --soft OU --mixed OU --hard hash do commit`    | (--soft): Irá desfazer os commit até o commit da hash selecionado, adicionando os arquivos commitados para a área Staged. <br>(--mixed):  Forma padrão do reset, adicionando os arquivos na área de Untracked e retornando ao commit da hash selecionada. <br> (--hard): Apaga todos os arquivos e retorna ao commit da hash selecionada.                                                                                                                               |
| `git reflog`                                              | Log de atualizações mais detalhado que o git log                             |
| `git reset arquivo`                                       | Retira o arquivo do Staged para Untracked.                                   |
| `git restore --staged arquivo`                            | Retira o arquivo do Staged.                                                  |
| `git push -u origin main`                                 | Envia as alterações do repositório local para o reposistório remoto          |
| `git pull`                                                | Puxa as alterações do repositório remoto para o repositório local            |

### 🌲 Branchs
|            Comando            |                           Descrição                              |
|-------------------------------|------------------------------------------------------------------|
| `git checkout -b nome_branch` | Cria e altera a branch atual para a branch criada                |
| `git checkout nome_branch`    | Altera para a branch citada                                      |
| `git branch -v`               | Lista o último commit de cada branch                             |
| `git merge nome_branch`       | Mescla o conteúdo da branch selecionada com a main               |
| `git branch`                  | Lista todas as branchs no repositório. O * indica a branch atual |
| `git branch -d nome_branch`   | Exclui a branch selecionada                                      |

## Convenção de Commits 

| Tipo de Commit | Descrição                                                            | Exemplo
| ---------------|----------------------------------------------------------------------|-----------
| `feat`         | Adiciona uma nova funcionalidade ao projeto.                         | `feat: add USENAME.md profile`
| `fix`          | Corrige um bug ou problema no projeto.                               | `fix: fixed issue fix#IssueNumber`
| `docs`         | Altera a documentação do projeto.                                    | `docs: update README.md`
| `style`        | Realiza mudanças na aparência, sem alterar a funcionalidade.         | `style: add EFFECTNAME to COMPONENT`
| `refactor`     | Realiza mudanças no código que não alteram a funcionalidade.         | `refactor: refactor at CLASSNAME`
| `test`         | Adiciona ou modifica testes no projeto.                              | `test: add unit test for UserService`

## 🔍 Referências
 - [Git](https://comandosgit.github.io/)

## 🔗 Links úteis
 - [Pro Git Book](https://git-scm.com/book/en/v2)
 - [Markdown Github](https://docs.github.com/pt/get-started/writing-on-github)
 - [Git IA](https://gitfluence.com/)
 - [Criar próprio Octocat](https://myoctocat.com/)
 - [Github Pages](https://docs.github.com/en/pages/getting-started-with-github-pages)


