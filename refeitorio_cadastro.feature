Feature: Cadastro de Aluno
    Como novo aluno quero me cadastrar no sistema do refeitório do IFPI para que possa reserva e acessar refeições

Scenario: Cadastro sem preecher todos os campos
    Given que estou na página de cadastro de alunos
    When não preencho todos campos obrigatórios
    And submeto o formulário
    Then é exebida uma mensagem de erro
 
Scenario: Cadastro com um curso não listado
    Given que estou na página de cadastro de alunos
    When preencho todos os campos obrigatórios
    And submeto o formulário com um curso não listado
    Then é exebida uma mensagem de erro

Scenario: Cadastro com um email inválido
    Given que estou na página de cadastro de alunos
    When preencho todos os campos obrigatórios
    And submeto o formulário com um email inválido
    Then é exebida uma mensagem de erro

Scenario: Cadastro com uma senha inválida
    Given que estou na página de cadastro de alunos
    When preencho todos os campos obrigatórios
    And submeto o formulário com uma senha inválida
    Then é exebida uma mensagem de erro
