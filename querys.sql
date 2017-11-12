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
  email: 'mariaeem@bol.com.br,
  escolaridade: 'Ensino Superior Incompleto',
  cargo: 'Estudante'
})



-- Mensalidade --
CREATE (mensalidade1_associado1:MENSALIDADE:PAGA { vencimento: '2017-05-20' })
CREATE (mensalidade2_associado1:MENSALIDADE:PAGA { vencimento: '2017-06-20' })
CREATE (mensalidade3_associado1:MENSALIDADE:PAGA { vencimento: '2017-07-20' })
CREATE (mensalidade4_associado1:MENSALIDADE:PAGA { vencimento: '2017-09-20' })
CREATE (mensalidade5_associado1:MENSALIDADE:PAGA { vencimento: '2017-10-20' })
CREATE (mensalidade6_associado1:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-20' })

CREATE (mensalidade1_associado2:MENSALIDADE:PAGA { vencimento: '2017-06-16' })
CREATE (mensalidade2_associado2:MENSALIDADE:PAGA { vencimento: '2017-08-16' })
CREATE (mensalidade3_associado2:MENSALIDADE:PAGA { vencimento: '2017-09-16' })
CREATE (mensalidade4_associado2:MENSALIDADE:PAGA { vencimento: '2017-10-16' })
CREATE (mensalidade5_associado2:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-16' })

CREATE (mensalidade1_associado3:MENSALIDADE:PAGA { vencimento: '2017-08-15' })
CREATE (mensalidade2_associado3:MENSALIDADE:PAGA { vencimento: '2017-09-15' })
CREATE (mensalidade3_associado3:MENSALIDADE:PAGA { vencimento: '2017-10-15' })
CREATE (mensalidade4_associado3:MENSALIDADE:NAO_PAGA { vencimento: '2017-11-15' })

CREATE (mensalidade1_associado4:MENSALIDADE:PAGA { vencimento: '2017-09-10' })
CREATE (mensalidade2_associado4:MENSALIDADE:PAGA { vencimento: '2017-10-10' })
CREATE (mensalidade3_associado4:MENSALIDADE:PAGA { vencimento: '2017-11-10' })



-- Lista de Compra --
CREATE (lista_de_compra1_associado1:LISTA_DE_COMPRA:PAGA { data: '2017-08-19' })
CREATE (lista_de_compra2_associado1:LISTA_DE_COMPRA:NAO_PAGA { data: '2017-11-10' })

CREATE (lista_de_compra1_associado2:LISTA_DE_COMPRA:PAGA { data: '2017-09-23' })

CREATE (lista_de_compra1_associado3:LISTA_DE_COMPRA:PAGA { data: '2017-10-02' })
CREATE (lista_de_compra2_associado3:LISTA_DE_COMPRA:PAGA { data: '2017-10-18' })
CREATE (lista_de_compra2_associado3:LISTA_DE_COMPRA:PAGA { data: '2017-11-01' })

CREATE (lista_de_compra1_associado4:LISTA_DE_COMPRA:NAO_PAGA { data: '2017-11-07' })




-- Fornecedores --
CREATE (seara:FORNECEDOR { nome: 'Seara', razao_social: 'Seara Alimentos S/a', cnpj: '02.914.460/0085-69' })
CREATE (copeagro:FORNECEDOR { nome: 'Copeagro', razao_social: 'Copeagro - Cooperativa Agropecuaria De Tambau E Regiao', cnpj: '13.715.182/0001-29' })
CREATE (brasnica:FORNECEDOR { nome: 'Brasnica', razao_social: 'Brasnica Frutas Tropicais Ltda', cnpj: '66.293.218/0009-47' })
CREATE (frutas_real:FORNECEDOR { nome: 'Frutas Real', razao_social: 'Distribuidora De Frutas Real Ltda', cnpj: '80.727.928/0001-01' })
CREATE (citricola_lucato:FORNECEDOR { nome: 'Citricola Lucato', razao_social: 'Citricola Lucato Comercial Importadora E Exportadora Ltda', cnpj: '00.589.220/0001-00' })



-- Encomendas --
CREATE (encomenda1_seara:ENCOMENDA { data: '2017-08-20' })
CREATE (encomenda2_seara:ENCOMENDA { data: '2017-10-20' })
CREATE (encomenda3_seara:ENCOMENDA { data: '2017-11-10' })


CREATE (encomenda1_copeagro:ENCOMENDA { data: '2017-10-10' })
CREATE (encomenda2_copeagro:ENCOMENDA { data: '2017-10-20' })

CREATE (encomenda1_brasnica:ENCOMENDA { data: '2017-09-25' })

CREATE (encomenda1_frutas_real:ENCOMENDA { data: '2017-11-10' })

CREATE (encomenda1_citricola_lucato:ENCOMENDA { data: '2017-11-10' })




-- Alimentos de uma encomenda --
CREATE(alimento_da_encomenda:ALIMENTO_DA_ENCOMENDA {
  quantidade_total: 0
})





-- Nota fiscal --
CREATE (nota_fiscal:NOTA_FISCAL:NAO_PAGA {
  vencimento: '',
  valor: 0
})




CREATE (endereco)-[NA_RUA]->(rua)
CREATE (rua)-[NO_BAIRRO]->(bairro)
CREATE (bairro)-[NA_CIDADE]->(cidade)
CREATE (cidade)-[NO_ESTADO]->(estado)
CREATE (estado)-[NO_PAIS]->(pais)

CREATE (associado)-[:NATURAL_DE]->(cidade)
CREATE (associado)-[:MORA_EM]->(endereco)
CREATE (associado)-[:CONTATO]->(telefone)

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

