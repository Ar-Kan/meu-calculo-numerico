# Meu Cálculo Numérico

Um exemplo de livro escrito em Markdown, para ser convertido para HTML.

## Compilação

Para compilar o livro execute:

```bash
quarto render
```

## Como escrever o livro

Cada capítulo é um arquivo Markdown e, sempre que um novo capítulo for adicionado, deve ser
devidamente referenciado no arquivo `_quarto.yml`.

### Usar referências

As referências bibliográficas são armazenadas no arquivo `referencias.bib` e são referenciadas
no texto com o comando `[@press2007numerical]`.

Neste exemplo, a referência é feita à:

```bibtex
@book{press2007numerical,
    title = {Numerical recipes 3rd edition: The art of scientific computing},
    author = {Press, William H and Teukolsky, Saul A and Vetterling, William T and Flannery, Brian P},
    year = {2007},
    publisher = {Cambridge university press}
}
```

## Estilização

O Quarto, através do Bootstrap, oferece uma série de estilos para o texto. Dentre eles, blocos para chamar a atenção do leitor, como dicas, notas, alertas, etc.

 Utilização     | Classe            | Cor do bloco 
----------------|-------------------|--------------
 Bloco genérico | `callout`         | Cinza        
 Dica           | `callout-tip`     | Verde        
 Nota           | `callout-note`    | Azul         
 Alerta         | `callout-warning` | Amarelo      
 Atenção        | `callout-caution` | Laranja      
 Perigo         | `callout-danger`  | Vermelho     

### Enumeração de equações

As equações são numeradas automaticamente caso sejam escritas entre
`\begin{equation}` e `\end{equation}`, por exemplo

```
\begin{equation}
\int_1^2 e^{-x^2} dx
\end{equation}
```

#### Nota sobre equações

As equações não devem ser definidas entre `$$`, caso contrário, a numeração irá ser
diferente para estas equações.

### Observações

Para inserir exemplos de aplicações de métodos numéricos:

```markdown
::: {.callout-tip}

### Observação

Descrição da observação.
:::
```

### Exemplos e exercícios resolvidos

Para inserir exemplos de aplicações de métodos numéricos:

```markdown
::: {.callout-note}

### Exemplo

Descrição do exemplo.
:::
```

### Exercícios propostos

Para inserir exercícios propostos deve ser feito o seguinte:

#### Descrição

```markdown
## Exercícios

### Exercício

Descrição do exercício.
```

#### Dica

```markdown
::: {.callout-tip .mt-0}

### Dica

Alguma dica para resolver o exercício.
:::
```

#### Resposta

```markdown
::: {.callout-warning .mt-0 collapse="true"}

### Resposta

Esta resposta irá ficar oculta até que o leitor clique no botão.
:::
```

### Exemplo de código

Como usamos três linguagens no projeto, os _snippets_ devem ser inseridos da
seguinte forma:

```markdown
    ::: {.panel-tabset}
    
    ## Python
    
    ```python
    print("Hello, World!")
    ```
    
    ## R
    
    ```r
    print("Hello, World!")
    ```
    
    ## Scilab
    
    ```
    disp("Hello, World!")
    ```
    
    :::
```

Isso fará com que o código seja exibido em três abas, uma para cada linguagem.

### Notas sobre a tradução

Existem termos nativos do Quarto que podem ser traduzidos, atualmente, ao fazer a
build do projeto para pdf, o LaTeX quebra devido à `bugs` na instalação de pacotes
(vide [lang: pt-BR](https://github.com/Ar-Kan/meu-calculo-numerico/actions/runs/12527126226),
[\usepackage\[brazil\]{babel}](https://github.com/Ar-Kan/meu-calculo-numerico/actions/runs/12527055083/job/34940237796)).

Por esta razão, a tradução de termos é feita manualmente no arquivo correspondente.
