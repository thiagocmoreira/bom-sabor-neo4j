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
CREATE (plano_trimestral:PLANO { nome: 'trimestral', valor_mensal: 180 })
CREATE (plano_semestral:PLANO { nome: 'semestral', valor_mensal: 150 })
CREATE (plano_anual:PLANO { nome: 'anual', valor_mensal: 110 })



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
CREATE (mensalidade2_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-06-20' })
CREATE (mensalidade3_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-07-20' })
CREATE (mensalidade4_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-09-20' })
CREATE (mensalidade5_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-10-20' })
CREATE (mensalidade6_matheusNicolas:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-20' })

CREATE (mensalidade1_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-06-16' })
CREATE (mensalidade2_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-08-16' })
CREATE (mensalidade3_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-09-16' })
CREATE (mensalidade4_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-10-16' })
CREATE (mensalidade5_TomasOtavio:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-16' })

CREATE (mensalidade1_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-08-15' })
CREATE (mensalidade2_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-09-15' })
CREATE (mensalidade3_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-10-15' })
CREATE (mensalidade4_SarahFernanda:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-15' })

CREATE (mensalidade1_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-09-10' })
CREATE (mensalidade2_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-10-10' })
CREATE (mensalidade3_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-11-10' })



-- Lista de Compra --
CREATE (lista_de_compra1_matheusNicolas:LISTA_DE_COMPRA:PAGA { data: '2017-08-19' })
CREATE (lista_de_compra1_TomasOtavio:LISTA_DE_COMPRA:PAGA { data: '2017-09-23' })
CREATE (lista_de_compra1_SarahFernanda:LISTA_DE_COMPRA:PAGA { data: '2017-10-02' })
CREATE (lista_de_compra2_SarahFernanda:LISTA_DE_COMPRA:PAGA { data: '2017-10-18' })
CREATE (lista_de_compra2_SarahFernanda:LISTA_DE_COMPRA:PAGA { data: '2017-11-01' })
CREATE (lista_de_compra1_MariaEduarda:LISTA_DE_COMPRA:NAO_PAGA { data: '2017-11-07' })
CREATE (lista_de_compra2_matheusNicolas:LISTA_DE_COMPRA:NAO_PAGA { data: '2017-11-10' })



-- Fornecedores --
CREATE (seara:FORNECEDOR { nome: 'Seara', razao_social: 'Seara Alimentos S/a', cnpj: '02.914.460/0085-69' })
CREATE (copeagro:FORNECEDOR { nome: 'Copeagro', razao_social: 'Copeagro - Cooperativa Agropecuaria De Tambau E Regiao', cnpj: '13.715.182/0001-29' })
CREATE (brasnica:FORNECEDOR { nome: 'Brasnica', razao_social: 'Brasnica Frutas Tropicais Ltda', cnpj: '66.293.218/0009-47' })
CREATE (frutas_real:FORNECEDOR { nome: 'Frutas Real', razao_social: 'Distribuidora De Frutas Real Ltda', cnpj: '80.727.928/0001-01' })
CREATE (citricola_lucato:FORNECEDOR { nome: 'Citricola Lucato', razao_social: 'Citricola Lucato Comercial Importadora E Exportadora Ltda', cnpj: '00.589.220/0001-00' })



-- Encomendas --
CREATE (encomenda1_seara:ENCOMENDA { data: '2017-08-20' })
CREATE (encomenda1_brasnica:ENCOMENDA { data: '2017-09-25' })
CREATE (encomenda1_copeagro:ENCOMENDA { data: '2017-10-10' })
CREATE (encomenda2_copeagro:ENCOMENDA { data: '2017-10-20' })
CREATE (encomenda2_seara:ENCOMENDA { data: '2017-10-20' })
CREATE (encomenda3_seara:ENCOMENDA { data: '2017-11-10' })
CREATE (encomenda1_citricola_lucato:ENCOMENDA { data: '2017-11-10' })
CREATE (encomenda1_frutas_real:ENCOMENDA { data: '2017-11-10' })



-- Alimentos de uma encomenda --
CREATE(banana_encomenda1_seara:ALIMENTO_DA_ENCOMENDA { quantidade_total: 10 })
CREATE(maca_encomenda1_seara:ALIMENTO_DA_ENCOMENDA { quantidade_total: 50 })
CREATE(banana_encomenda2_seara:ALIMENTO_DA_ENCOMENDA { quantidade_total: 100 })
CREATE(arroz_encomenda2_seara:ALIMENTO_DA_ENCOMENDA { quantidade_total: 20 })
CREATE(melao_encomenda2_seara:ALIMENTO_DA_ENCOMENDA { quantidade_total: 50 })
CREATE(cenoura_encomenda3_seara:ALIMENTO_DA_ENCOMENDA { quantidade_total: 200 })
CREATE(cebola_encomenda3_seara:ALIMENTO_DA_ENCOMENDA { quantidade_total: 150 })
CREATE(feijao_encomenda1_copeagro:ALIMENTO_DA_ENCOMENDA { quantidade_total: 30 })
CREATE(couve_encomenda1_copeagro:ALIMENTO_DA_ENCOMENDA { quantidade_total: 50 })
CREATE(morango_encomenda1_copeagro:ALIMENTO_DA_ENCOMENDA { quantidade_total: 100 })
CREATE(melao_encomenda2_copeagro:ALIMENTO_DA_ENCOMENDA { quantidade_total: 80 })
CREATE(batata_encomenda1_brasnica:ALIMENTO_DA_ENCOMENDA { quantidade_total: 100 })
CREATE(tangerina_encomenda1_brasnica:ALIMENTO_DA_ENCOMENDA { quantidade_total: 80 })
CREATE(milho_verde_encomenda1_frutas_real:ALIMENTO_DA_ENCOMENDA { quantidade_total: 10 })
CREATE(tangerina_encomenda1_frutas_real:ALIMENTO_DA_ENCOMENDA { quantidade_total: 20 })
CREATE(feijao_encomenda1_citricola_lucato:ALIMENTO_DA_ENCOMENDA { quantidade_total: 10 })




-- Nota fiscal --
CREATE (nota_fiscal_encomenda1_seara:NOTA_FISCAL:PAGA { vencimento: '2017-08-22', valor: 2000 })
CREATE (nota_fiscal_encomenda1_brasnica:NOTA_FISCAL:PAGA { vencimento: '2017-09-27', valor: 250 })
CREATE (nota_fiscal_encomenda1_copeagro:NOTA_FISCAL:PAGA { vencimento: '2017-10-12', valor: 1800 })
CREATE (nota_fiscal_encomenda2_copeagro:NOTA_FISCAL:PAGA { vencimento: '2017-10-22', valor: 800 })
CREATE (nota_fiscal_encomenda2_seara:NOTA_FISCAL:PAGA { vencimento: '2017-10-22', valor: 760 })
CREATE (nota_fiscal_encomenda3_seara:NOTA_FISCAL:PAGA { vencimento: '2017-11-12', valor: 120 })
CREATE (nota_fiscal_encomenda1_citricola_lucato:NOTA_FISCAL:PAGA { vencimento: '2017-11-12', valor: 450 })
CREATE (nota_fiscal_encomenda1_frutas_real:NOTA_FISCAL:PAGA { vencimento: '2017-11-12', valor: 380 })

CREATE (associado)-[:REALIZA]->(lista_de_compra)

CREATE (cooperativa)-[:CONTEM]->(plano)
CREATE (associado)-[:CONTRATA {
  data_inicial: '',
  vencimento: ''
}]->(plano)
CREATE (associado)-[:PAGOU {
  data: ''
}]->(mensalidade)
CREATE (mensalidade)-[:DO_PLANO]->(plano)
CREATE (cooperativa)-[:CONTRATA {
  data_de_contrato: ''
}]->(fornecedor)
CREATE (cooperativa)-[:REALIZA {
  data: ''
}]->(encomenda)
CREATE (encomenda)-[:CONTEMPLA]->(lista_de_compra)
CREATE (lista_de_compra)-[:CONTEM {
  quantidade: 0
}]->(alimento)
CREATE (encomenda)-[:CONTEM {
  quantidade: 0
}]->(alimento_da_encomenda)
CREATE (alimento_da_encomenda)-[:PERTENCE {
  quantidade: 0
}]->(fornecedor)
CREATE (alimento_da_encomenda)-[:DO_TIPO]->(alimento)
CREATE (fornecedor)-[:FORNECE {
  quantidade_disponivel: 0
}]->(alimento)
CREATE (fornecedor)-[:GERA]->(nota_fiscal)
CREATE (nota_fiscal)-[:REFERENTE]->(encomenda)

