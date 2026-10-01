/*
 Aula 3 - 30/09/2026
 Prof. Ralf Lima - Proway
 */
//Aula - variáveis e Constantes

// [usual] Variáveis autotipadas pelo valor atribuído
//var nome = "Tania"
//
//// Swift também pode ser tipado manualmente [usual em classe]
//var sobrenome: String = "Rocha"
//
////Mostrar o tipo da variável
//print(type(of:nome))
//
////Constante
//let pi = 3.14
//
//// Informações nulas (nil)
//var cargo: String? = nil
//print(cargo ?? "Cargo não informado.")

/*
 REGRAS PARA CRIAR VARI[AVEIS E CONSTANTES:
 1. Não começar com números, mas pode conter números
 2. Não possuir espaço em nomes de variáveis composto, utilizar o _ ou camelcase
 3. Não usar operadores matemáticos [+,-,*,/]
 4. Não usar pontos, virgulas e alguns caracteres especiais (usar boas práticas mesmo que o compilador seja unicode)
 */

// INTERAÇÃO COM USUÁRIO E CONCATENAÇÃO

print("Olá! Qual é o seu nome? ")
var seuNome = readLine()

//Opção 1
print("Seja bem-vindo " + seuNome!)

//Opção 2 [usual]
print("Seja bem-vindo \(seuNome!)")

//CONVERTER DADOS

var numero1 = 5
var numero2: Double = Double(numero1)
print(type(of: numero1))
print(type(of: numero2))
print(numero1)
print(numero2)

var numero3 = "6"
var numero4: Int = Int(numero3) ?? 0


// CAST
var desconhecido: Any = true

if let tipoString = desconhecido as? String {
    print("A variável é do tipo String e o seu valor é \(tipoString)")
} else if let tipoInt = desconhecido as? Int {
    print("A variável é do tipo Int e seu valor é \(tipoInt)")
} else if let tipoDouble = desconhecido as? Double {
    print("A variável é do tipo Int e seu valor é \(tipoDouble)")
} else if let tipoBool = desconhecido as? Bool {
    print("A variável é do tipo Int e seu valor é \(tipoBool)")
} else {
    print("Tipo desconhecido")
}

//CONDICIONAIS
//Simples
var idade = 19
if idade >= 18 {
    print("Maior de idade")
}else {
    print("Menor de idade")
}

//Encadeada
var media = 8.5
if media >= 7 {
    print("Aprovado(a)")
}else if media >= 5 {
    print("Em exame")
}else {
    print("Reprevado(a)")
}

//Aninhada
var notaMedia = 7.8
var faltas = 9

if faltas >= 10 {
    print("Aluno(a) reprovado(a) por faltas!")
}else {
    if notaMedia >= 7 {
        print("Aluno(a) reprovada(a) por média de notas!")
    }
}

//Operador ternário
var num1 = 8 , num2 = 9
print(num1 == num2 ? num1+num2 : num1*num2)
