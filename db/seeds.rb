# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Unidade.create!(
	[
		{	
			nome: 'Valonguinho',
			endereco: 'Rua Mario Santos Braga',
			numero: '30',
			bairro: 'Centro',
			cidade: 'Niterói',
			cep: '24020140',
			data_desativacao: ''
		},
		{	
			nome: 'Gragoatá',
			endereco: 'Rua Prof. Marcos Waldemar de Freitas Reis',
			numero: '100',
			bairro: 'São Domingos',
			cidade: 'Niterói',
			cep: '24210201',
			data_desativacao: ''
		},
		{	
			nome: 'Praia Vermelha',
			endereco: 'Rua Passo da Pátria',
			numero: '100',
			bairro: 'São Domingos',
			cidade: 'Niterói',
			cep: '24210240',
			data_desativacao: ''
		},
		{	
			nome: 'Desativado',
			endereco: 'Rua desativado',
			numero: '100',
			bairro: 'São Domingos',
			cidade: 'Niterói',
			cep: '24210240',
			data_desativacao: '2013-05-12'
		},
		{	
			nome: 'Desativado 2',
			endereco: 'Rua desativado 2',
			numero: '100',
			bairro: 'São Domingos',
			cidade: 'Niterói',
			cep: '24210240',
			data_desativacao: '2001-01-10'
		}
]
)