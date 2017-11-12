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