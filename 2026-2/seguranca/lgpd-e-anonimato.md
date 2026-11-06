# Relatório de Adequação à LGPD e Mecanismos de Anonimato

**Status:** proposta de adequação --- depende de validação institucional
e implementação técnica.

------------------------------------------------------------------------

## 1. Objetivo e escopo

Este documento analisa os requisitos do Sistema Web para Gestão de
Pesquisas por Questionários sob a perspectiva da Lei nº 13.709/2018 (Lei
Geral de Proteção de Dados Pessoais --- LGPD). Seu objetivo é registrar
os mecanismos de anonimato previstos, identificar pontos que precisam de
definição para a conformidade e propor regras de transparência, retenção
e exclusão dos dados.

O sistema tem como finalidade permitir a criação, aplicação e análise de
pesquisas institucionais, com questionários segmentados por categorias
de participantes. O participante acessa a pesquisa por uma senha
anônima, sem possuir conta no sistema. Os requisitos também preveem
respostas anonimizadas, relatórios agregados e separação entre respostas
e logs de auditoria.

A análise considera os requisitos documentados. Quando uma informação
não está definida no documento de requisitos, ela é identificada como
**pendência de definição**, e não como funcionalidade já implementada.

## 2. Visão geral do tratamento de dados

### 2.1 Dados e registros previstos

  -----------------------------------------------------------------------
  Elemento                Uso previsto nos        Consideração de
                          requisitos              privacidade
  ----------------------- ----------------------- -----------------------
  Senhas de acesso        Strings aleatórias de 8 A senha não deve conter
                          caracteres              nem codificar
                          alfanuméricos,          identidade. O lote em
                          vinculadas a uma        texto puro deve ser
                          categoria; o banco      disponibilizado apenas
                          armazena o hash         para download imediato,
                          SHA-256.                conforme especificado.

  Categoria do            Identifica qual         Uma categoria muito
  participante            questionário deve ser   pequena ou específica
                          apresentado e permite   pode permitir inferir
                          relatórios por          quem respondeu.
                          categoria.              

  Respostas dos           São gravadas de forma   Respostas abertas podem
  questionários           descrita como           conter nomes, contatos
                          totalmente anonimizada. ou outros
                                                  identificadores
                                                  inseridos
                                                  espontaneamente.

  Status da senha         Indica se uma senha já  O status deve
                          foi utilizada,          permanecer separado das
                          impedindo novo envio.   respostas e não
                                                  permitir associar uma
                                                  resposta a uma senha
                                                  específica.

  Logs administrativos e  Registram usuário,      Devem se referir às
  de auditoria            ação, data e hora;      operações
                          incluem eventos de      administrativas, sem
                          exportação e alterações incluir conteúdo das
                          críticas.               respostas nem
                                                  credenciais dos
                                                  participantes.

  Dados de acesso e       Há regra de até 3       É necessário distinguir
  segurança               tentativas por IP em 15 processamento
                          minutos, ao mesmo tempo transitório para
                          em que os requisitos    limitação de tentativas
                          dizem que IP, cookies e de armazenamento
                          identificadores não são persistente ou inclusão
                          armazenados.            em logs.
  -----------------------------------------------------------------------

### 2.2 Dados pessoais e anonimato

A LGPD considera dado pessoal a informação relacionada a pessoa natural
identificada ou identificável. A anonimização deve impedir que a
associação a um indivíduo seja razoavelmente possível, considerando os
meios técnicos disponíveis.

O projeto estabelece como requisito que nenhuma resposta possa ser
rastreada individualmente ao respondente (RNF05). Também especifica que
as respostas não devem registrar IP, cookies ou IDs, que administradores
e analistas devem visualizar somente dados agregados e que as
exportações devem ser anonimizadas.

Essas medidas são coerentes com o objetivo de anonimato, mas a ausência
de nome, CPF ou e-mail, isoladamente, não comprova anonimização.
Combinações de respostas, categorias muito pequenas, texto livre,
horários precisos ou registros técnicos correlacionáveis podem permitir
reidentificação. Por isso, a proteção deve abranger o fluxo completo,
incluindo rascunhos, logs, backups, relatórios e arquivos exportados.

**Importante:** os requisitos não descrevem coleta de nome, CPF ou
e-mail do participante no fluxo normal de resposta. Há, porém, uma regra
genérica na seção de segurança sobre validação de CPF e impedimento de
cadastro de menores de 18 anos. Essa regra não está claramente integrada
ao fluxo anônimo do participante e deve ser esclarecida antes da
implementação. Não se deve acrescentar coleta de CPF ou cadastro de
participantes sem justificativa, finalidade e definição da base legal.

## 3. Mecanismos de anonimato

Com base nos requisitos, os seguintes controles devem ser preservados e
testados:

1.  **Acesso por senha aleatória:** gerar senhas únicas de 8 caracteres
    alfanuméricos, associadas somente à categoria e à pesquisa, sem
    vínculo com nome, CPF, e-mail ou outro cadastro do respondente.
2.  **Armazenamento de hash:** armazenar no banco somente o hash da
    senha, conforme definido no requisito. A senha em texto puro deve
    ser apresentada apenas no momento de exportação do lote, sem
    persistência adicional desnecessária.
3.  **Separação entre credencial e resposta:** manter a tabela/registro
    de senhas e o repositório de respostas sem chave ou relação que
    permita descobrir qual senha originou determinada resposta. A
    atualização do status da senha para "Utilizada" não pode revelar a
    resposta correspondente.
4.  **Não persistência de identificadores do participante:** não
    armazenar IP, cookies ou IDs associados às respostas. A regra de
    limitação de tentativas por IP deve ser implementada de forma
    transitória, sem persistência do endereço IP ou sua inclusão em
    logs.
5.  **Relatórios agregados:** exibir percentuais e totais, sem respostas
    individuais. Em grupos pequenos, aplicar supressão ou agrupamento de
    resultados quando a apresentação de uma categoria puder revelar a
    identidade de alguém.
6.  **Exportações anonimizadas:** aplicar as mesmas restrições dos
    relatórios às saídas CSV, XLSX, PDF e integrações com ferramentas
    externas, removendo identificadores diretos e metadados
    desnecessários.
7.  **Logs separados:** registrar a identidade do administrador,
    analista ou outro usuário institucional que realizou uma operação
    administrativa, quando necessário para auditoria, mas nunca associar
    esses logs ao conteúdo ou à autoria das respostas.
8.  **Respostas abertas:** informar ao participante que não deve inserir
    nome, telefone, e-mail, matrícula ou outros dados que o
    identifiquem. Avaliar filtros e procedimentos de revisão para evitar
    que identificadores inseridos espontaneamente sejam divulgados em
    relatórios.
9.  **Rascunhos:** o requisito prevê salvamento automático do progresso
    a cada pergunta e possibilidade de continuar depois. Deve ser
    definido como o rascunho é mantido sem criar vínculo identificável
    com o participante, por quanto tempo permanece disponível e como é
    eliminado. O requisito de salvamento local em caso de falha de
    conexão também deve esclarecer se os dados ficam apenas no
    dispositivo e como são removidos após o envio ou cancelamento.
10. **Proteção técnica:** utilizar HTTPS/TLS, controle de acesso por
    perfil, privilégio mínimo, validação no backend e proteção dos logs
    contra alteração ou exclusão indevida, conforme os requisitos de
    segurança.

### 3.1 Ponto de atenção: SHA-256 e senhas

O documento de requisitos determina o uso de SHA-256 para armazenar o
hash das senhas anônimas. Esse requisito deve ser mantido como
referência do projeto, mas sua implementação precisa considerar que
senhas de apenas 8 caracteres alfanuméricos possuem espaço de busca
limitado. Recomenda-se gerar senhas com aleatoriedade criptograficamente
segura, limitar tentativas, impedir reutilização e avaliar o uso de um
mecanismo de derivação de chave com salt apropriado para credenciais, em
vez de hash simples. Qualquer alteração da especificação deve ser
validada pela equipe responsável pelo projeto.

## 4. Finalidade e base legal do tratamento

As finalidades identificadas nos requisitos são:

-   criar e administrar pesquisas institucionais;
-   disponibilizar questionários de acordo com a categoria;
-   receber e armazenar respostas;
-   acompanhar a participação por indicadores;
-   produzir análises e relatórios estatísticos agregados;
-   garantir segurança, integridade, disponibilidade e auditoria das
    operações administrativas.

A LGPD prevê diferentes hipóteses legais para o tratamento de dados
pessoais. Portanto, **não é correto presumir que o consentimento seja
sempre a única base legal aplicável**. A instituição responsável pelo
sistema deve identificar e documentar a hipótese legal adequada para
cada operação que envolva dados pessoais, inclusive dados de
administradores e registros de auditoria.

O projeto não identifica formalmente a instituição controladora, o
operador, o encarregado pelo tratamento de dados pessoais, nem a base
legal de cada operação. Esses dados devem ser preenchidos e aprovados
pela instituição antes da disponibilização das pesquisas.

Se uma pesquisa utilizar consentimento como base legal, ele deverá ser
livre, informado, inequívoco e relacionado a uma finalidade determinada.
A recusa não deve ser tratada como consentimento, e o titular deve ser
informado sobre como revogá-lo. Quando outra hipótese legal for
aplicável, o aviso de privacidade deverá informar a finalidade e a base
correspondente, sem apresentar o consentimento como fundamento fictício.

## 5. Política de retenção e exclusão

Os requisitos estabelecem retenção mínima de 5 anos para logs imutáveis
de auditoria (US-AUD-01). Também determinam que logs críticos sejam
mantidos pelo período mínimo definido pela política organizacional ou
legislação vigente. Não há, entretanto, prazo definido para retenção de
respostas, rascunhos, lotes de senhas, arquivos exportados ou backups.

A política abaixo é uma proposta para aprovação institucional. Os prazos
que não estão definidos nos requisitos são marcados como pendentes e não
devem ser considerados prazos legais já confirmados.

  -----------------------------------------------------------------------
  Tipo de dado            Regra proposta          Destino ao final do
                                                  prazo
  ----------------------- ----------------------- -----------------------
  Respostas de pesquisas  Reter pelo período      Eliminar ou manter
                          necessário à finalidade somente dados
                          institucional e à       efetivamente
                          produção/validação dos  anonimizados, conforme
                          resultados. **Prazo     a finalidade e as
                          exato: definir com a    hipóteses legais
                          instituição antes da    aplicáveis.
                          operação.**             

  Rascunhos de respostas  Manter apenas enquanto  Excluir automaticamente
                          a pesquisa estiver      rascunhos expirados,
                          disponível e pelo prazo abandonados ou já
                          operacional necessário  enviados.
                          para permitir a         
                          retomada. **Definir     
                          prazo máximo e          
                          comportamento após      
                          encerramento.**         

  Hashes e status das     Manter enquanto forem   Excluir ou tornar
  senhas                  necessários para        inutilizáveis os
                          validar o acesso e      registros que não
                          impedir reutilização    precisem ser
                          durante a pesquisa.     conservados.
                          **Definir prazo de      
                          descarte após o         
                          encerramento.**         

  Lotes de senhas em      Disponibilizar para     Remover cópias
  texto puro              download imediato,      temporárias e arquivos
                          conforme requisito;     intermediários após a
                          evitar armazenamento    disponibilização.
                          permanente no servidor. 

  Logs de auditoria       O requisito prevê       Eliminar de forma
  administrativa          retenção mínima de 5    segura ao término do
                          anos e armazenamento    prazo, salvo obrigação
                          imutável (WORM).        de conservação ou
                          Confirmar a             necessidade legítima
                          compatibilidade desse   documentada.
                          prazo com a política    
                          institucional e as      
                          obrigações aplicáveis.  

  Logs técnicos e de      Reter pelo prazo mínimo Eliminar ou anonimizar
  segurança               definido na política    ao fim do prazo
                          organizacional e        aprovado.
                          conforme a necessidade  
                          de segurança. Não       
                          incluir IP ou           
                          identificadores de      
                          participantes em logs   
                          persistentes.           

  Relatórios e arquivos   Manter somente enquanto Excluir cópias
  exportados              necessários à           obsoletas e orientar os
                          finalidade que          destinatários sobre o
                          justificou a            descarte.
                          exportação; controlar   
                          acesso e cópias.        

  Backups                 Definir ciclo de        Garantir que dados
                          retenção, expiração e   eliminados não
                          descarte, incluindo     permaneçam
                          cópias de segurança e   indefinidamente em
                          réplicas.               backups; documentar o
                                                  prazo de expiração das
                                                  cópias.
  -----------------------------------------------------------------------

### 5.1 Procedimento de exclusão

A exclusão deverá seguir um procedimento controlado:

1.  identificar o conjunto de dados e a finalidade para a qual foi
    armazenado;
2.  verificar se existe obrigação legal ou outra hipótese que justifique
    a conservação;
3.  autorizar e registrar a operação por usuário institucional com
    permissão adequada;
4.  excluir os dados dos bancos, arquivos temporários e áreas de
    exportação abrangidas pelo procedimento;
5.  considerar réplicas e backups, observando o ciclo documentado de
    expiração;
6.  registrar a execução da exclusão sem copiar para o log o conteúdo
    eliminado;
7.  quando a eliminação não puder ocorrer por obrigação legal ou outra
    hipótese aplicável, restringir o uso ao propósito que justifica a
    conservação e informar essa condição ao titular quando pertinente.

A eliminação não deve ser prometida de forma absoluta quando houver
hipótese legal de conservação. A instituição deve validar cada exceção.

## 6. Aviso de privacidade ao participante

O aviso abaixo é um modelo inicial a ser exibido antes do início do
questionário. Os campos entre colchetes precisam ser preenchidos e
aprovados pela instituição. O texto deve ser ajustado conforme a base
legal efetivamente definida para cada pesquisa.

### Aviso de Privacidade --- Participação em Pesquisa Institucional

**Responsável pelo tratamento:** \[nome da instituição/controlador\]\
**Contato para assuntos de privacidade:** \[e-mail ou canal
institucional\]\
**Encarregado pelo tratamento de dados pessoais:** \[nome ou canal de
contato, conforme aplicável\]\
**Pesquisa:** \[título da pesquisa\]\
**Período de participação:** \[data de início\] a \[data de
encerramento\]

Esta pesquisa é realizada para \[descrever, de forma específica, a
finalidade institucional da pesquisa\]. As respostas serão utilizadas
para produzir análises e resultados estatísticos relacionados a essa
finalidade.

**Anonimato e dados coletados**

O acesso ao questionário ocorre por meio de uma senha aleatória
vinculada à categoria da pesquisa. De acordo com as regras do sistema, a
senha é armazenada no banco de dados em formato hash e não deve estar
vinculada a nome, CPF, e-mail ou cadastro individual do participante.

As respostas são armazenadas sem associação direta ao respondente. O
sistema foi especificado para não registrar IP, cookies ou
identificadores junto às respostas. Os resultados disponibilizados a
administradores e analistas devem ser apresentados de forma agregada,
sem exposição de respostas individuais.

Não escreva seu nome, telefone, e-mail, matrícula ou qualquer outra
informação que possa identificá-lo em campos de resposta aberta. Caso
você insira voluntariamente esses dados no texto, eles poderão tornar a
resposta identificável.

**Finalidade e base legal**

A finalidade desta pesquisa é: \[descrever a finalidade específica\].\
A hipótese legal que fundamenta o tratamento é: \[informar a base legal
validada pelo controlador para esta pesquisa\].

Quando o tratamento estiver fundamentado no consentimento, a
participação será precedida de manifestação livre, informada e
inequívoca. A forma de recusa e de revogação deverá ser informada neste
espaço: \[instruções e canal\]. Quando o tratamento estiver fundamentado
em outra hipótese legal, ela deverá ser informada de maneira clara, sem
solicitar consentimento como se fosse a base aplicável.

**Compartilhamento e acesso**

Os resultados poderão ser acessados por \[indicar os setores ou perfis
institucionais autorizados\] para \[finalidade\]. Qualquer
compartilhamento com terceiros, fornecedores ou ferramentas externas
deverá ser informado e limitado ao necessário, com controles de
segurança e responsabilidades definidos.

**Retenção e eliminação**

As respostas serão mantidas pelo período de \[prazo aprovado\] para
\[justificativa\]. Os registros administrativos e de auditoria seguirão
a política institucional de retenção. Ao término dos prazos, os dados
serão eliminados ou mantidos somente quando houver hipótese legal que
autorize sua conservação.

**Direitos e contato**

Para solicitar informações sobre o tratamento de dados pessoais, exercer
direitos previstos na LGPD ou esclarecer dúvidas, entre em contato com
\[canal institucional\]. A instituição avaliará a solicitação conforme a
legislação aplicável. Como o sistema busca não manter vínculo entre
respostas e identidade do participante, poderá não ser tecnicamente
possível localizar uma resposta específica sem comprometer o anonimato.

Ao prosseguir, você confirma que teve acesso a este aviso. **Essa ação
somente deve ser tratada como consentimento quando o consentimento tiver
sido definido como a base legal aplicável e a manifestação cumprir os
requisitos legais.**

------------------------------------------------------------------------

## 7. Direitos dos titulares e limites decorrentes do anonimato

A instituição responsável deverá disponibilizar um canal para receber e
tratar solicitações dos titulares, conforme os direitos previstos na
LGPD, incluindo confirmação da existência de tratamento, acesso,
correção, anonimização, bloqueio, eliminação, informação sobre
compartilhamento e revogação do consentimento, quando aplicável.

Como o projeto pretende armazenar respostas sem identificadores e sem
vínculo com o respondente, pode não ser possível localizar ou corrigir
uma resposta específica após sua anonimização irreversível. Essa
limitação deve ser explicada de forma transparente no aviso de
privacidade. Ela não elimina os direitos aplicáveis aos demais dados
pessoais eventualmente tratados pela instituição, como dados de contas
administrativas e logs que identifiquem operadores.

## 8. Riscos e pontos que precisam ser resolvidos

  -----------------------------------------------------------------------
  Ponto identificado nos  Risco ou ambiguidade    Ação recomendada
  requisitos                                      
  ----------------------- ----------------------- -----------------------
  Limite de 3 tentativas  A implementação pode    Aplicar limitação
  por IP em 15 minutos,   acabar registrando IP   transitória e revisar
  mas proibição de        em logs do servidor,    logs, proxies,
  armazenar IP            proxy ou ferramenta de  hospedagem e telemetria
                          monitoramento.          para impedir
                                                  persistência
                                                  desnecessária de IP de
                                                  participantes.

  Salvamento automático   Um rascunho persistente Especificar
  de rascunho             pode permitir           armazenamento,
                          correlação com a senha  identificadores
                          ou com uma sessão.      temporários, separação
                                                  dos dados e prazo de
                                                  exclusão.

  Respostas abertas       O próprio participante  Exibir orientação antes
                          pode escrever           do preenchimento e
                          informações que o       estabelecer
                          identifiquem ou         procedimento para
                          identifiquem terceiros. restringir a divulgação
                                                  de conteúdo
                                                  identificável.

  Relatórios por          Categorias ou unidades  Definir limite mínimo
  categoria e             com poucos respondentes de amostra e suprimir
  campus/unidade          podem permitir          resultados de grupos
                          inferência de           pequenos. O valor deve
                          identidade.             ser aprovado pela
                                                  instituição.

  Regra genérica de CPF e Pode contradizer o      Esclarecer se a regra
  idade mínima de 18 anos fluxo sem cadastro e o  se aplica a contas
                          anonimato do            administrativas ou aos
                          participante; o projeto participantes. Não
                          também cita alunos como coletar CPF para
                          categoria.              responder sem
                                                  finalidade e base legal
                                                  documentadas.

  Logs de auditoria com   Logs podem conter dados Definir campos
  trilha "quem, o quê,    pessoais de usuários    permitidos, acesso,
  quando" e retenção      institucionais ou, se   prazo e segregação;
  mínima de 5 anos        mal configurados, dados nunca registrar
                          de participantes.       respostas ou senhas em
                                                  texto puro.

  Base legal e            Não é possível          Identificar
  controlador não         finalizar o aviso de    controlador, operador,
  identificados           privacidade nem afirmar encarregado/canal de
                          conformidade apenas com contato, finalidade e
                          requisitos técnicos.    base legal por
                                                  pesquisa.

  Backups e arquivos      A exclusão no banco     Documentar ciclo de
  exportados              principal pode não      backup, retenção,
                          remover cópias          descarte e controle de
                          secundárias.            exportações.
  -----------------------------------------------------------------------

## 9. Recomendações de implementação e validação

Antes de considerar os controles concluídos, a equipe deverá:

-   mapear o fluxo de dados desde a geração e distribuição das senhas
    até o armazenamento, análise, exportação e descarte;
-   verificar que não existe chave, tabela de associação, timestamp ou
    log que permita relacionar senha e resposta;
-   testar que IP, cookies, IDs de sessão e identificadores técnicos não
    sejam persistidos em respostas ou logs de participantes;
-   confirmar que a limitação de tentativas funciona sem armazenamento
    persistente de IP;
-   testar que administradores, secretaria e analistas visualizem apenas
    resultados agregados;
-   testar a supressão de resultados de grupos pequenos, conforme limite
    definido pela instituição;
-   verificar que CSV, XLSX e PDF não contenham identificadores,
    metadados ou respostas individuais indevidas;
-   definir e testar a expiração de rascunhos, senhas, arquivos
    temporários, respostas e backups;
-   revisar mensagens, formulários e perguntas abertas para evitar
    coleta desnecessária de dados pessoais;
-   documentar as operações de tratamento, as bases legais e as medidas
    técnicas e administrativas adotadas;
-   submeter o aviso de privacidade e a política de retenção à validação
    do controlador e do responsável institucional por privacidade.

## 10. Critérios de aceite relacionados à Issue #11

-   [ ] O sistema não solicita nem armazena dados pessoais
    identificáveis do participante no fluxo padrão de resposta, salvo se
    houver finalidade, necessidade e hipótese legal documentadas.
-   [ ] As senhas são aleatórias, armazenadas em formato hash e não
    permitem associação entre participante e resposta.
-   [ ] Respostas, rascunhos, logs e exportações não contêm
    identificadores que permitam rastrear o respondente.
-   [ ] A limitação de tentativas por IP não resulta em armazenamento
    persistente de IP ou sua inclusão em logs.
-   [ ] Os relatórios apresentam somente dados agregados e tratam grupos
    pequenos para reduzir risco de reidentificação.
-   [ ] Existe política aprovada de retenção e exclusão para respostas,
    rascunhos, senhas, logs, exportações e backups.
-   [ ] Os logs administrativos permanecem separados das respostas e
    seguem prazo de retenção aprovado.
-   [ ] O aviso de privacidade é apresentado ao participante antes do
    questionário e contém finalidade, base legal, controlador, contato,
    compartilhamentos, retenção e direitos.
-   [ ] Quando o consentimento for a base legal aplicável, sua coleta e
    revogação são registradas de forma válida, sem vincular
    indevidamente a identidade do participante às respostas anônimas.
-   [ ] Os pontos de conflito entre anonimato, rascunhos, limitação por
    IP e regra de CPF/idade foram esclarecidos e documentados.

## 11. Referências legais

-   **Lei nº 13.709/2018 --- Lei Geral de Proteção de Dados Pessoais
    (LGPD):**
    -   Art. 5º: conceitos de dado pessoal, dado pessoal sensível,
        anonimização, titular, controlador, operador, tratamento e
        consentimento.
    -   Art. 6º: princípios do tratamento, incluindo finalidade,
        adequação, necessidade, transparência, segurança, prevenção e
        responsabilização.
    -   Art. 7º: hipóteses legais para o tratamento de dados pessoais.
    -   Art. 8º: requisitos do consentimento e possibilidade de
        revogação, quando essa for a base legal.
    -   Art. 9º: informações claras e acessíveis ao titular.
    -   Arts. 15 e 16: término do tratamento e hipóteses de conservação.
    -   Art. 18: direitos dos titulares.
    -   Arts. 37 e 41: registro das operações de tratamento e
        encarregado, conforme aplicável.
    -   Arts. 46 a 49: medidas de segurança, prevenção e boas práticas.
-   **Documento de requisitos do projeto:**
    `2026-2/eng-software-II/requisitosgrupo2.md`.

------------------------------------------------------------------------

## 12. Conclusão

Os requisitos do projeto já estabelecem uma arquitetura orientada ao
anonimato: acesso por senha aleatória, armazenamento de hash, ausência
de IP/cookies/IDs nas respostas, separação dos logs de auditoria e
respostas, relatórios agregados e exportações anonimizadas. Esses
elementos fornecem uma base técnica relevante para a proteção da
privacidade.

Entretanto, a conformidade não pode ser afirmada apenas com a existência
desses requisitos. É necessário resolver especialmente a retenção de
respostas e rascunhos, o tratamento transitório de IP para limitação de
tentativas, o risco de identificação em respostas abertas e grupos
pequenos, a regra de CPF/idade, a definição da base legal e a
identificação do controlador e canal de privacidade.

Após a validação institucional desses pontos e a implementação/teste dos
controles, este documento poderá ser atualizado para refletir o
funcionamento efetivo do sistema, em vez de apenas a especificação
planejada.
