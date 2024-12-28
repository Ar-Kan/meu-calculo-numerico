# Meu Cálculo Numérico

Um exemplo de livro escrito em Markdown, para ser convertido para HTML.

## Compilação

Para compilar o livro execute:

    $ quarto render

## Como escrever o livro

Cada capítulo é um arquivo Markdown e, sempre que um novo capítulo for adicionado, deve ser
devidamente referenciado no arquivo `_quarto.yml`.

### Estrutura de diretórios

O livro é organizado da seguinte forma:

    .
    ├── README.md
    ├── _quarto.yml
    ├── index.qmd
    ├── introducao.qmd
    ├── prefacio.qmd
    ├── referencias.bib
    ├── capitulos/
    │   ├── 01_aritmetica/
    │   │   ├── 00_capitulo.qmd
    │   │   ├── 01_secao.qmd
    │   │   |   ...
    ├── apendices/
    │   |   ...
    |   ...

### Usar referências

As referências bibliográficas são armazenadas no arquivo `referencias.bib` e são referenciadas
no texto com o comando `[@press2007numerical]`.

Neste exemplo, a referência é feita à:

```bibtex
@book{press2007numerical,
  title={Numerical recipes 3rd edition: The art of scientific computing},
  author={Press, William H and Teukolsky, Saul A and Vetterling, William T and Flannery, Brian P},
  year={2007},
  publisher={Cambridge university press}
}
```

### Enumeração de equações

As equações são numeradas automaticamente caso sejam escritas entre `$$` e `$$` e tenham um `{#eq-nome}` ao final.

```markdown
$$
\cos(x) = x \quad \text{ou} \quad xe^x = 10
$${#eq-cos-x}
```

### Exemplo de aplicações

Para inserir exemplos de aplicações de métodos numéricos

### Exercícios resolvidos

Para inserir exercícios resolvidos

### Exercícios propostos

Para inserir exercícios propostos

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
