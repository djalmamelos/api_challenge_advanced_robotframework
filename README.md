

# GitHub API Advanced Automation 🧪

Este repositório contém um projeto de automação de testes avançados usando a API do GitHub. O objetivo dos testes é comentar e reagir em um post da Mayara Fernandes, instrutora do curso, no repositório dela. 

## Índice 📚

- [Introdução](#introdução)
- [Pré-requisitos](#pré-requisitos)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Como Executar os Testes](#como-executar-os-testes)
- [Casos de Teste](#casos-de-teste)
- [Contribuição](#contribuição)

## Introdução 🌟

Este projeto foi criado para demonstrar habilidades avançadas em automação de testes usando a API do GitHub. O foco dos testes é interagir com um post específico no repositório da Mayara Fernandes, que pode ser encontrado [aqui](https://api.github.com/repos/mayribeirofernandes/myudemyrobotframeworkcourse/issues).

## Pré-requisitos ✅

Antes de começar, você vai precisar ter o seguinte instalado em sua máquina:

- Python 3.x
- RobotFramework
- RequestsLibrary para RobotFramework

## Estrutura do Projeto 📁

```plaintext
github-api-advanced-automation/
├── tests/
│   ├── post_with_template.robot
│   ├── Challenge_Robot_API_Advanced.robot
├── variables/
│   ├── my_user_and_passwords.robot
├── results/
│   ├── log.html
│   ├── report.html
│   ├── output.xml
├── README.md
```

- **tests/**: Contém os arquivos de teste para os casos de teste definidos.
- **variables/**: Contém recursos reutilizáveis como keywords e variáveis.
- **results/**: Contém os relatórios gerados após a execução dos testes.

## Como Executar os Testes ▶️

Para executar todos os testes, use o seguinte comando no diretório raiz do projeto:

```sh
robot tests/
```

Os relatórios e logs de execução dos testes serão gerados na pasta `results/`.

## Casos de Teste 📝

### Postar um Comentário

Este teste verifica a funcionalidade de postar um comentário em um issue específico no repositório de Mayara Fernandes.

### Reagir a um Comentário

Este teste verifica a funcionalidade de reagir a um comentário em um issue específico no repositório de Mayara Fernandes.

## Contribuição 🤝

Contribuições são bem-vindas! Por favor, abra um problema ou envie um pull request para discutir mudanças que você gostaria de fazer.

