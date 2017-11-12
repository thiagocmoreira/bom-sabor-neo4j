-- Endereço --

-- País --
CREATE (Brasil:PAIS {
  nome: 'Brasil',
  ddi: 55
})

-- UF --
CREATE (DistritoFederal:UF {
  nome: 'Distrito Federal',
  sigla: 'DF'
})

CREATE (SaoPaulo:UF {
  nome: 'Sao Paulo',
  sigla: 'SP'
})

CREATE (SantaCatarina:UF {
  nome: 'Santa Catarina',
  sigla: 'SC'
})

-- Cidade --
CREATE (Brasilia:CIDADE {
  nome: 'Brasília'
})

CREATE (BragancaPaulista:CIDADE {
  nome: 'Braganca Paulista'
})

CREATE (Blumenau:CIDADE {
  nome: 'Blumenau'
})

-- Bairro --
-- DF --
CREATE (Ceilandia:BAIRRO {
  nome: 'Ceilandia'
})

CREATE (Planaltina:BAIRRO {
  nome: 'Planaltina'
})

-- SP --
CREATE (CampoNovo:BAIRRO {
  nome: 'Campo Novo'
})

CREATE (JardimEuropa:BAIRRO {
  nome: 'JardimEuropa'
})

-- SC --
CREATE (PassoManso:BAIRRO {
  nome: 'Passo Mano'
})

CREATE (Progresso:BAIRRO {
  nome: 'JardimEuropa'
})

-- Endereco --
-- Ceilandia/DF --
CREATE (EQNOBlocoC:ENDERECO {
  linha1: 'Quadra EQNO 3-5 Bloco C'
  complemento: ''
  numero: 939,
  cep: '72250513'
})

-- Planaltina/DF --
CREATE (Quadra13Conjunto7:ENDERECO {
  linha1: 'Quadra 13 Conjunto 7'
  complemento: 'Casa'
  numero: 310,
  cep: '73355307'
})

-- Campo Novo/SP --
CREATE (PracaManoelRamosdeLima:ENDERECO {
  linha1: 'Praça Manoel Ramos de Lima'
  complemento: ''
  numero: 769,
  cep: '71080025'
})

-- Jardim Europa/SP --
CREATE (AlamedaPolonia:ENDERECO {
  linha1: 'Alameda Polonia'
  complemento: ''
  numero: 28,
  cep: '71083451'
})

-- PassoManso/SC --
CREATE (RuaAlbertSchulz:ENDERECO {
  linha1: 'RuaAlbertSchulz'
  complemento: ''
  numero: 632,
  cep: '89032330'
})

-- Progresso/SC --
CREATE (RuaOscarJosePering:ENDERECO {
  linha1: 'Rua Oscar José Pering'
  complemento: ''
  numero: 694,
  cep: '89027411'
})

-- Tipo Endereco --
CREATE (casa:TIPO_ENDERECO {
  nome: 'Casa'
})

CREATE (apartamento:TIPO_ENDERECO {
  nome: 'Apartamento'
})

-- No País --
CREATE (DistritoFederal)-[NO_PAIS]->(Brasil)
CREATE (SaoPaulo)-[NO_PAIS]->(Brasil)
CREATE (SantaCatarina)-[NO_PAIS]->(Brasil)

-- Na UF --
CREATE (Brasilia)-[NA_UF]->(DistritoFederal)
CREATE (BragancaPaulista)-[NA_UF]->(SaoPaulo)
CREATE (Blumenau)-[NA_UF]->(SantaCatarina)

-- Na Cidade --
-- Brasilia/DF --
CREATE (Ceilandia)-[NA_CIDADE]->(Brasilia)
CREATE (Planaltina)-[NA_CIDADE]->(Brasilia)
-- Braganca Paulista/SP --
CREATE (CampoNovo)-[NA_CIDADE]->(BragancaPaulista)
CREATE (JardimEuropa)-[NA_CIDADE]->(BragancaPaulista)
-- Braganca Paulista/SP --
CREATE (PassoManso)-[NA_CIDADE]->(Blumenau)
CREATE (Progresso)-[NA_CIDADE]->(Blumenau)

-- No Bairro --
-- DF --
CREATE (EQNOBlocoC)-[NO_BAIRRO]->(Ceilandia)
CREATE (Quadra13Conjunto7)-[NO_BAIRRO]->(Planaltina)
-- SP --
CREATE (PracaManoelRamosdeLima)-[NO_BAIRRO]->(CampoNovo)
CREATE (AlamedaPolonia)-[NO_BAIRRO]->(JardimEuropa)
-- SC --
CREATE (RuaAlbertSchulz)-[NO_BAIRRO]->(PassoManso)
CREATE (RuaOscarJosePering)-[NO_BAIRRO]->(Progresso)

-- No Endereco --
-- DF --
CREATE (Casa)-[NO_ENDERECO]->(EQNOBlocoC)
CREATE (Casa)-[NO_ENDERECO]->(Quadra13Conjunto7)
-- SP --
CREATE (Apartamento)-[NO_ENDERECO]->(PracaManoelRamosdeLima)
CREATE (Casa)-[NO_ENDERECO]->(AlamedaPolonia)
-- SC --
CREATE (Casa)-[NO_ENDERECO]->(RuaAlbertSchulz)
CREATE (Apartamento)-[NO_ENDERECO]->(RuaOscarJosePering)

-- Telefone --
-- DF --
CREATE (telDF1:TELEFONE {
  numero: '984632764',
  ddd: 61
})

CREATE (telDF2:TELEFONE {
  numero: '33654231',
  ddd: 61
})

-- SP --
CREATE (telSP1:TELEFONE {
  numero: '83654327',
  ddd: 11
})

CREATE (telSP2:TELEFONE {
  numero: '32764391',
  ddd: 11
})

-- SC --
CREATE (telSC1:TELEFONE {
  numero: '83527901',
  ddd: 49
})

CREATE (telSC2:TELEFONE {
  numero: '83562834',
  ddd: 47
})

-- Cooperativas --
CREATE (BomSabor:COOPERATIVA {
  nome: 'Bom Sabor'
})



-- Planos --
CREATE (plano_mensal:PLANO { nome: 'mensal', valor_mensal: 200 })
CREATE (BomSabor)-[:CONTEM]->(plano_mensal)

CREATE (plano_trimestral:PLANO { nome: 'trimestral', valor_mensal: 180 })
CREATE (BomSabor)-[:CONTEM]->(plano_trimestral)

CREATE (plano_semestral:PLANO { nome: 'semestral', valor_mensal: 150 })
CREATE (BomSabor)-[:CONTEM]->(plano_semestral)

CREATE (plano_anual:PLANO { nome: 'anual', valor_mensal: 110 })
CREATE (BomSabor)-[:CONTEM]->(plano_anual)



-- Alimentos --
CREATE (maca:ALIMENTO { nome: 'Maçã', tipo: 'fruta' })
CREATE (banana:ALIMENTO { nome: 'Banana', tipo: 'fruta' })
CREATE (cenoura:ALIMENTO { nome: 'Cenoura', tipo: 'verdura' })
CREATE (alface:ALIMENTO { nome: 'Alface', tipo: 'folha' })
CREATE (arroz:ALIMENTO { nome: 'Arroz', tipo: 'semente' })
CREATE (cebola:ALIMENTO { nome: 'Cebola', tipo: 'verdura' })
CREATE (couve:ALIMENTO { nome: 'Couve', tipo: 'folha' })
CREATE (tangerina:ALIMENTO { nome: 'Tangerina', tipo: 'fruta' })
CREATE (milho_verde:ALIMENTO { nome: 'Milho Verde', tipo: 'verdura' })
CREATE (feijao:ALIMENTO { nome: 'Feijão', tipo: 'semente' })
CREATE (batata:ALIMENTO { nome: 'Batata', tipo: 'verdura' })
CREATE (uva:ALIMENTO { nome: 'Uva', tipo: 'fruta' })
CREATE (morango:ALIMENTO { nome: 'Morango', tipo: 'fruta' })
CREATE (abacate:ALIMENTO { nome: 'Abacate', tipo: 'fruta' })
CREATE (melao:ALIMENTO { nome: 'Melão', tipo: 'fruta' })



-- Associados --
CREATE (MatheusNicolas:ASSOCIADO {
  nome: 'Matheus Nicolas Anthony Souza',
  cpf: '98320866987',
  rg: '203466202',
  filiacao: 'Maria Nicolas Anthony Souza',
  sexo: 'Masculino',
  estado_civil: 'Casado',
  email: 'matheusnicolasanthonysouza_@tam.com.br',
  escolaridade: 'Ensino Superior Completo',
  cargo: 'Comerciante'
})
CREATE (matheusNicolas)-[:CONTRATA { data_inicial: '2017-05-20', vencimento: 20 }]->(plano_anual)

CREATE (TomasOtavio:ASSOCIADO {
  nome: 'Tomas Otavio Gomes',
  cpf: '82233986997',
  rg: '323978277',
  filiacao: 'Joana Otavio Gomes',
  sexo: 'Masculino',
  estado_civil: 'Solteiro',
  email: 'tomazinho1995@gmail.com',
  escolaridade: 'Ensino Fundamental Incompleto',
  cargo: 'Estudante'
})
CREATE (TomasOtavio)-[:CONTRATA { data_inicial: '2017-06-16',vencimento: 16 }]->(plano_anual)

CREATE (SarahFernanda:ASSOCIADO {
  nome: 'Sarah Fernanda Cardoso',
  cpf: '91449037909',
  rg: '169407755',
  filiacao: 'Bernardete Fernanda Cardoso',
  sexo: 'Feminino',
  estado_civil: 'Viuvo',
  email: 'sarahfernandacardoso@outlook.com.br',
  escolaridade: 'Ensino Fundamental Completo',
  cargo: 'Estudante'
})
CREATE (SarahFernanda)-[:CONTRATA { data_inicial: '2017-08-15', vencimento: 15 }]->(plano_semestral)

CREATE (MariaEduarda:ASSOCIADO {
  nome: 'Maria Eduarda Evelyn Moura',
  cpf: '30078262925',
  rg: '487231028',
  filiacao: 'Manoela Evelyn Moura',
  sexo: 'Feminino',
  estado_civil: 'Casado',
  email: 'mariaeem@bol.com.br',
  escolaridade: 'Ensino Superior Incompleto',
  cargo: 'Estudante'
})
CREATE (MariaEduarda)-[:CONTRATA { data_inicial: '2017-09-10', vencimento: 10 }]->(plano_trimestral)


-- Natural De --
CREATE (MatheusNicolas)-[:NATURAL_DE]->(Brasilia)
CREATE (TomasOtavio)-[:NATURAL_DE]->(Blumenau)
CREATE (SarahFernanda)-[:NATURAL_DE]->(Brasilia)
CREATE (MariaEduarda)-[:NATURAL_DE]->(BragancaPaulista)

-- Mora em --
CREATE (MatheusNicolas)-[:MORA_EM]->(EQNOBlocoC)
CREATE (TomasOtavio)-[:MORA_EM]->(RuaAlbertSchulz)
CREATE (SarahFernanda)-[:MORA_EM]->(Quadra13Conjunto7)
CREATE (MariaEduarda)-[:MORA_EM]->(PracaManoelRamosdeLima)

-- Contato --
CREATE (MatheusNicolas)-[:CONTATO]->(telDF1)
CREATE (TomasOtavio)-[:CONTATO]->(telSC1)
CREATE (TomasOtavio)-[:CONTATO]->(telSC2)
CREATE (SarahFernanda)-[:CONTATO]->(telDF2)
CREATE (MariaEduarda)-[:CONTATO]->(telSP1)
CREATE (MariaEduarda)-[:CONTATO]->(telSP2)

-- Mensalidade --
CREATE (mensalidade1_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-05-20' })
CREATE (mensalidade1_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '2017-05-19' }]->(mensalidade1_matheusNicolas)

CREATE (mensalidade2_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-06-20' })
CREATE (mensalidade2_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '2017-06-20' }]->(mensalidade2_matheusNicolas)

CREATE (mensalidade3_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-07-20' })
CREATE (mensalidade3_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '2017-07-19' }]->(mensalidade3_matheusNicolas)

CREATE (mensalidade4_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-09-20' })
CREATE (mensalidade4_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '2017-09-20' }]->(mensalidade4_matheusNicolas)

CREATE (mensalidade5_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-10-20' })
CREATE (mensalidade5_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '2017-10-18' }]->(mensalidade5_matheusNicolas)

CREATE (mensalidade6_matheusNicolas:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-20' })
CREATE (mensalidade6_matheusNicolas)-[:DO_PLANO]->(plano_anual)

CREATE (mensalidade1_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-06-16' })
CREATE (mensalidade1_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '2017-06-16' }]->(mensalidade1_TomasOtavio)

CREATE (mensalidade2_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-08-16' })
CREATE (mensalidade2_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '2017-08-15' }]->(mensalidade2_TomasOtavio)

CREATE (mensalidade3_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-09-16' })
CREATE (mensalidade3_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '2017-09-15' }]->(mensalidade3_TomasOtavio)

CREATE (mensalidade4_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-10-16' })
CREATE (mensalidade4_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '2017-10-16' }]->(mensalidade4_TomasOtavio)

CREATE (mensalidade5_TomasOtavio:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-16' })
CREATE (mensalidade5_TomasOtavio)-[:DO_PLANO]->(plano_anual)

CREATE (mensalidade1_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-08-15' })
CREATE (mensalidade1_SarahFernanda)-[:DO_PLANO]->(plano_semestral)
CREATE (SarahFernanda)-[:PAGOU { data: '2017-08-15' }]->(mensalidade1_SarahFernanda)

CREATE (mensalidade2_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-09-15' })
CREATE (mensalidade2_SarahFernanda)-[:DO_PLANO]->(plano_semestral)
CREATE (SarahFernanda)-[:PAGOU { data: '2017-09-15' }]->(mensalidade2_SarahFernanda)

CREATE (mensalidade3_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-10-15' })
CREATE (mensalidade3_SarahFernanda)-[:DO_PLANO]->(plano_semestral)
CREATE (SarahFernanda)-[:PAGOU { data: '2017-10-14' }]->(mensalidade3_SarahFernanda)

CREATE (mensalidade4_SarahFernanda:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-15' })
CREATE (mensalidade4_SarahFernanda)-[:DO_PLANO]->(plano_semestral)

CREATE (mensalidade1_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-09-10' })
CREATE (mensalidade1_MariaEduarda)-[:DO_PLANO]->(plano_trimestral)
CREATE (MariaEduarda)-[:PAGOU { data: '2017-09-10' }]->(mensalidade1_MariaEduarda)

CREATE (mensalidade2_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-10-10' })
CREATE (mensalidade2_MariaEduarda)-[:DO_PLANO]->(plano_trimestral)
CREATE (MariaEduarda)-[:PAGOU { data: '2017-10-09' }]->(mensalidade2_MariaEduarda)

CREATE (mensalidade3_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-11-10' })
CREATE (mensalidade3_MariaEduarda)-[:DO_PLANO]->(plano_trimestral)
CREATE (MariaEduarda)-[:PAGOU { data: '2017-11-09' }]->(mensalidade3_MariaEduarda)



-- Lista de Compra --
CREATE (lista_de_compra1_matheusNicolas:LISTA_DE_COMPRA:PAGA { data: '2017-08-19' })
CREATE (matheusNicolas)-[:REALIZA]->(lista_de_compra1_matheusNicolas)
CREATE (lista_de_compra1_matheusNicolas)-[:CONTEM { quantidade: 10 }]->(banana)
CREATE (lista_de_compra1_matheusNicolas)-[:CONTEM { quantidade: 30 }]->(maca)
CREATE (lista_de_compra1_matheusNicolas)-[:CONTEM { quantidade: 12 }]->(cenoura)
CREATE (lista_de_compra1_matheusNicolas)-[:CONTEM { quantidade: 15 }]->(cebola)

CREATE (lista_de_compra1_TomasOtavio:LISTA_DE_COMPRA:PAGA { data: '2017-09-23' })
CREATE (TomasOtavio)-[:REALIZA]->(lista_de_compra1_TomasOtavio)
CREATE (lista_de_compra1_TomasOtavio)-[:CONTEM { quantidade: 50 }]->(melao)
CREATE (lista_de_compra1_TomasOtavio)-[:CONTEM { quantidade: 5 }]->(arroz)
CREATE (lista_de_compra1_TomasOtavio)-[:CONTEM { quantidade: 30 }]->(batata)
CREATE (lista_de_compra1_TomasOtavio)-[:CONTEM { quantidade: 8 }]->(feijao)

CREATE (lista_de_compra1_SarahFernanda:LISTA_DE_COMPRA:PAGA { data: '2017-10-02' })
CREATE (SarahFernanda)-[:REALIZA]->(lista_de_compra1_SarahFernanda)
CREATE (lista_de_compra1_SarahFernanda)-[:CONTEM { quantidade: 30 }]->(melao)
CREATE (lista_de_compra1_SarahFernanda)-[:CONTEM { quantidade: 40 }]->(tangerina)
CREATE (lista_de_compra1_SarahFernanda)-[:CONTEM { quantidade: 12 }]->(morango)
CREATE (lista_de_compra1_SarahFernanda)-[:CONTEM { quantidade: 18 }]->(uva)

CREATE (lista_de_compra2_SarahFernanda:LISTA_DE_COMPRA:PAGA { data: '2017-10-18' })
CREATE (SarahFernanda)-[:REALIZA]->(lista_de_compra2_SarahFernanda)
CREATE (lista_de_compra2_SarahFernanda)-[:CONTEM { quantidade: 8 }]->(couve)
CREATE (lista_de_compra2_SarahFernanda)-[:CONTEM { quantidade: 22 }]->(arroz)
CREATE (lista_de_compra2_SarahFernanda)-[:CONTEM { quantidade: 34 }]->(melao)
CREATE (lista_de_compra2_SarahFernanda)-[:CONTEM { quantidade: 10 }]->(alface)

CREATE (lista_de_compra3_SarahFernanda:LISTA_DE_COMPRA:PAGA { data: '2017-11-01' })
CREATE (SarahFernanda)-[:REALIZA]->(lista_de_compra3_SarahFernanda)
CREATE (lista_de_compra3_SarahFernanda)-[:CONTEM { quantidade: 30 }]->(morango)
CREATE (lista_de_compra3_SarahFernanda)-[:CONTEM { quantidade: 60 }]->(cenoura)
CREATE (lista_de_compra3_SarahFernanda)-[:CONTEM { quantidade: 20 }]->(arroz)
CREATE (lista_de_compra3_SarahFernanda)-[:CONTEM { quantidade: 14 }]->(abacate)

CREATE (lista_de_compra1_MariaEduarda:LISTA_DE_COMPRA:NAO_PAGA { data: '2017-11-07' })
CREATE (MariaEduarda)-[:REALIZA]->(lista_de_compra1_MariaEduarda)
CREATE (lista_de_compra1_MariaEduarda)-[:CONTEM { quantidade: 80 }]->(milho_verde)
CREATE (lista_de_compra1_MariaEduarda)-[:CONTEM { quantidade: 20 }]->(feijao)
CREATE (lista_de_compra1_MariaEduarda)-[:CONTEM { quantidade: 20 }]->(arroz)

CREATE (lista_de_compra2_matheusNicolas:LISTA_DE_COMPRA:NAO_PAGA { data: '2017-11-10' })
CREATE (MariaEduarda)-[:REALIZA]->(lista_de_compra2_matheusNicolas)
CREATE (lista_de_compra2_matheusNicolas)-[:CONTEM { quantidade: 18 }]->(arroz)
CREATE (lista_de_compra2_matheusNicolas)-[:CONTEM { quantidade: 20 }]->(batata)
CREATE (lista_de_compra2_matheusNicolas)-[:CONTEM { quantidade: 120 }]->(banana)



-- Fornecedores --
CREATE (seara:FORNECEDOR { nome: 'Seara', razao_social: 'Seara Alimentos S/a', cnpj: '02.914.460/0085-69' })
CREATE (BomSabor)-[:CONTRATA { data_de_contrato: '2017-06-10' }]->(seara)

CREATE (copeagro:FORNECEDOR { nome: 'Copeagro', razao_social: 'Copeagro - Cooperativa Agropecuaria De Tambau E Regiao', cnpj: '13.715.182/0001-29' })
CREATE (BomSabor)-[:CONTRATA { data_de_contrato: '2017-05-23' }]->(copeagro)

CREATE (brasnica:FORNECEDOR { nome: 'Brasnica', razao_social: 'Brasnica Frutas Tropicais Ltda', cnpj: '66.293.218/0009-47' })
CREATE (BomSabor)-[:CONTRATA { data_de_contrato: '2017-03-01' }]->(brasnica)

CREATE (frutas_real:FORNECEDOR { nome: 'Frutas Real', razao_social: 'Distribuidora De Frutas Real Ltda', cnpj: '80.727.928/0001-01' })
CREATE (BomSabor)-[:CONTRATA { data_de_contrato: '2017-04-14' }]->(frutas_real)

CREATE (citricola_lucato:FORNECEDOR { nome: 'Citricola Lucato', razao_social: 'Citricola Lucato Comercial Importadora E Exportadora Ltda', cnpj: '00.589.220/0001-00' })
CREATE (BomSabor)-[:CONTRATA { data_de_contrato: '2017-09-25' }]->(citricola_lucato)



-- Encomendas --
CREATE (encomenda1:ENCOMENDA { data: '2017-08-20' })
CREATE (encomenda1)-[:CONTEMPLA]->(lista_de_compra1_matheusNicolas)

CREATE (encomenda2:ENCOMENDA { data: '2017-09-25' })
CREATE (encomenda2)-[:CONTEMPLA]->(lista_de_compra1_TomasOtavio)

CREATE (encomenda3:ENCOMENDA { data: '2017-10-10' })
CREATE (encomenda3)-[:CONTEMPLA]->(lista_de_compra1_SarahFernanda)

CREATE (encomenda4:ENCOMENDA { data: '2017-10-20' })
CREATE (encomenda4)-[:CONTEMPLA]->(lista_de_compra2_SarahFernanda)

CREATE (encomenda5:ENCOMENDA { data: '2017-11-10' })
CREATE (encomenda5)-[:CONTEMPLA]->(lista_de_compra1_MariaEduarda)
CREATE (encomenda5)-[:CONTEMPLA]->(lista_de_compra2_matheusNicolas)
CREATE (encomenda5)-[:CONTEMPLA]->(lista_de_compra3_SarahFernanda)

CREATE (BomSabor)-[:REALIZA]->(encomenda1)
CREATE (BomSabor)-[:REALIZA]->(encomenda2)
CREATE (BomSabor)-[:REALIZA]->(encomenda3)
CREATE (BomSabor)-[:REALIZA]->(encomenda4)
CREATE (BomSabor)-[:REALIZA]->(encomenda5)



-- Alimentos de uma encomenda --
CREATE (banana_encomenda1:ALIMENTO_DA_ENCOMENDA { quantidade_total: 10 })
CREATE (banana_encomenda1)-[:DO_TIPO]->(banana)
CREATE (banana_encomenda1)-[:PERTENCE { quantidade: 10 }]->(citricola_lucato)


CREATE (maca_encomenda1:ALIMENTO_DA_ENCOMENDA { quantidade_total: 30 })
CREATE (maca_encomenda1)-[:DO_TIPO]->(maca)
CREATE (maca_encomenda1)-[:PERTENCE { quantidade: 30 }]->(citricola_lucato)

CREATE (cenoura_encomenda1:ALIMENTO_DA_ENCOMENDA { quantidade_total: 12 })
CREATE (cenoura_encomenda1)-[:DO_TIPO]->(cenoura)
CREATE (cenoura_encomenda1)-[:PERTENCE { quantidade: 12 }]->(citricola_lucato)

CREATE (cebola_encomenda1:ALIMENTO_DA_ENCOMENDA { quantidade_total: 15 })
CREATE (cebola_encomenda1)-[:DO_TIPO]->(cebola)
CREATE (cebola_encomenda1)-[:PERTENCE { quantidade: 15 }]->(citricola_lucato)

CREATE (melao_encomenda2:ALIMENTO_DA_ENCOMENDA { quantidade_total: 50 })
CREATE (melao_encomenda2)-[:DO_TIPO]->(melao)
CREATE (melao_encomenda2)-[:PERTENCE { quantidade: 20 }]->(frutas_real)
CREATE (melao_encomenda2)-[:PERTENCE { quantidade: 30 }]->(brasnica)

CREATE (arroz_encomenda2:ALIMENTO_DA_ENCOMENDA { quantidade_total: 5 })
CREATE (arroz_encomenda2)-[:DO_TIPO]->(arroz)
CREATE (arroz_encomenda2)-[:PERTENCE { quantidade: 5 }]->(frutas_real)

CREATE (batata_encomenda2:ALIMENTO_DA_ENCOMENDA { quantidade_total: 30 })
CREATE (batata_encomenda2)-[:DO_TIPO]->(batata)
CREATE (batata_encomenda2)-[:PERTENCE { quantidade: 30 }]->(brasnica)

CREATE (feijao_encomenda2:ALIMENTO_DA_ENCOMENDA { quantidade_total: 8 })
CREATE (feijao_encomenda2)-[:DO_TIPO]->(feijao)
CREATE (feijao_encomenda2)-[:PERTENCE { quantidade: 8 }]->(frutas_real)

CREATE (melao_encomenda3:ALIMENTO_DA_ENCOMENDA { quantidade_total: 30 })
CREATE (melao_encomenda3)-[:DO_TIPO]->(melao)
CREATE (melao_encomenda3)-[:PERTENCE { quantidade: 30 }]->(copeagro)

CREATE (tangerina_encomenda3:ALIMENTO_DA_ENCOMENDA { quantidade_total: 40 })
CREATE (tangerina_encomenda3)-[:DO_TIPO]->(tangerina)
CREATE (tangerina_encomenda3)-[:PERTENCE { quantidade: 24 }]->(copeagro)
CREATE (tangerina_encomenda3)-[:PERTENCE { quantidade: 26 }]->(brasnica)

CREATE (morango_encomenda3:ALIMENTO_DA_ENCOMENDA { quantidade_total: 12 })
CREATE (morango_encomenda3)-[:DO_TIPO]->(morango)
CREATE (morango_encomenda3)-[:PERTENCE { quantidade: 12 }]->(brasnica)

CREATE (uva_encomenda3:ALIMENTO_DA_ENCOMENDA { quantidade_total: 18 })
CREATE (uva_encomenda3)-[:DO_TIPO]->(uva)
CREATE (uva_encomenda3)-[:PERTENCE { quantidade: 18 }]->(copeagro)

CREATE (couve_encomenda4:ALIMENTO_DA_ENCOMENDA { quantidade_total: 8 })
CREATE (couve_encomenda4)-[:DO_TIPO]->(couve)
CREATE (couve_encomenda4)-[:PERTENCE { quantidade: 8 }]->(brasnica)

CREATE (arroz_encomenda4:ALIMENTO_DA_ENCOMENDA { quantidade_total: 22 })
CREATE (arroz_encomenda4)-[:DO_TIPO]->(arroz)
CREATE (arroz_encomenda4)-[:PERTENCE { quantidade: 22 }]->(copeagro)

CREATE (melao_encomenda4:ALIMENTO_DA_ENCOMENDA { quantidade_total: 34 })
CREATE (melao_encomenda4)-[:DO_TIPO]->(melao)
CREATE (melao_encomenda4)-[:PERTENCE { quantidade: 30 }]->(seara)
CREATE (melao_encomenda4)-[:PERTENCE { quantidade: 4 }]->(brasnica)

CREATE (alface_encomenda4:ALIMENTO_DA_ENCOMENDA { quantidade_total: 10 })
CREATE (alface_encomenda4)-[:DO_TIPO]->(alface)
CREATE (alface_encomenda4)-[:PERTENCE { quantidade: 10 }]->(seara)

CREATE (milho_verde_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 80 })
CREATE (milho_verde_encomenda5)-[:DO_TIPO]->(milho_verde)
CREATE (milho_verde_encomenda5)-[:PERTENCE { quantidade: 60 }]->(brasnica)
CREATE (milho_verde_encomenda5)-[:PERTENCE { quantidade: 10 }]->(citricola_lucato)
CREATE (milho_verde_encomenda5)-[:PERTENCE { quantidade: 10 }]->(seara)

CREATE (feijao_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 20 })
CREATE (feijao_encomenda5)-[:DO_TIPO]->(feijao)
CREATE (feijao_encomenda5)-[:PERTENCE { quantidade: 20 }]->(seara)

CREATE (arroz_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 58 })
CREATE (arroz_encomenda5)-[:DO_TIPO]->(arroz)
CREATE (arroz_encomenda5)-[:PERTENCE { quantidade: 40 }]->(frutas_real)
CREATE (arroz_encomenda5)-[:PERTENCE { quantidade: 18 }]->(brasnica)

CREATE (batata_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 20 })
CREATE (batata_encomenda5)-[:DO_TIPO]->(batata)
CREATE (batata_encomenda5)-[:PERTENCE { quantidade: 20 }]->(seara)

CREATE (banana_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 120 })
CREATE (banana_encomenda5)-[:DO_TIPO]->(banana)
CREATE (banana_encomenda5)-[:PERTENCE { quantidade: 100 }]->(citricola_lucato)
CREATE (banana_encomenda5)-[:PERTENCE { quantidade: 20 }]->(seara)

CREATE (morango_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 30 })
CREATE (morango_encomenda5)-[:DO_TIPO]->(morango)
CREATE (morango_encomenda5)-[:PERTENCE { quantidade: 30 }]->(citricola_lucato)

CREATE (cenoura_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 60 })
CREATE (cenoura_encomenda5)-[:DO_TIPO]->(cenoura)
CREATE (cenoura_encomenda5)-[:PERTENCE { quantidade: 60 }]->(brasnica)

CREATE (abacate_encomenda5:ALIMENTO_DA_ENCOMENDA { quantidade_total: 14 })
CREATE (abacate_encomenda5)-[:DO_TIPO]->(abacate)
CREATE (abacate_encomenda5)-[:PERTENCE { quantidade: 14 }]->(frutas_real)


CREATE (seara)-[:FORNECE]->(melao)
CREATE (seara)-[:FORNECE]->(alface)
CREATE (seara)-[:FORNECE]->(milho_verde)
CREATE (seara)-[:FORNECE]->(feijao)
CREATE (seara)-[:FORNECE]->(batata)
CREATE (seara)-[:FORNECE]->(banana)
CREATE (seara)-[:FORNECE]->(abacate)
CREATE (seara)-[:FORNECE]->(arroz)

CREATE (copeagro)-[:FORNECE]->(tangerina)
CREATE (copeagro)-[:FORNECE]->(uva)
CREATE (copeagro)-[:FORNECE]->(arroz)
CREATE (copeagro)-[:FORNECE]->(feijao)
CREATE (copeagro)-[:FORNECE]->(morango)
CREATE (copeagro)-[:FORNECE]->(melao)

CREATE (brasnica)-[:FORNECE]->(melao)
CREATE (brasnica)-[:FORNECE]->(batata)
CREATE (brasnica)-[:FORNECE]->(tangerina)
CREATE (brasnica)-[:FORNECE]->(morango)
CREATE (brasnica)-[:FORNECE]->(couve)
CREATE (brasnica)-[:FORNECE]->(milho_verde)
CREATE (brasnica)-[:FORNECE]->(arroz)
CREATE (brasnica)-[:FORNECE]->(cenoura)
CREATE (brasnica)-[:FORNECE]->(abacate)

CREATE (frutas_real)-[:FORNECE]->(melao)
CREATE (frutas_real)-[:FORNECE]->(arroz)
CREATE (frutas_real)-[:FORNECE]->(feijao)
CREATE (frutas_real)-[:FORNECE]->(abacate)
CREATE (frutas_real)-[:FORNECE]->(uva)
CREATE (frutas_real)-[:FORNECE]->(cebola)
CREATE (frutas_real)-[:FORNECE]->(couve)

CREATE (citricola_lucato)-[:FORNECE]->(banana)
CREATE (citricola_lucato)-[:FORNECE]->(maca)
CREATE (citricola_lucato)-[:FORNECE]->(cenoura)
CREATE (citricola_lucato)-[:FORNECE]->(cebola)
CREATE (citricola_lucato)-[:FORNECE]->(milho_verde)
CREATE (citricola_lucato)-[:FORNECE]->(morango)
CREATE (citricola_lucato)-[:FORNECE]->(couve)
CREATE (citricola_lucato)-[:FORNECE]->(tangerina)


CREATE (encomenda1)-[:CONTEM]->(banana_encomenda1)
CREATE (encomenda1)-[:CONTEM]->(maca_encomenda1)
CREATE (encomenda1)-[:CONTEM]->(cenoura_encomenda1)
CREATE (encomenda1)-[:CONTEM]->(cebola_encomenda1)

CREATE (encomenda1)-[:CONTEM]->(melao_encomenda2)
CREATE (encomenda2)-[:CONTEM]->(arroz_encomenda2)
CREATE (encomenda2)-[:CONTEM]->(batata_encomenda2)
CREATE (encomenda2)-[:CONTEM]->(feijao_encomenda2)

CREATE (encomenda3)-[:CONTEM]->(melao_encomenda3)
CREATE (encomenda3)-[:CONTEM]->(tangerina_encomenda3)
CREATE (encomenda3)-[:CONTEM]->(morango_encomenda3)
CREATE (encomenda3)-[:CONTEM]->(uva_encomenda3)

CREATE (encomenda4)-[:CONTEM]->(couve_encomenda4)
CREATE (encomenda4)-[:CONTEM]->(arroz_encomenda4)
CREATE (encomenda4)-[:CONTEM]->(melao_encomenda4)
CREATE (encomenda4)-[:CONTEM]->(alface_encomenda4)

CREATE (encomenda5)-[:CONTEM]->(milho_verde_encomenda5)
CREATE (encomenda5)-[:CONTEM]->(feijao_encomenda5)
CREATE (encomenda5)-[:CONTEM]->(arroz_encomenda5)
CREATE (encomenda5)-[:CONTEM]->(batata_encomenda5)
CREATE (encomenda5)-[:CONTEM]->(banana_encomenda5)
CREATE (encomenda5)-[:CONTEM]->(morango_encomenda5)
CREATE (encomenda5)-[:CONTEM]->(cenoura_encomenda5)
CREATE (encomenda5)-[:CONTEM]->(abacate_encomenda5)



-- Nota fiscal --
CREATE (nota_fiscal_encomenda1_citricola_lucato:NOTA_FISCAL:PAGA { vencimento: '2017-08-22', valor: 100 })
CREATE (citricola_lucato)-[:GERA]->(nota_fiscal_encomenda1_citricola_lucato)
CREATE (nota_fiscal_encomenda1_citricola_lucato)-[:REFERENTE]->(encomenda1)

CREATE (nota_fiscal_encomenda2_frutas_real:NOTA_FISCAL:PAGA { vencimento: '2017-09-27', valor: 200 })
CREATE (frutas_real)-[:GERA]->(nota_fiscal_encomenda2_frutas_real)
CREATE (nota_fiscal_encomenda2_frutas_real)-[:REFERENTE]->(encomenda2)

CREATE (nota_fiscal_encomenda2_brasnica:NOTA_FISCAL:PAGA { vencimento: '2017-09-27', valor: 321 })
CREATE (brasnica)-[:GERA]->(nota_fiscal_encomenda2_brasnica)
CREATE (nota_fiscal_encomenda2_brasnica)-[:REFERENTE]->(encomenda2)

CREATE (nota_fiscal_encomenda3_copeagro:NOTA_FISCAL:PAGA { vencimento: '2017-10-12', valor: 850 })
CREATE (copeagro)-[:GERA]->(nota_fiscal_encomenda3_copeagro)
CREATE (nota_fiscal_encomenda3_copeagro)-[:REFERENTE]->(encomenda3)

CREATE (nota_fiscal_encomenda3_brasnica:NOTA_FISCAL:PAGA { vencimento: '2017-10-12', valor: 240 })
CREATE (brasnica)-[:GERA]->(nota_fiscal_encomenda3_brasnica)
CREATE (nota_fiscal_encomenda3_brasnica)-[:REFERENTE]->(encomenda3)

CREATE (nota_fiscal_encomenda4_brasnica:NOTA_FISCAL:PAGA { vencimento: '2017-10-22', valor: 133 })
CREATE (brasnica)-[:GERA]->(nota_fiscal_encomenda4_brasnica)
CREATE (nota_fiscal_encomenda4_brasnica)-[:REFERENTE]->(encomenda4)

CREATE (nota_fiscal_encomenda4_copeagro:NOTA_FISCAL:PAGA { vencimento: '2017-10-22', valor: 89 })
CREATE (copeagro)-[:GERA]->(nota_fiscal_encomenda4_copeagro)
CREATE (nota_fiscal_encomenda4_copeagro)-[:REFERENTE]->(encomenda4)

CREATE (nota_fiscal_encomenda4_seara:NOTA_FISCAL:PAGA { vencimento: '2017-10-22', valor: 20 })
CREATE (seara)-[:GERA]->(nota_fiscal_encomenda4_seara)
CREATE (nota_fiscal_encomenda4_seara)-[:REFERENTE]->(encomenda4)

CREATE (nota_fiscal_encomenda5_seara:NOTA_FISCAL:PAGA { vencimento: '2017-11-12', valor: 340 })
CREATE (seara)-[:GERA]->(nota_fiscal_encomenda5_seara)
CREATE (nota_fiscal_encomenda5_seara)-[:REFERENTE]->(encomenda5)

CREATE (nota_fiscal_encomenda5_brasnica:NOTA_FISCAL:PAGA { vencimento: '2017-11-12', valor: 550 })
CREATE (brasnica)-[:GERA]->(nota_fiscal_encomenda5_brasnica)
CREATE (nota_fiscal_encomenda5_brasnica)-[:REFERENTE]->(encomenda5)

CREATE (nota_fiscal_encomenda5_citricola_lucato:NOTA_FISCAL:PAGA { vencimento: '2017-11-12', valor: 120 })
CREATE (citricola_lucato)-[:GERA]->(nota_fiscal_encomenda5_citricola_lucato)
CREATE (nota_fiscal_encomenda5_citricola_lucato)-[:REFERENTE]->(encomenda5)

CREATE (nota_fiscal_encomenda5_frutas_real:NOTA_FISCAL:PAGA { vencimento: '2017-11-12', valor: 502 })
CREATE (frutas_real)-[:GERA]->(nota_fiscal_encomenda5_frutas_real)
CREATE (nota_fiscal_encomenda5_frutas_real)-[:REFERENTE]->(encomenda5)


