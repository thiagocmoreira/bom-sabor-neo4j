// Endereço
// País
CREATE (Brasil:PAIS { nome: 'Brasil', ddi: 55 })

// UF
CREATE (DistritoFederal:UF {  nome: 'Distrito Federal', sigla: 'DF' })
CREATE (SaoPaulo:UF { nome: 'Sao Paulo', sigla: 'SP' })
CREATE (SantaCatarina:UF { nome: 'Santa Catarina', sigla: 'SC' })

// Cidade
CREATE (Brasilia:CIDADE { nome: 'Brasília' })
CREATE (BragancaPaulista:CIDADE { nome: 'Braganca Paulista' })
CREATE (Blumenau:CIDADE { nome: 'Blumenau' })

// Bairro
// Brasilia/DF
CREATE (Ceilandia:BAIRRO { nome: 'Ceilandia' })
CREATE (Planaltina:BAIRRO { nome: 'Planaltina' })
// Sao Paulo/SP
CREATE (CampoNovo:BAIRRO { nome: 'Campo Novo' })
CREATE (JardimEuropa:BAIRRO { nome: 'JardimEuropa' })
// Blumenau/SC
CREATE (PassoManso:BAIRRO { nome: 'Passo Manso' })
CREATE (Progresso:BAIRRO { nome: 'Progresso' })

// Endereco
// Ceilandia/DF
CREATE (EQNOBlocoC:ENDERECO {
  linha1: 'Quadra EQNO 3-5 Bloco C',
  numero: 939,
  cep: '72250513'
})
// Planaltina/DF
CREATE (Quadra13Conjunto7:ENDERECO {
  linha1: 'Quadra 13 Conjunto 7',
  complemento: 'Casa',
  numero: 310,
  cep: '73355307'
})
// Campo Novo/SP
CREATE (PracaManoelRamosdeLima:ENDERECO {
  linha1: 'Praça Manoel Ramos de Lima',
  numero: 769,
  cep: '71080025'
})
// Jardim Europa/SP
CREATE (AlamedaPolonia:ENDERECO {
  linha1: 'Alameda Polonia',
  numero: 28,
  cep: '71083451'
})
// Passo Manso/SC
CREATE (RuaAlbertSchulz:ENDERECO {
  linha1: 'RuaAlbertSchulz',
  numero: 632,
  cep: '89032330'
})
// Progresso/SC
CREATE (RuaOscarJosePering:ENDERECO {
  linha1: 'Rua Oscar José Pering',
  numero: 694,
  cep: '89027411'
})

// Tipo Endereço
CREATE (Casa:TIPO_ENDERECO {
  nome: 'Casa'
})
CREATE (Apartamento:TIPO_ENDERECO {
  nome: 'Apartamento'
})

// No País
CREATE (DistritoFederal)-[:NO_PAIS]->(Brasil)
CREATE (SaoPaulo)-[:NO_PAIS]->(Brasil)
CREATE (SantaCatarina)-[:NO_PAIS]->(Brasil)

// Na UF
CREATE (Brasilia)-[:NA_UF]->(DistritoFederal)
CREATE (BragancaPaulista)-[:NA_UF]->(SaoPaulo)
CREATE (Blumenau)-[:NA_UF]->(SantaCatarina)

// Na Cidade
// Brasilia/DF
CREATE (Ceilandia)-[:NA_CIDADE]->(Brasilia)
CREATE (Planaltina)-[:NA_CIDADE]->(Brasilia)
// Braganca Paulista/SP
CREATE (CampoNovo)-[:NA_CIDADE]->(BragancaPaulista)
CREATE (JardimEuropa)-[:NA_CIDADE]->(BragancaPaulista)
// Blumenau/SC
CREATE (PassoManso)-[:NA_CIDADE]->(Blumenau)
CREATE (Progresso)-[:NA_CIDADE]->(Blumenau)

// No Bairro
// Brasilia/DF
CREATE (EQNOBlocoC)-[:NO_BAIRRO]->(Ceilandia)
CREATE (Quadra13Conjunto7)-[:NO_BAIRRO]->(Planaltina)
// Braganca Paulista/SP
CREATE (PracaManoelRamosdeLima)-[:NO_BAIRRO]->(CampoNovo)
CREATE (AlamedaPolonia)-[:NO_BAIRRO]->(JardimEuropa)
// Blumenau/SC
CREATE (RuaAlbertSchulz)-[:NO_BAIRRO]->(PassoManso)
CREATE (RuaOscarJosePering)-[:NO_BAIRRO]->(Progresso)

// No Endereco
// Brasilia/DF
CREATE (Casa)-[:NO_ENDERECO]->(EQNOBlocoC)
CREATE (Casa)-[:NO_ENDERECO]->(Quadra13Conjunto7)
// Braganca Paulista/SP
CREATE (Apartamento)-[:NO_ENDERECO]->(PracaManoelRamosdeLima)
CREATE (Casa)-[:NO_ENDERECO]->(AlamedaPolonia)
// Blumenau/SC
CREATE (Casa)-[:NO_ENDERECO]->(RuaAlbertSchulz)
CREATE (Apartamento)-[:NO_ENDERECO]->(RuaOscarJosePering)


// Telefone
// DF
CREATE (telDF1:TELEFONE { numero: '984632764', ddd: 61 })
CREATE (telDF2:TELEFONE { numero: '33654231', ddd: 61 })

// SP
CREATE (telSP1:TELEFONE { numero: '83654327', ddd: 11 })
CREATE (telSP2:TELEFONE { numero: '32764391', ddd: 11 })

// SC
CREATE (telSC1:TELEFONE { numero: '83527901', ddd: 49 })
CREATE (telSC2:TELEFONE { numero: '83562834', ddd: 47 })


// Cooperativas
CREATE (BomSabor:COOPERATIVA { nome: 'Bom Sabor' })


// Planos
// Mensal
CREATE (PlanoMensal:PLANO { nome: 'Mensal', valor_mensal: 200 })
CREATE (BomSabor)-[:CONTEM]->(PlanoMensal)

// Trimestral
CREATE (PlanoTrimestral:PLANO { nome: 'Trimestral', valor_mensal: 180 })
CREATE (BomSabor)-[:CONTEM]->(PlanoTrimestral)

// Semestral
CREATE (PlanoSemestral:PLANO { nome: 'Semestral', valor_mensal: 150 })
CREATE (BomSabor)-[:CONTEM]->(PlanoSemestral)

// Anual
CREATE (PlanoAnual:PLANO { nome: 'Anual', valor_mensal: 110 })
CREATE (BomSabor)-[:CONTEM]->(PlanoAnual)


// Associados
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
CREATE (MatheusNicolas)-[:CONTRATA { data_inicial: '2017-05-20', vencimento: 20 }]->(PlanoAnual)

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
CREATE (TomasOtavio)-[:CONTRATA { data_inicial: '2017-06-16',vencimento: 16 }]->(PlanoAnual)

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
CREATE (SarahFernanda)-[:CONTRATA { data_inicial: '2017-08-15', vencimento: 15 }]->(PlanoSemestral)

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
CREATE (MariaEduarda)-[:CONTRATA { data_inicial: '2017-09-10', vencimento: 10 }]->(PlanoTrimestral)


// Alimentos
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