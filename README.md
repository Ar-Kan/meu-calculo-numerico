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

### Exemplos e exercícios resolvidos

Para inserir exemplos de aplicações de métodos numéricos:

```markdown
    ::: {.callout-note}
    ### Exemplo
    
    O número $293$ é decomposto como:
    
    $$
    \begin{split}
      293 &= 2\ \text{centenas} + 9\ \text{dezenas }+ 3\ \text{unidades}\\
      &= 2\cdot 10^2+9\cdot 10^1+3\cdot 10^0.
    \end{split}
    $${#eq-exemplo-1-sistema-de-numeracao}
    :::
```

### Exercícios propostos

Para inserir exercícios propostos deve ser feito o seguinte:

```markdown
    ## Exercícios

    ### Exercício
    
    Descrição do exercício.
    
    ::: {.callout-warning .mt-0 collapse="true"}
    ### Resposta
    
    Esta resposta irá ficar oculta até que o leitor clique no botão.
    :::
    
    ### Exercício
    
    Outro exercício.
    
    ::: {.callout-tip .mt-0}
    ### Dica
    
    Alguma dica para resolver o exercício.
    :::
    
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
