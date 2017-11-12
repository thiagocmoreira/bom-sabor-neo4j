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
CREATE (plano:PLANO {
  nome: '',
  valor_mensal: ''
})




-- Mensalidade --
CREATE (mensalidade:MENSALIDADE:NAO_PAGA {
  vencimento: ''
})





-- Alimentos --
CREATE (alimento:ALIMENTO {
  nome: '',
  tipo: ''
})




-- Associados --
CREATE (associado:ASSOCIADO {
  nome: '',
  cpf: '',
  rg: '',
  filiacao: '',
  sexo: '',
  estado_civil: '',
  email: '',
  escolaridade: '',
  cargo: ''
})





-- Lista de Compra --
CREATE (lista_de_compra:LISTA_DE_COMPRA:NAO_PAGA {
  data: ''
})




-- Fornecedores --
CREATE (fornecedor:FORNECEDOR {
  nome: '',
  cnpj: ''
})





-- Encomendas --
CREATE (encomenda:ENCOMENDA {
  data: ''
})





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

