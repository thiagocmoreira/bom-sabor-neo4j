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
CREATE (associado:ASSOCIADO { nome: '', cpf: '', rg: '', filiacao: '', sexo: '', estado_civil: '', email: '', escolaridade: '', cargo: '' })



-- Mensalidade --
CREATE (mensalidade:MENSALIDADE:NAO_PAGA { vencimento: '' })



-- Lista de Compra --
CREATE (lista_de_compra:LISTA_DE_COMPRA:NAO_PAGA {
  data: ''
})



-- Fornecedores --
CREATE (seara:FORNECEDOR { nome: 'Seara', razao_social: 'Seara Alimentos S/a', cnpj: '02.914.460/0085-69' })
CREATE (copeagro:FORNECEDOR { nome: 'Copeagro', razao_social: 'Copeagro - Cooperativa Agropecuaria De Tambau E Regiao', cnpj: '13.715.182/0001-29' })
CREATE (brasnica:FORNECEDOR { nome: 'Brasnica', razao_social: 'Brasnica Frutas Tropicais Ltda', cnpj: '66.293.218/0009-47' })
CREATE (frutas_real:FORNECEDOR { nome: 'Frutas Real', razao_social: 'Distribuidora De Frutas Real Ltda', cnpj: '80.727.928/0001-01' })
CREATE (citricola_lucato:FORNECEDOR { nome: 'Citricola Lucato', razao_social: 'Citricola Lucato Comercial Importadora E Exportadora Ltda', cnpj: '00.589.220/0001-00' })



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

