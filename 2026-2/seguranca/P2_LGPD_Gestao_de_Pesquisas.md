# Estrutura e Organização de Trabalho Acadêmico para Adequação de Software para Gestão de Pesquisas a LGPD

**Centro Estadual de Educação Tecnológica Paula Souza**  
**Faculdade de Tecnologia de Lins Prof. Antonio Seabra**  
**Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas**

**Integrantes:**

- VITOR HUGO DIAS MANTOVANI
- NEANDRO BUENO VIEIRA
- EDUARDO MATIAS FERREIRA
- LUCAS AUGUSTO VIEIRA TRIDAPALI
- ANDERSON CLAYTON PEREIRA DE ASSIS

**Local:** LINS/SP  
**Período:** 2º SEMESTRE/2026

---

Este documento apresenta a proposta completa e detalhada de sumário e organização do conteúdo para guiar a escrita de um trabalho acadêmico focado na adequação de um software de gestão de pesquisas conforme a Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018).

## 1. Introdução

- **Contextualização:** A crescente transformação digital das instituições acadêmicas tem provocado mudanças significativas nos processos de ensino, aprendizagem, pesquisa e gestão educacional. Nesse cenário, a utilização de ferramentas tecnológicas para coleta, organização, armazenamento e análise de informações tornou-se fundamental para o aprimoramento das atividades institucionais e para a tomada de decisões fundamentadas em dados. Em sistemas desse tipo, há pesquisas onde dados dos usuários são coletados, e nesse cenário se vê necessário adaptações para que o projeto esteja em conformidade com a **Lei Geral de Proteção de Dados Pessoais** (LGPD).

  A LGPD traz princípios, obrigações e direitos sobre uma parte importante da personalidade das pessoas: seus dados pessoais.

  Dado pessoal é qualquer informação capaz de identificar uma pessoa natural de maneira direta ou indireta. Esses dados circulam pelas organizações com diversas finalidades e o objetivo da LGPD é que esses fins sejam compatíveis com as expectativas das pessoas. Esse é um direito tão importante, que foi reconhecido pelo Supremo Tribunal Federal (STF) como Direito Fundamental, em maio de 2020, e incluído como uma garantia fundamental na Constituição Federal, em fevereiro de 2022.

- **Problema de Pesquisa:** Como estruturar e adaptar tecnicamente um Sistema web de gestão de pesquisas por questionários destinado a instituições acadêmicas, conciliando criação e aplicação de pesquisas, monitoramento de participação e análise de resultados com a proteção de dados pessoais e adequação a LGPD ?

- **Objetivo Geral:** Analisar e propor requisitos técnicos, jurídicos e operacionais necessários para adequar o sistema de uma academia à LGPD.

- **Justificativa:** O Sistema necessita de administração de dados de identificação, informações socioeconômicas, respostas sobre saúde, opiniões e metadados podem permitir a identificação direta ou indireta de participantes, especialmente em grupos pequenos. A publicação de resultados por categoria, a existência de senhas individuais e o monitoramento em tempo real exigem precauções adicionais. é necessário demonstrar tecnicamente que as respostas não são vinculáveis aos participantes por meios razoáveis, considerando os demais dados disponíveis**.**

## 2. Referencial Teórico

### 2.1 A Lei Geral de Proteção de Dados (LGPD)

A LGPD define dado pessoal como informação relacionada a pessoa natural identificada ou identificável. Dados sensíveis incluem, entre outros, informações sobre saúde, convicção religiosa, origem racial ou étnica, opinião politica e dados biométricos vinculados a pessoa natural.

Titular é a pessoa natural a quem os dados se referem; controlador é quem toma as decisões referentes ao tratamento; e operador realiza o tratamento em nome do controlador. No cenário proposto, a instituição que define a finalidade de determinada pesquisa tende a exercer o papel de controladora; um fornecedor que processa respostas sob suas instruções pode atuar como operador. A atribuição concreta depende das operações efetivas e dos contratos, e não apenas do nome atribuído aos participantes.

Finalidade significa tratamento para propósitos legítimos, específicos e informados; adequação exige compatibilidade entre tratamento e finalidade; necessidade limita a coleta ao mínimo pertinente; transparência impõe informações claras aos titulares; segurança e prevenção requerem medidas para impedir danos e acessos não autorizados. As hipóteses legais dos arts. 7º e 11 devem ser examinadas conforme o dado e a finalidade. Consentimento não é exigência automática para todo questionário, nem uma autorização genérica substitui a análise jurídica do tratamento.

### 2.2 O Ecossistema de gestão de questionários

O software foi concebido para pesquisas institucionais com categorias de participantes, questionários específicos e geração de relatórios. Para fins de análise, consideram-se os seguintes fluxos de informação:

| **Grupo de dados**  | **Exemplos possíveis**                                                        | **Tratamento e risco**                                                    |
|---------------------|-------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| Administrativos     | Nome, e-mail e perfil do usuário gestor ou pesquisador                        | Identificação e concessão de permissões.                                  |
| Pesquisa            | Título, objetivo, categoria, perguntas e regras de aplicação                  | Registro de finalidade e configuração do instrumento.                     |
| Participação        | Convites, códigos, emissão/uso de senha e estado de participação              | Possível correlação entre usuário, momento de acesso e resposta.          |
| Respostas           | Alternativas, texto livre, avaliações e opiniões                              | Identificação indireta por conteúdo ou combinação de variáveis.           |
| Sensíveis eventuais | Perguntas sobre saúde, religião, origem racial ou outros dados do art. 5º, II | Base legal específica, minimização e acesso reforçado.                    |
| Técnicos            | IP, carimbo de data e hora, eventos e logs                                    | Rastreabilidade que pode comprometer anonimato se associada às respostas. |
| Resultados          | Contagens, percentuais, recortes por curso ou categoria                       | Reidentificação possível em grupos reduzidos.                             |

### 2.3 Segurança da Informação e o Privacy by Design

Privacy by Design se refere à aplicação de várias práticas e medidas que garantem a segurança e privacidade de dados de ponta a ponta no processo de design e desenvolvimento de um sistema ou produto. No projeto, isso se traduz em formular perguntas apenas quando necessárias, separar o controle de participação do conteúdo das respostas, aplicar permissões específicas e definir retenção antes da coleta. Dentro desse conceito há três pilares, sendo eles:

1.  **Confidencialidade**: somente perfis autorizados acessam pesquisas não publicadas e respostas, preferencialmente com resultados agregados para gestores.

2.  **Integridade**: alterações em questionários, respostas e relatórios devem ser controladas, validadas e, quando pertinente, auditadas para impedir manipulações.

3.  **Disponibilidade**: a aplicação deve manter acesso adequado durante as pesquisas, com cópias de segurança, restauração testada e proteção contra indisponibilidade. Esses três pilares são complementares às exigências legais de prevenção e segurança.

## 3. METODOLOGIA

O presente trabalho caracteriza-se como uma pesquisa de natureza aplicada, com abordagem qualitativa e objetivos exploratórios e descritivos, fundamentada em procedimentos de pesquisa bibliográfica, documental e análise técnica. Seu propósito consiste em identificar e propor medidas de segurança da informação e proteção de dados pessoais para o desenvolvimento de um Sistema Web de Gestão de Pesquisas por Questionários, destinado a instituições acadêmicas, considerando as exigências estabelecidas pela Lei Geral de Proteção de Dados Pessoais (LGPD).

A pesquisa possui natureza aplicada por buscar soluções para problemas relacionados à coleta, ao armazenamento, ao processamento e à proteção de informações obtidas por meio de questionários digitais. A abordagem qualitativa permite analisar os requisitos técnicos e operacionais do sistema, considerando os possíveis riscos à privacidade dos participantes e as medidas necessárias para garantir a segurança das informações.

Quanto aos objetivos, a pesquisa apresenta caráter exploratório e descritivo, uma vez que procura compreender os principais desafios relacionados à adequação de sistemas de questionários à LGPD, além de identificar e descrever os mecanismos de proteção que devem ser considerados durante o desenvolvimento do software.

A fundamentação do estudo foi realizada por meio de pesquisa documental, utilizando como principal referência a **Lei nº 13.709/2018**, que estabelece os princípios, direitos e obrigações relacionados ao tratamento de dados pessoais no Brasil. Também foram consideradas as orientações oficiais da **Autoridade Nacional de Proteção de Dados (ANPD)**, especialmente as recomendações sobre segurança da informação, prevenção de incidentes e proteção dos direitos dos titulares.

Além da fundamentação legal, foram analisados os requisitos funcionais e não funcionais, a modelagem do banco de dados, os mecanismos de controle de acesso e as propostas de anonimato previstas na documentação técnica do sistema. Essa análise permitiu identificar as principais operações de tratamento de dados e avaliar os cuidados necessários para preservar a confidencialidade, a integridade e a disponibilidade das informações.

O desenvolvimento metodológico foi organizado em quatro etapas.

Na primeira etapa, realizou-se o levantamento dos requisitos legais e dos princípios da LGPD aplicáveis ao sistema, com destaque para finalidade, adequação, necessidade, transparência, segurança e prevenção.

Na segunda etapa, foram examinadas as funcionalidades previstas para a plataforma, incluindo cadastro e gerenciamento de pesquisas, criação de questionários, definição de categorias de participantes, distribuição de senhas de acesso, coleta de respostas e geração de relatórios estatísticos.

Na terceira etapa, foram identificados os possíveis riscos associados ao tratamento das informações, principalmente aqueles relacionados ao acesso não autorizado, à identificação direta ou indireta dos participantes, à exposição das respostas e ao armazenamento inadequado dos dados.

Na quarta etapa, foram analisadas e propostas medidas técnicas e organizacionais para reduzir os riscos identificados. Entre essas medidas destacam-se a utilização de mecanismos seguros de autenticação, o controle de permissões dos usuários, a proteção das senhas de participação, a separação entre os registros de participação e as respostas, a criptografia, os registros de auditoria e a definição de políticas de retenção e exclusão de dados.

Também foi considerada a necessidade de incorporar a proteção de dados desde a concepção do sistema, de modo que os mecanismos de privacidade estejam integrados à arquitetura do software e não sejam tratados apenas como funcionalidades adicionais.

## 4. Desenvolvimento: Diagnóstico e Adequação do Software

O desenvolvimento do Sistema Web para Gestão de Pesquisas por Questionários tem como finalidade proporcionar às instituições acadêmicas uma plataforma digital para criação, aplicação, gerenciamento e análise de pesquisas institucionais. A proposta busca integrar diferentes funcionalidades em um ambiente informatizado, permitindo maior organização dos processos de coleta de informações e geração de resultados.

O sistema foi estruturado para atender diferentes categorias de participantes, como estudantes, professores e colaboradores, possibilitando a elaboração de questionários específicos para cada público. Sua utilização permitirá que as instituições realizem pesquisas de satisfação, avaliações institucionais, levantamentos de informações acadêmicas e outras atividades relacionadas à gestão educacional.

Entre as principais funcionalidades previstas estão o cadastro de pesquisas, a elaboração de questionários, a geração de senhas anônimas, o registro de respostas, o acompanhamento da participação em tempo real e a elaboração de relatórios estatísticos.

Considerando que as informações coletadas poderão envolver opiniões individuais, experiências acadêmicas e eventualmente dados pessoais sensíveis, torna-se necessário incorporar mecanismos de proteção de dados em todas as etapas do funcionamento do software.

Nesse sentido, a adequação à Lei Geral de Proteção de Dados Pessoais (LGPD) deve contemplar os princípios da finalidade, adequação, necessidade, transparência, segurança e prevenção, estabelecidos no artigo 6º da Lei nº 13.709/2018 (BRASIL, 2018).

A arquitetura do sistema prevê diferentes módulos de funcionamento, cada um com responsabilidades específicas em relação ao tratamento, armazenamento e proteção das informações.

| **Módulo do software**      | **Dados e funcionalidades**                                                               | **Adequações necessárias à LGPD**                                                                       |
|-----------------------------|-------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| Cadastro de pesquisas       | Título, descrição, período de aplicação, situação da pesquisa e categorias participantes. | Definir finalidade, base legal, prazo de conservação e informações de privacidade.                      |
| Gestão de questionários     | Perguntas objetivas, múltipla escolha, escalas e respostas abertas.                       | Evitar perguntas desnecessárias e identificar previamente a possibilidade de coleta de dados sensíveis. |
| Geração de senhas           | Senhas aleatórias associadas às categorias dos participantes.                             | Proteger as credenciais e impedir sua associação à identidade ou às respostas dos participantes.        |
| Aplicação dos questionários | Acesso por senha, preenchimento e registro de respostas.                                  | Utilizar comunicação segura, validação de dados e mecanismos que preservem o anonimato.                 |
| Controle de participação    | Quantidade de senhas emitidas, utilizadas e respostas recebidas.                          | Permitir acompanhamento estatístico sem identificar individualmente os respondentes.                    |
| Relatórios e análises       | Gráficos, percentuais, resultados por pergunta e comparação entre categorias.             | Apresentar dados agregados e impedir a identificação indireta de participantes.                         |
| Gestão de usuários          | Contas administrativas, perfis e permissões.                                              | Implementar autenticação segura e controle de acesso conforme as responsabilidades.                     |
| Auditoria                   | Registros de ações administrativas, alterações e exportações.                             | Proteger os logs e impedir que sejam utilizados para relacionar participantes às respostas.             |

A organização desses módulos demonstra que a proteção dos dados não deve estar concentrada em uma única funcionalidade. Ela precisa ser aplicada de maneira integrada, desde a configuração inicial das pesquisas até o armazenamento e a apresentação dos resultados.

### 4.1 Gestão de pesquisas e questionários

O módulo de gestão de pesquisas permitirá que usuários autorizados cadastrem e administrem pesquisas institucionais, estabelecendo título, descrição, data de início, data de encerramento e situação da pesquisa.

Também será possível organizar os participantes em categorias, permitindo que estudantes, professores e colaboradores respondam a questionários distintos, de acordo com os objetivos estabelecidos pela instituição.

O módulo de questionários contemplará questões de múltipla escolha com uma ou várias alternativas, escalas numéricas e perguntas abertas. Essa diversidade possibilita a elaboração de instrumentos adequados às diferentes necessidades de investigação acadêmica.

A modelagem do banco de dados contempla entidades destinadas ao armazenamento das pesquisas, categorias, questionários, perguntas e alternativas, estabelecendo relacionamentos que permitem a organização e a integridade das informações.

Sob a perspectiva da LGPD, a criação de questionários deverá considerar o princípio da necessidade, evitando a coleta de informações que não sejam essenciais para atingir os objetivos da pesquisa.

Por exemplo, uma avaliação sobre a qualidade dos serviços acadêmicos poderá ser realizada sem solicitar nome, CPF ou endereço do participante. A inclusão desses dados somente deverá ocorrer quando houver finalidade específica e fundamento legal adequado.

Nos casos em que o questionário envolver informações sobre saúde, religião, origem racial ou étnica e outras categorias de dados sensíveis, será necessária uma análise específica das hipóteses legais previstas no artigo 11 da LGPD.

Dessa forma, recomenda-se que o sistema permita registrar a finalidade de cada pesquisa e disponibilizar informações claras sobre o tratamento dos dados antes do início do preenchimento.

### 4.2 Geração de senhas e anonimato

Um dos principais mecanismos de proteção previstos para o sistema é a utilização de senhas anônimas para acesso aos questionários.

O funcionamento proposto consiste na geração de senhas alfanuméricas aleatórias, com oito caracteres, distribuídas em lotes associados às diferentes categorias de participantes.

Ao receber uma senha, o participante poderá acessar o questionário correspondente sem precisar criar uma conta individual na plataforma.

O processo de aplicação seguirá a seguinte sequência: o participante informa sua senha, o sistema verifica sua validade, identifica a categoria correspondente e disponibiliza o questionário. Após a conclusão e o envio das respostas, a senha será marcada como utilizada, impedindo sua reutilização.

Para proteger essas credenciais, o projeto prevê o armazenamento de seus hashes por meio do algoritmo SHA-256, evitando a conservação das senhas originais em texto puro no banco de dados.

Entretanto, é necessário destacar que o SHA-256 é uma função criptográfica de hash, e não um algoritmo de criptografia reversível. Como as senhas possuem oito caracteres, sua resistência a tentativas de descoberta deverá ser avaliada considerando a qualidade da geração aleatória e as medidas de proteção utilizadas.

Recomenda-se, portanto, que as senhas sejam produzidas por um gerador criptograficamente seguro e que sejam implementados mecanismos para limitar tentativas de acesso. A utilização de SHA-256 simples também deverá ser avaliada em relação a alternativas mais resistentes a ataques de força bruta, conforme as características dessas credenciais.

Outro aspecto fundamental está na separação entre o controle de utilização das senhas e o armazenamento das respostas.

A estrutura de dados foi concebida com registros específicos para lotes de senhas, senhas individuais, participações e respostas. As respostas são vinculadas internamente aos registros de participação e às perguntas correspondentes, enquanto não está prevista uma ligação direta entre a senha utilizada e o registro de participação.

Essa separação contribui para a preservação do anonimato. Contudo, ela não é suficiente, isoladamente, para garantir que uma resposta não possa ser associada ao participante, pois horários, registros técnicos e informações complementares poderão permitir correlações.

Por esse motivo, os mecanismos de anonimato deverão ser submetidos a testes que comprovem a impossibilidade razoável de identificar os respondentes pelos dados disponíveis no sistema.

### 4.3 Coleta, armazenamento e proteção das respostas

O módulo de aplicação dos questionários será responsável por receber e armazenar as respostas dos participantes.

Sua interface deverá apresentar navegação simples, adaptação a computadores e dispositivos móveis, além de validação das perguntas obrigatórias.

O projeto também prevê recursos para salvar o progresso durante o preenchimento e permitir a continuidade do questionário em situações de interrupção ou falhas de conexão.

Essas funcionalidades deverão ser implementadas com atenção à privacidade, especialmente quando houver armazenamento temporário de respostas no navegador ou no servidor.

Será necessário definir por quanto tempo os rascunhos permanecerão disponíveis, quais informações serão armazenadas e de que maneira serão eliminadas após a conclusão ou o abandono do questionário.

O banco de dados deverá manter as respostas relacionadas às perguntas e alternativas correspondentes, permitindo sua posterior utilização na elaboração de relatórios estatísticos.

A estrutura prevista contempla a identificação interna da participação, a pergunta respondida, a alternativa selecionada e, quando aplicável, valores de escalas e respostas textuais.

Para preservar a confidencialidade dessas informações, o sistema deverá impedir o armazenamento de identificadores pessoais desnecessários junto ao conteúdo das respostas, especialmente endereços IP, cookies e identificadores capazes de associar os registros aos participantes.

Também deverá considerar que perguntas abertas podem receber espontaneamente nomes, contatos ou outras informações identificáveis. Portanto, recomenda-se orientar os participantes a não informar dados pessoais nas respostas quando isso não for necessário à pesquisa.

Os mecanismos de segurança deverão contemplar a proteção do banco de dados, a validação das informações recebidas e o controle das operações realizadas pelos usuários autorizados.

### 4.4 Monitoramento da participação e geração de relatórios

O sistema contará com um painel administrativo destinado ao acompanhamento das pesquisas institucionais.

Esse ambiente permitirá visualizar indicadores como quantidade de senhas geradas, total de respostas recebidas, taxa de participação e distribuição das respostas entre as diferentes categorias.

O acompanhamento em tempo real representa uma funcionalidade importante para a gestão acadêmica, pois possibilita verificar a participação dos públicos envolvidos e identificar a necessidade de ampliar a divulgação de determinada pesquisa.

Além do monitoramento, o software permitirá produzir relatórios estatísticos contendo resultados por pergunta, percentuais de respostas, comparações entre categorias e representações gráficas.

Também estão previstas funcionalidades de exportação dos resultados em formatos como PDF e CSV, facilitando a utilização das informações em avaliações institucionais e estudos acadêmicos.

Entretanto, o acesso aos resultados deverá respeitar as restrições estabelecidas pela LGPD.

Os relatórios deverão priorizar dados agregados, evitando a exposição de respostas individuais ou informações que permitam identificar diretamente os participantes.

Um risco relevante ocorre quando determinada categoria possui poucos respondentes. Por exemplo, a apresentação de resultados de um grupo composto por apenas dois participantes poderá permitir que suas respostas sejam identificadas por outras pessoas que conheçam o contexto da pesquisa.

Para reduzir esse risco, recomenda-se estabelecer um número mínimo de participantes para divulgação de resultados por categoria, além de restringir combinações de filtros capazes de identificar indivíduos.

As exportações deverão observar os mesmos critérios de proteção, impedindo que arquivos gerados contenham identificadores ou informações que não poderiam ser visualizadas diretamente no sistema.

Dessa maneira, o módulo de relatórios deverá conciliar a produção de informações úteis para a gestão acadêmica com a preservação da privacidade dos participantes.

### 4.5 Painel do titular e exercício dos direitos previstos na LGPD

A LGPD assegura aos titulares de dados pessoais direitos relacionados ao acesso, à correção, à eliminação em situações legalmente previstas e à obtenção de informações sobre o tratamento de seus dados, conforme estabelecido especialmente no artigo 18 da Lei nº 13.709/2018.

Para atender a essas disposições, recomenda-se que o sistema disponibilize um ambiente de informações sobre privacidade ou um canal institucional específico para o exercício desses direitos.

Antes de responder a um questionário, o participante deverá receber informações claras sobre a finalidade da pesquisa, a instituição responsável, a utilização dos resultados, os possíveis compartilhamentos e as condições de armazenamento e conservação das informações.

Nos casos em que o tratamento estiver fundamentado no consentimento, deverão existir mecanismos adequados para registrar essa manifestação e permitir sua revogação.

É importante destacar que o consentimento não constitui a única base legal para o tratamento de dados pessoais. A hipótese aplicável deverá ser definida conforme as características e finalidades de cada pesquisa.

Existe, entretanto, uma particularidade relacionada ao funcionamento do sistema: o anonimato das respostas.

Quando uma pesquisa for efetivamente anônima, poderá não existir mecanismo capaz de localizar posteriormente a resposta de determinado participante. Consequentemente, a instituição poderá não conseguir realizar alterações ou exclusões individualizadas dessas respostas.

Essa condição deverá ser explicada antes do preenchimento, permitindo que os participantes compreendam os limites decorrentes da anonimização.

Por outro lado, os dados pessoais dos usuários administrativos, como nome, e-mail e registros de utilização da plataforma, continuarão sujeitos às regras da LGPD e aos direitos correspondentes.

Portanto, o sistema deverá distinguir os dados administrativos identificáveis dos registros de pesquisas efetivamente anônimos, estabelecendo procedimentos adequados para cada situação.

### 4.6 Segurança técnica do sistema

A segurança da informação constitui um dos principais requisitos para o funcionamento confiável da plataforma.

O desenvolvimento deverá observar os princípios da confidencialidade, integridade e disponibilidade, garantindo que as informações sejam acessadas somente por usuários autorizados, permaneçam corretas e estejam disponíveis quando necessárias. A implementação dos mecanismos de proteção deve considerar os princípios de *Privacy by Design*, que estabelecem a necessidade de incorporar a privacidade desde as etapas iniciais de desenvolvimento de produtos digitais, adotando medidas preventivas para reduzir riscos relacionados ao tratamento de dados pessoais.

#### 4.6.1 Criptografia e proteção das credenciais

O sistema prevê a utilização de mecanismos criptográficos para proteger as informações armazenadas e transmitidas.

Para a comunicação entre navegador e servidor, deverá ser utilizado o protocolo HTTPS com configurações atualizadas de TLS, reduzindo o risco de interceptação dos dados durante sua transmissão.

Para dados pessoais que necessitem de proteção adicional em repouso, poderá ser empregada criptografia baseada no algoritmo AES-256, utilizando um modo de operação seguro e mecanismos apropriados de gerenciamento das chaves criptográficas.

Quanto às credenciais de acesso administrativo, recomenda-se a utilização de funções de hash próprias para senhas, como Argon2id ou bcrypt, com parâmetros adequados de segurança.

É necessário diferenciar essas credenciais das senhas anônimas utilizadas pelos participantes, cujo mecanismo de armazenamento foi inicialmente definido com SHA-256 e deverá ser avaliado durante a implementação.

As senhas originais de usuários administrativos não deverão permanecer armazenadas em texto puro.

#### 4.6.2 Controle de acesso e autorização

O sistema contempla diferentes perfis de usuários, com responsabilidades específicas: administrador, participante, secretaria, analista de dados, suporte técnico e auditor.

O administrador será responsável pelo gerenciamento das pesquisas, questionários e configurações autorizadas.

A secretaria poderá atuar na aprovação de pesquisas e no acompanhamento dos resultados institucionais.

O analista de dados terá funções relacionadas à interpretação dos resultados e à elaboração de relatórios.

O suporte técnico será responsável por atividades de manutenção e resolução de problemas operacionais, enquanto o auditor terá acesso às informações necessárias para verificar a segurança e a conformidade do sistema.

O participante, por sua vez, utilizará a senha anônima para responder ao questionário correspondente à sua categoria, sem necessidade de uma conta administrativa.

O controle de acesso deverá aplicar o princípio do menor privilégio, permitindo que cada perfil utilize somente as funcionalidades necessárias ao desempenho de suas atividades.

Mesmo usuários com funções administrativas deverão ter acesso restrito ao conteúdo das respostas quando a pesquisa exigir anonimato.

As permissões deverão ser verificadas pelo servidor, não sendo suficiente ocultar funcionalidades na interface visual.

#### 4.6.3 Logs de auditoria

O projeto prevê mecanismos de auditoria para registrar ações relevantes realizadas pelos usuários administrativos.

Esses registros poderão conter informações como identificação do usuário institucional, ação executada, recurso afetado e data e horário da operação.

A modelagem contempla uma estrutura específica para o armazenamento desses eventos, permitindo o acompanhamento de alterações, exportações e outras atividades importantes.

Também está prevista a proteção dos logs contra alterações indevidas, incluindo a utilização de mecanismos de armazenamento imutável, conhecidos como WORM (Write Once, Read Many).

O requisito de auditoria considera um período mínimo de cinco anos para conservação desses registros. Entretanto, esse prazo deverá ser justificado e aprovado institucionalmente, pois não representa uma determinação geral da LGPD para todos os tipos de logs.

Outro cuidado importante consiste em separar os registros administrativos dos dados produzidos pelos participantes.

Os logs não deverão conter o conteúdo das respostas, senhas anônimas em texto puro ou informações que permitam relacionar uma resposta a determinado participante.

A estrutura de auditoria poderá registrar endereços IP de operações administrativas quando houver necessidade e fundamento adequado. Contudo, essa possibilidade deverá ser diferenciada do fluxo anônimo de respostas, no qual se pretende evitar a conservação de endereços IP e outros identificadores dos respondentes.

#### 4.6.4 Cópias de segurança e disponibilidade

Para preservar a disponibilidade e a integridade das informações, o sistema deverá contar com rotinas de backup e recuperação de dados.

As cópias de segurança deverão ser protegidas contra acessos não autorizados e armazenadas em ambientes adequados, com mecanismos de criptografia e controle de permissões.

Também deverão ser realizados testes periódicos de restauração, garantindo que as informações possam ser recuperadas em situações de falhas técnicas, perda de dados ou incidentes de segurança.

A infraestrutura deverá contemplar mecanismos de monitoramento da disponibilidade, prevenção de sobrecargas e proteção contra tentativas de interrupção dos serviços.

A conservação das cópias de segurança deverá observar políticas institucionais de retenção, incluindo procedimentos para descarte seguro de informações que não precisam mais ser mantidas.

## 5. Considerações Finais / Conclusão

O desenvolvimento do Sistema Web para Gestão de Pesquisas por Questionários apresenta uma proposta tecnológica voltada ao aprimoramento dos processos de coleta, organização e análise de informações em instituições acadêmicas.

A plataforma busca oferecer recursos que facilitem a realização de pesquisas institucionais, permitindo a criação de questionários específicos para diferentes categorias de participantes, o acompanhamento da participação e a geração de relatórios estatísticos para subsidiar decisões administrativas e educacionais.

A análise realizada demonstrou que a proteção dos dados pessoais constitui um aspecto fundamental para a qualidade e a confiabilidade do software, especialmente considerando a possibilidade de coleta de informações relacionadas às opiniões, experiências e características dos participantes.

Nesse contexto, a utilização de senhas anônimas, a separação entre registros de participação e respostas, o controle de acesso por perfis e a geração de relatórios agregados representam medidas relevantes para a preservação da privacidade.

Também se destacam as propostas de criptografia, proteção das credenciais, registros de auditoria, rotinas de backup e políticas de conservação e exclusão das informações.

Entretanto, foi possível identificar aspectos que ainda necessitam de aperfeiçoamento e validação técnica, principalmente aqueles relacionados à prevenção da identificação indireta dos participantes, à segurança das senhas, ao armazenamento temporário de informações e à definição de prazos de retenção.

A análise também evidenciou que a conformidade com a LGPD não pode ser alcançada apenas pela implementação de mecanismos tecnológicos. É necessária a definição de responsabilidades institucionais, finalidades específicas para o tratamento dos dados, bases legais adequadas e procedimentos de transparência e atendimento aos direitos dos titulares.

Dessa forma, considera-se que o objetivo do trabalho foi alcançado no âmbito da análise e proposição de requisitos de adequação à LGPD, permitindo identificar medidas jurídicas, técnicas e operacionais necessárias ao desenvolvimento da plataforma. Contudo, a comprovação de conformidade dependerá da efetiva implementação e validação desses mecanismos.

Conclui-se que a incorporação dos princípios de privacidade e segurança desde as primeiras etapas do desenvolvimento contribui para a construção de um sistema mais confiável, organizado e adequado às necessidades das instituições acadêmicas.

Além do atendimento às exigências legais, a adoção dessas práticas poderá representar um diferencial de qualidade do produto, fortalecendo a confiança dos usuários e proporcionando maior segurança na realização de pesquisas institucionais.

Portanto, a adequação à LGPD deve ser compreendida não apenas como uma obrigação jurídica, mas como um elemento essencial da qualidade do software e da responsabilidade das instituições no tratamento das informações de seus participantes.

## Referências

AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS (ANPD). **4 anos da Lei Geral de Proteção de Dados Pessoais.** Brasília, DF: ANPD, 14 ago. 2022. Disponível em: https://www.gov.br/anpd/pt-br/assuntos/noticias-periodo-eleitoral/4-anos-da-lei-geral-de-protecao-de-dados-pessoais. Acesso em: 22 nov. 2026.

AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS (ANPD). **Guia orientativo para definições dos agentes de tratamento de dados pessoais e do encarregado.** Brasília, DF: ANPD, 2021. Disponível em: https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-orientativo-para-definicoes-dos-agentes-de-tratamento-de-dados-pessoais-e-do-encarregado. Acesso em: 22 nov. 2026.

AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS (ANPD). **Guia orientativo sobre segurança da informação para agentes de tratamento de pequeno porte.** Brasília, DF: ANPD, 2021. Disponível em: https://www.gov.br/anpd/pt-br/centrais-de-conteudo/materiais-educativos-e-publicacoes/guia-vf.pdf. Acesso em: 22 nov. 2026.

AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS (ANPD). **Regulamentações da ANPD.** Brasília, DF: ANPD, [s. d.]. Disponível em: https://www.gov.br/anpd/pt-br/acesso-a-informacao/institucional/atos-normativos/regulamentacoes_anpd/. Acesso em: 22 nov. 2026.

AGÊNCIA NACIONAL DE PROTEÇÃO DE DADOS (ANPD). **Resolução CD/ANPD nº 15, de 24 de abril de 2024.** Aprova o Regulamento de Comunicação de Incidente de Segurança. Brasília, DF: ANPD, 2024. Disponível em: https://bibliotecadigital.mj.gov.br/handle/1/12879. Acesso em: 22 nov. 2026.

BRASIL. **Lei nº 13.709, de 14 de agosto de 2018.** Lei Geral de Proteção de Dados Pessoais (LGPD). Brasília, DF: Presidência da República, 2018. Disponível em: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709compilado.htm. Acesso em: 22 nov. 2026.

DUDZIAK, Elisabeth A. **Gestão de dados de pesquisa: o que precisamos saber hoje!** São Paulo: Universidade de São Paulo, Agência de Bibliotecas e Coleções Digitais, 2018. Disponível em: https://www.abcd.usp.br/noticias/gestao-de-dados-de-pesquisa-o-que-precisamos-saber-hoje/. Acesso em: 22 nov. 2026.

OWASP FOUNDATION. **Password Storage Cheat Sheet.** OWASP Cheat Sheet Series, [s. d.]. Disponível em: https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html. Acesso em: 22 nov. 2026.

PM3. EQUIPE DE CONTEÚDO. **Privacy by Design: saiba a importância e como aplicar em Produto.** PM3, 7 fev. 2024. Disponível em: https://pm3.com.br/blog/privacy-by-design/. Acesso em: 22 nov. 2026.
