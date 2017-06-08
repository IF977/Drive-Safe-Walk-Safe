# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
require 'date'

csv_acidentes_2015 = File.read(Rails.root.join('lib','seeds','acidentes-transito-2015.csv'))
csv_acidentes_2016 = File.read(Rails.root.join('lib','seeds','acidentes-transito-2016.csv'))
csv = CSV.parse(csv_acidentes_2015 + csv_acidentes_2016, :headers => true, :quote_char => "\x00")

i=0
csv.each do |row|
    linha = row.to_s.split(";")
    acidente = Acidente.new
    i=i+1
    puts i
    acidente['bairro'] = linha[4].to_s
    acidente['endereco'] = linha[5].to_s
    acidente['numero'] = linha[6].to_i
    acidente['complemento'] = linha[7].to_s
    acidente['natureza'] = linha[8].to_s
    acidente['descricao'] = linha[9].to_s
    acidente['vitimas'] = linha[19].to_i
    
    data_hora = DateTime.strptime(linha[2] + 'T' + linha[3][0..-5] + '+00:00', '%Y-%m-%dT%H:%M:%S%z')
    acidente['data_hora'] = data_hora
    
    acidente.save!
end