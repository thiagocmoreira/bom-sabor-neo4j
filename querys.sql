-- Endereço --
CREATE (pais:PAIS {
  nome: ''
})

CREATE (estado:ESTADO {
  nome: '',
  sigla: ''
})

CREATE (cidade:CIDADE {
  nome: ''
})

CREATE (bairro:BAIRRO {
  nome: ''
})

CREATE (rua:RUA {
  nome: ''
})

CREATE (endereco:ENDERECO {
  numero: 0,
  cep: ''
})



-- Telefone --
CREATE (telefone:TELEFONE {
  numero: '',
  ddd: ''
})




-- Cooperativas --
CREATE (cooperativa:COOPERATIVA {
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

