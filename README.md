# IBM Watson: Interface Text to Speech

A solução está divida em três partes e, consequentemente, três projetos distintos:

- [docker](https://github.com/ebragaparah/ibmwatson.tts.docker)
- [frontend](https://github.com/ebragaparah/ibmwatson.tts.frontend)
- [backend](https://github.com/ebragaparah/ibmwatson.tts.backend)

O projeto **docker** é a parte responsável por automatizar o processo de configuração dos ambientes.

O projeto **frontend** é um cliente escrito em React, usando hooks.

O projeto **backend** é a API que serve os comentários, escrita em Node.js, que roda em conjunto com um banco de dados MySQL, se comunica com a API do Watson, enviando textos para ela e entrega áudios para o navegador.

## Estrutura recomendada para rodar os projetos

A estrutura sugerida para tirar maior proveito de uma configuração praticamente invisível está representada abaixo, é preciso clonar os repositórios e organizá-los sob a seguinte estrutura:

```bash
+-- seu_diretorio   # <--- clone seus diretórios aqui
|   +-- backend
|   +-- docker
|   +-- frontend
```

Após a organização, vá para o diretório **docker**:

```bash
$ cd docker
```
e então:

```bash
$ make up
```

Este comando irá baixar as imagens do MySQL, Node.js, fazer o build e criar a ligação entre os contêineres. Vai levar mais ou menos uns 3 minutinhos. Então, dá tempo de pegar um café ou uma água.

## Criação de tabelas e dados iniciais

Rodar o `make up` vai travar a janela atual do Terminal e vai ser necessário abrir outra aba para executar os outros comandos. Vai lá, abre outra aba no mesmo diretório, **docker**.

Digite:

```bash
$ make migrate
```

Isso vai criar a tabela de *comentários* e já vai ser possível visualizar a aplicação no navegador através do endereço **http://localhost:3000**.

Existe uma *task* para popular o banco*, criando um comentário para que seja visualizado na tela. Ele é:

```bash
$ make seed
```

\*Este passo não e obigatório


\*Existem outras *tasks* úteis no arquivo Makefile deste diretório