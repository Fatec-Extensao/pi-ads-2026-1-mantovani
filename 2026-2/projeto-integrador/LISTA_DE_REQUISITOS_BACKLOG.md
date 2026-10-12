**CENTRO ESTADUAL DE EDUCAÇÃO TECNOLÓGICA PAULA SOUZA**

**FACULDADE DE TECNOLOGIA DE LINS PROF. ANTONIO SEABRA**

**CURSO SUPERIOR EM TECNOLOGIA EM 2026**

**NEANDRO BUENO VIEIRA**

**ELVYS MONTEIRO FILHO**

**VITOR HUGO DIAS MANTOVANI**

**MATHEUS CARDOSO DE OLIVEIRA BISPO**

**LUCAS AUGUSTO VIEIRA TRIDAPALI**

**WAGNER ALVES DE SOUZA**

**SISTEMA WEB PARA GESTÃO DE PESQUISAS POR**

**QUESTIONÁRIOS**

**Diagramas de Caso de Uso, Algoritmos e Fluxogramas**

**LINS/SP**

**1º SEMESTRE/2026**

**SUMÁRIO**

**1. INTRODUÇÃO**

**2. DIAGRAMAS DE CASO DE USO**

> 2.1 VISÃO GERAL DO SISTEMA
>
> 2.2 PESQUISAS E CATEGORIAS
>
> 2.3 QUESTIONÁRIOS E PERGUNTAS
>
> 2.4 SENHAS E APLICAÇÃO DA PESQUISA
>
> 2.5 DASHBOARD E RELATÓRIOS

**3. ALGORITMOS**

**4. FLUXOGRAMAS**

> 4.1 UC-01 - MANTER PESQUISA
>
> 4.2 UC-02 - MANTER CATEGORIAS
>
> 4.3 UC-03 - CRIAR QUESTIONÁRIO E PERGUNTAS
>
> 4.4 UC-04 - GERAR, EXPORTAR E CONTROLAR SENHAS
>
> 4.5 UC-05 - RESPONDER QUESTIONÁRIO
>
> 4.6 UC-06 - CONSULTAR DASHBOARD E GERAR RELATÓRIOS

**1. INTRODUÇÃO**

Este documento apresenta os diagramas de caso de uso e os fluxos do
Sistema Web para Gestão de Pesquisas por Questionários, seguindo o mesmo
modelo acadêmico utilizado na lista de requisitos e backlog inicial.

O objetivo é organizar, em um único arquivo, os principais elementos de
modelagem retirados do documento P2, mantendo a identificação
institucional e a padronização visual em fonte Arial.

**2. DIAGRAMAS DE CASO DE USO**

Os diagramas de caso de uso representam as interações entre os atores e
o sistema. Neste projeto, os diagramas foram separados por módulos para
facilitar a visualização das responsabilidades de cada parte do sistema.

**2.1 VISÃO GERAL DO SISTEMA**

O diagrama de visão geral do sistema apresenta os atores envolvidos, os
casos de uso principais e as relações necessárias para representar o
comportamento esperado do módulo.

**Figura 1 - Visão geral do sistema**

<img src="media/image1.png"
style="width:5.74803in;height:3.59252in" />

Fonte: Elaborado pelos autores (2026).

Tabela 1 - Detalhamento do diagrama 1

| **Atores**                                            | **Casos de uso**                                                                                                                                                                | **Relações para configurar no Astah**                                                                    |
|-------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| Administrador; Aluno; Professor; Colaborador; Sistema | Gerenciar pesquisas; Gerenciar categorias; Gerenciar questionários; Gerar senhas; Responder pesquisa; Monitorar dashboard; Gerar relatórios; Validar senha; Registrar respostas | Responder pesquisa \<\<include\>\> Validar senha; Responder pesquisa \<\<include\>\> Registrar respostas |

**2.2 PESQUISAS E CATEGORIAS**

O diagrama de pesquisas e categorias apresenta os atores envolvidos, os
casos de uso principais e as relações necessárias para representar o
comportamento esperado do módulo.

**Figura 2 - Pesquisas e categorias**

<img src="media/image2.png"
style="width:5.74803in;height:3.59252in" />

Fonte: Elaborado pelos autores (2026).

Tabela 2 - Detalhamento do diagrama 2

| **Atores**             | **Casos de uso**                                                                                                                                         | **Relações para configurar no Astah**                                                                                                                                     |
|------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Administrador; Sistema | Cadastrar pesquisa; Editar pesquisa; Definir período; Ativar/desativar pesquisa; Manter categorias; Vincular categorias; Bloquear acesso fora do período | Cadastrar pesquisa \<\<include\>\> Definir período; Manter categorias \<\<include\>\> Vincular categorias; Bloquear acesso fora do período \<\<extend\>\> Definir período |

**2.3 QUESTIONÁRIOS E PERGUNTAS**

O diagrama de questionários e perguntas apresenta os atores envolvidos,
os casos de uso principais e as relações necessárias para representar o
comportamento esperado do módulo.

**Figura 3 - Questionários e perguntas**

<img src="media/image3.png"
style="width:5.74803in;height:3.59252in" />

Fonte: Elaborado pelos autores (2026).

Tabela 3 - Detalhamento do diagrama 3

| **Atores**             | **Casos de uso**                                                                                                                                                  | **Relações para configurar no Astah**                                                                                                                                                         |
|------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Administrador; Sistema | Manter perguntas; Definir tipo de pergunta; Cadastrar alternativas; Associar perguntas à categoria; Configurar obrigatoriedade; Validar estrutura do questionário | Manter perguntas \<\<include\>\> Definir tipo de pergunta; Cadastrar alternativas \<\<extend\>\> Definir tipo de pergunta; Validar estrutura do questionário \<\<include\>\> Manter perguntas |

**2.4 SENHAS E APLICAÇÃO DA PESQUISA**

O diagrama de senhas e aplicação da pesquisa apresenta os atores
envolvidos, os casos de uso principais e as relações necessárias para
representar o comportamento esperado do módulo.

**Figura 4 - Senhas e aplicação da pesquisa**

<img src="media/image4.png"
style="width:5.74803in;height:3.59252in" />

Fonte: Elaborado pelos autores (2026).

Tabela 4 - Detalhamento do diagrama 4

| **Atores**                                            | **Casos de uso**                                                                                                                                                                                                                     | **Relações para configurar no Astah**                                                                                                                                                                                                                                            |
|-------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Administrador; Aluno; Professor; Colaborador; Sistema | Gerar senhas únicas; Associar senha à categoria; Exportar senhas; Excluir senhas não utilizadas; Acessar pesquisa com senha; Identificar categoria; Exibir questionário; Validar respostas obrigatórias; Marcar senha como utilizada | Gerar senhas únicas \<\<include\>\> Associar senha à categoria; Acessar pesquisa com senha \<\<include\>\> Identificar categoria; Exibir questionário \<\<include\>\> Validar respostas obrigatórias; Validar respostas obrigatórias \<\<include\>\> Marcar senha como utilizada |

**2.5 DASHBOARD E RELATÓRIOS**

O diagrama de dashboard e relatórios apresenta os atores envolvidos, os
casos de uso principais e as relações necessárias para representar o
comportamento esperado do módulo.

**Figura 5 - Dashboard e relatórios**

<img src="media/image5.png"
style="width:5.74803in;height:3.59252in" />

Fonte: Elaborado pelos autores (2026).

Tabela 5 - Detalhamento do diagrama 5

| **Atores**             | **Casos de uso**                                                                                                                                                                                                                      | **Relações para configurar no Astah**                                                                                                                                                           |
|------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Administrador; Sistema | Visualizar dashboard; Exibir total de respostas; Exibir senhas geradas; Calcular taxa de participação; Participação por categoria; Gerar relatório por pergunta; Gerar relatório por categoria; Comparar resultados; Exportar PDF/CSV | Visualizar dashboard \<\<include\>\> Calcular taxa de participação; Gerar relatório por pergunta \<\<extend\>\> Exportar PDF/CSV; Gerar relatório por categoria \<\<extend\>\> Exportar PDF/CSV |

**3. ALGORITMOS**

**Algoritmo gerador de senha aleatória**

> Algoritmo "Senha"
>
> Var
>
> categ, senha, resp, iniciosenha: caractere
>
> vet: vetor \[1..10\] de caractere
>
> i, s: inteiro
>
> tamanho, sorteio: inteiro
>
> caracterpermi: caractere
>
> Inicio
>
> resp \<- "S"
>
> caracterpermi \<- "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@!#"
>
> tamanho \<- compr(caracterpermi)
>
> Enquanto (resp = "S") ou (resp = "s") faça
>
> Escreval("Digite sua categoria:")
>
> Escreval("A - Aluno")
>
> Escreval("P - Professor")
>
> Escreval("F - Funcionário")
>
> Leia(categ)
>
> Enquanto (categ \<\> "A") e (categ \<\> "P") e (categ \<\> "F") faça
>
> Escreval("Categoria inválida")
>
> Escreval("Digite sua categoria:")
>
> Escreval("A - Aluno")
>
> Escreval("P - Professor")
>
> Escreval("F - Funcionário")
>
> Leia(categ)
>
> FimEnquanto
>
> Para i de 1 ate 10 faça
>
> Escolha categ
>
> Caso "A"
>
> iniciosenha \<- "A"
>
> senha \<- iniciosenha
>
> Caso "P"
>
> iniciosenha \<- "P"
>
> senha \<- iniciosenha
>
> Caso "F"
>
> iniciosenha \<- "F"
>
> senha \<- iniciosenha
>
> FimEscolha
>
> Para s de 1 ate 7 faça
>
> sorteio \<- randi(tamanho) + 1
>
> senha \<- senha + copia(caracterpermi, sorteio, 1)
>
> FimPara
>
> vet\[i\] \<- senha
>
> Escreval("Senha ", i, ": ", senha)
>
> FimPara
>
> Escreval(" ")
>
> Escreval("Todas as senhas geradas:")
>
> Escreval(" ")
>
> Para i de 1 ate 10 faça
>
> Escreval(vet\[i\])
>
> FimPara
>
> Escreval("Deseja continuar a digitação? S/N")
>
> Leia(resp)
>
> FimEnquanto
>
> FimAlgoritmo

**4. FLUXOGRAMAS**

Os fluxogramas abaixo foram organizados a partir dos fluxos principais e
alternativos descritos no documento P2. Cada item apresenta ator
principal, pré-condição, representação visual do fluxo e pós-condição.

**4.1 UC-01 - MANTER PESQUISA**

**Ator principal:** Administrador

**Pré-condição:** Administrador autenticado no sistema.

**Figura 6 - Fluxograma do Manter Pesquisa**

<img src="media/image6.png"
style="width:5.82677in;height:3.49606in" />

Fonte: Elaborado pelos autores (2026).

**4.2 UC-02 - MANTER CATEGORIAS**

**Ator principal:** Administrador

**Pré-condição:** Existir uma pesquisa cadastrada ou em criação.

**Figura 7 - Fluxograma do Manter Categorias**

<img src="media/image7.png"
style="width:5.82677in;height:3.49606in" />

Fonte: Elaborado pelos autores (2026).

**4.3 UC-03 - CRIAR QUESTIONÁRIO E PERGUNTAS**

**Ator principal:** Administrador

**Pré-condição:** Pesquisa e categoria previamente cadastradas.

**Figura 8 - Fluxograma do Criar Questionário E Perguntas**

<img src="media/image8.png"
style="width:5.82677in;height:4.63552in" />

Fonte: Elaborado pelos autores (2026).

**4.4 UC-04 - GERAR, EXPORTAR E CONTROLAR SENHAS**

**Ator principal:** Administrador

**Pré-condição:** Pesquisa ativa ou preparada para aplicação e
categorias definidas.

**Figura 9 - Fluxograma do Gerar, Exportar E Controlar Senhas**

<img src="media/image9.png"
style="width:5.82677in;height:3.49606in" />

Fonte: Elaborado pelos autores (2026).

**4.5 UC-05 - RESPONDER QUESTIONÁRIO**

**Ator principal:** Aluno, Professor ou Colaborador

**Pré-condição:** Participante possui uma senha válida e a pesquisa está
dentro do período de aplicação.

**Figura 10 - Fluxograma do Responder Questionário**

<img src="media/image10.png"
style="width:5.82677in;height:6.1343in" />

Fonte: Elaborado pelos autores (2026).

**4.6 UC-06 - CONSULTAR DASHBOARD E GERAR RELATÓRIOS**

**Ator principal:** Administrador

**Pré-condição:** Existirem respostas registradas ou senhas geradas para
a pesquisa.

**Figura 11 - Fluxograma do Consultar Dashboard E Gerar Relatórios**

<img src="media/image11.png"
style="width:5.82677in;height:4.02371in" />

Fonte: Elaborado pelos autores (2026).
