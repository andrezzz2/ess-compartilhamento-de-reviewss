Feature: Listas de assistidos
    O usuário possui 3 listas (filmes, séries e livros), podendo adicionar 
    itens a elas com os status (assistido, assistindo ou abandonado) e notas
    de 1 a 5

    Background:
        Given Eu estou logado com o usuário "usuario-de-testes-das-listas-1" de senha "senha123"
        And Eu tenho todas as listas com algum item

    Scenario: O usuário tenta acessar a aba de listas a partir da página Home
        When Eu clico no meu icone de usuário
        Then O site mostra mostra todas as 3 listas

    Scenario: O usuário tem sua lista de filmes com algum filme
        When Eu clico no meu icone de usuário
        And Eu seleciono a aba "Lists"
        Then A lista de "movies" mostra todos os itens que ela possui

    Scenario: O usuário tem sua lista de series com alguma serie
        When Eu clico no meu icone de usuário
        And Eu seleciono a aba "Lists"
        Then A lista de "series" mostra todas as itens que ela possui

    Scenario: O usuário tem sua lista de livros com algum livro
        When Eu clico no meu icone de usuário
        And Eu seleciono a aba "Lists"
        Then A lista de "books" mostra todas os itens que ela possui

    Scenario: O usuário deseja ver mais informações sobre um filme da sua lista de filmes
        Given Eu estou na página "/profile/usuario-de-testes-das-listas-1"
        When Eu clico no filme de id "1"
        Then O filme de id "1" se expade e me mostra todas as suas informações

    Scenario: O usuário deseja ver mais informações sobre um serie da sua lista de series
        Given Eu estou na página "/profile/usuario-de-testes-das-listas-1"
        When Eu clico na serie de id "1"
        Then A serie de id "1" se expade e me mostra todas as suas informações

    Scenario: O usuário deseja ver mais informações sobre um livro da sua lista de livros
        Given Eu estou na página "/profile/usuario-de-testes-das-listas-1"
        When Eu clico no livro de id "1"
        Then O livro de id "1" se expade e me mostra todas as suas informações
