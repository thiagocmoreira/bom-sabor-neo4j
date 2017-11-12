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
CREATE (Progresso:BAIRRO {
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
CREATE (matheusNicolas:ASSOCIADO {
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




-- Mensalidade --
CREATE (mensalidade1_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-05-20' })
CREATE (mensalidade1_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '' }]->(mensalidade1_matheusNicolas)

CREATE (mensalidade2_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-06-20' })
CREATE (mensalidade2_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '' }]->(mensalidade2_matheusNicolas)

CREATE (mensalidade3_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-07-20' })
CREATE (mensalidade3_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '' }]->(mensalidade3_matheusNicolas)

CREATE (mensalidade4_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-09-20' })
CREATE (mensalidade4_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '' }]->(mensalidade4_matheusNicolas)

CREATE (mensalidade5_matheusNicolas:MENSALIDADE:PAGA { vencimento: '2017-10-20' })
CREATE (mensalidade5_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '' }]->(mensalidade5_matheusNicolas)

CREATE (mensalidade6_matheusNicolas:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-20' })
CREATE (mensalidade6_matheusNicolas)-[:DO_PLANO]->(plano_anual)
CREATE (matheusNicolas)-[:PAGOU { data: '' }]->(mensalidade6_matheusNicolas)

CREATE (mensalidade1_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-06-16' })
CREATE (mensalidade1_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '' }]->(mensalidade1_TomasOtavio)

CREATE (mensalidade2_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-08-16' })
CREATE (mensalidade2_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '' }]->(mensalidade2_TomasOtavio)

CREATE (mensalidade3_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-09-16' })
CREATE (mensalidade3_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '' }]->(mensalidade3_TomasOtavio)

CREATE (mensalidade4_TomasOtavio:MENSALIDADE:PAGA { vencimento: '2017-10-16' })
CREATE (mensalidade4_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '' }]->(mensalidade4_TomasOtavio)

CREATE (mensalidade5_TomasOtavio:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-16' })
CREATE (mensalidade5_TomasOtavio)-[:DO_PLANO]->(plano_anual)
CREATE (TomasOtavio)-[:PAGOU { data: '' }]->(mensalidade5_TomasOtavio)

CREATE (mensalidade1_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-08-15' })
CREATE (mensalidade1_SarahFernanda)-[:DO_PLANO]->(plano_semestral)
CREATE (SarahFernanda)-[:PAGOU { data: '' }]->(mensalidade1_SarahFernanda)

CREATE (mensalidade2_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-09-15' })
CREATE (mensalidade2_SarahFernanda)-[:DO_PLANO]->(plano_semestral)
CREATE (SarahFernanda)-[:PAGOU { data: '' }]->(mensalidade2_SarahFernanda)

CREATE (mensalidade3_SarahFernanda:MENSALIDADE:PAGA { vencimento: '2017-10-15' })
CREATE (mensalidade3_SarahFernanda)-[:DO_PLANO]->(plano_semestral)
CREATE (SarahFernanda)-[:PAGOU { data: '' }]->(mensalidade3_SarahFernanda)

CREATE (mensalidade4_SarahFernanda:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-15' })
CREATE (mensalidade4_SarahFernanda)-[:DO_PLANO]->(plano_semestral)
CREATE (SarahFernanda)-[:PAGOU { data: '' }]->(mensalidade4_SarahFernanda)

CREATE (mensalidade1_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-09-10' })
CREATE (mensalidade1_MariaEduarda)-[:DO_PLANO]->(plano_trimestral)
CREATE (MariaEduarda)-[:PAGOU { data: '' }]->(mensalidade1_MariaEduarda)

CREATE (mensalidade2_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-10-10' })
CREATE (mensalidade2_MariaEduarda)-[:DO_PLANO]->(plano_trimestral)
CREATE (MariaEduarda)-[:PAGOU { data: '' }]->(mensalidade2_MariaEduarda)

CREATE (mensalidade3_MariaEduarda:MENSALIDADE:PAGA { vencimento: '2017-11-10' })
CREATE (mensalidade3_MariaEduarda)-[:DO_PLANO]->(plano_trimestral)
CREATE (MariaEduarda)-[:PAGOU { data: '' }]->(mensalidade3_MariaEduarda)



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
CREATE (encomenda1_seara:ENCOMENDA { data: '2017-08-20' })
CREATE (encomenda1_seara)-[:CONTEMPLA]->(lista_de_compra1_matheusNicolas)

CREATE (encomenda1_brasnica:ENCOMENDA { data: '2017-09-25' })
CREATE (encomenda1_brasnica)-[:CONTEMPLA]->(lista_de_compra1_TomasOtavio)

CREATE (encomenda1_copeagro:ENCOMENDA { data: '2017-10-10' })
CREATE (encomenda1_copeagro)-[:CONTEMPLA]->(lista_de_compra1_SarahFernanda)

CREATE (encomenda2_copeagro:ENCOMENDA { data: '2017-10-20' })
CREATE (encomenda2_copeagro)-[:CONTEMPLA]->(lista_de_compra2_SarahFernanda)

CREATE (encomenda2_seara:ENCOMENDA { data: '2017-10-20' })
CREATE (encomenda2_seara)-[:CONTEMPLA]->(lista_de_compra2_SarahFernanda)

CREATE (encomenda3_seara:ENCOMENDA { data: '2017-11-10' })
CREATE (encomenda3_seara)-[:CONTEMPLA]->(lista_de_compra3_SarahFernanda)
CREATE (encomenda3_seara)-[:CONTEMPLA]->(lista_de_compra2_matheusNicolas)

CREATE (encomenda1_citricola_lucato:ENCOMENDA { data: '2017-11-10' })
CREATE (encomenda1_citricola_lucato)-[:CONTEMPLA]->(lista_de_compra3_SarahFernanda)
CREATE (encomenda1_citricola_lucato)-[:CONTEMPLA]->(lista_de_compra1_MariaEduarda)

CREATE (encomenda1_frutas_real:ENCOMENDA { data: '2017-11-10' })
CREATE (encomenda1_frutas_real)-[:CONTEMPLA]->(lista_de_compra2_matheusNicolas)



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




CREATE (endereco)-[NA_RUA]->(rua)
CREATE (rua)-[NO_BAIRRO]->(bairro)
CREATE (bairro)-[NA_CIDADE]->(cidade)
CREATE (cidade)-[NO_ESTADO]->(estado)
CREATE (estado)-[NO_PAIS]->(pais)

CREATE (associado)-[:NATURAL_DE]->(cidade)
CREATE (associado)-[:MORA_EM]->(endereco)
CREATE (associado)-[:CONTATO]->(telefone)

CREATE (BomSabor)-[:REALIZA { data: '' }]->(encomenda)
CREATE (encomenda)-[:CONTEM { quantidade: 0 }]->(alimento_da_encomenda)
CREATE (alimento_da_encomenda)-[:PERTENCE { quantidade: 0 }]->(fornecedor)
CREATE (alimento_da_encomenda)-[:DO_TIPO]->(alimento)
CREATE (fornecedor)-[:FORNECE { quantidade_disponivel: 0 }]->(alimento)
CREATE (fornecedor)-[:GERA]->(nota_fiscal)
CREATE (nota_fiscal)-[:REFERENTE]->(encomenda)

