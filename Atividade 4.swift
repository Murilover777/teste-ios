import Foundation

print("Atividade 04 de IOS")

//print("-     - Questão 01")
//1. Criar uma função que receba o tamanho da base e da altura de um retângulo e retorne a sua área.

/*
var base: Double = 10
var altura: Double = 10
var retangulo: Double = 0

retangulo = base * altura
print("A área do retângulo é: \(retangulo)" )*/

//print("-     - Questão 02")
// 2. Criar uma função que receba o raio de uma circunferência e retorne sua area.

/*
func circuloArea(raio: Double) -> Double {
    return Double.pi * raio * raio
}
let raio: Double = 10.0
let area = circuloArea(raio: raio)

print("O raio é: \(raio)")
print("O resultado do cálculo da área é: \(area)")*/

//print("-     - Questão 03")
//3. Criar uma função que receba um número inteiro e exibir o seu sucessor.

/*
func mostrarsucessor(numero: Int) {
    let sucessor = numero + 1
    print("O sucessor do \(numero) é \(sucessor)")
}
mostrarsucessor(numero: 5)*/

//print("-     - Questão 04")
//4. Dado que a fórmula para conversão de Fahrenheit para Celsius é C = 5/9 (F – 32), Criar uma função que receba o valor de temperatura em Fahrenheit e exibi-lo em Celsius

/*
func fahrenheitParaCelsius(fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5 / 9
}
let fahrenheit = 104.0
let celsius = fahrenheitParaCelsius(fahrenheit: fahrenheit)
print("A temperatura em Calsius é: \(celsius)")*/

//print("-     - Questão 05")
//5. Criar uma função que calcule e apresente o valor do volume de uma lata de óleo, dado seu raio e sua altura.

/*
func calculoOleo(raio: Double, altura: Double) {
    let volume = Double.pi * pow(raio, 2) * altura
    print("O volume da lata de óleo é:  \(volume)")
}
let raio: Double = 5.0
let altura: Double = 20.0
calculoOleo(raio: raio, altura: altura)*/

//print("-     - Questão 06")
//6. Criar uma função que transforme uma velocidade fornecida em m/s pelo usuário para Km/h. Para tal, multiplique o valor em m/s por 3,6.

/*
func velEmMphParaKmph(velEmMph: Double) -> Double {
    return velEmMph * 3.6
}
let velEmMph: Double = 10.0
let velEmKmph = velEmMphParaKmph(velEmMph: velEmMph)
print("A velocidade em Km/h é: \(velEmKmph)")*/

//print("-     - Questão 07")
//7. Criar uma função que leia um número e exiba se ele é positivo ou negativo.

/*
func exibaNumero(o numero: Int) {
    if numero > 0 {
        print("O número é positivo")
    } else if numero < 0 {
        print("O número é negativo")
    } else {
        print("O número é zero")
    }
}
exibaNumero(o: 7)
exibaNumero(o: -3)
exibaNumero(o: 0)*/

//print("-     - Questão 08")
//8. Criar uma função que leia três números e mostre o maior entre eles.

/*
func mostreMaior(o a: Int, e b: Int, e c: Int) {
    let maior = max(a, max(b, c))
    print("O maior dos números \(a), \(b), e \(c) é \(maior)")
}
mostreMaior(o: 3, e: 5, e: 7)*/

//print("-     - Questão 09")
//9. Um posto está vendendo combustíveis com a seguinte tabela de descontos: Álcool Até 25 litros, desconto de 2% por litro Acima de 25 litros, desconto de 4% por litro Gasolina Até 25 litros, desconto de 3% por litro Acima de 25 litros, desconto de 5% por litro Criar uma função que receba o número de litros vendidos e o tipo de combustível (codificado da seguinte forma: A-álcool, G-gasolina), calcule e imprima o valor a ser pago pelo cliente sabendo-se que o preço do litro da gasolina é R$ 5,49 e o preço do litro do álcool é R$ 4,57.

/*
func mostrarPagamento(litros: Double, tipoCombustivel: Character) {
    let precoPorlitro: Double
    switch tipoCombustivel {
    case "A", "a":
        precoPorlitro = 4.12
    case "G", "g":
        precoPorlitro = 5.25
    default:
        print("Tipo de combustível inválido")
        return
    }

    let disconto: Double
    if litros <= 25 {
        disconto = 0.02
    } else {
        disconto = 0.04
    }

    let totalPreço = litros * precoPorlitro * (1 - disconto)
    print("O valor total a ser pago é R$ \(totalPreço)")
}
mostrarPagamento(litros: 30, tipoCombustivel: "A")
mostrarPagamento(litros: 20, tipoCombustivel: "G")*/

//print("-     - Questão 10")
//10. Criar uma função que receba um número inteiro de 1 a 7 e informe o dia da semana correspondente, sendo domingo o dia de número 1. Se o número não corresponder a um dia da semana, mostre uma mensagem de erro.

/*
func diaDaSemana(numDia: Int) {
    switch numDia {
    case 1:
        print("Domingo")
    case 2:
        print("Segunda-Feira")
    case 3:
        print("Terça-Feira")
    case 4:
        print("Quarta-Feira")
    case 5:
        print("Quinta-Feira")
    case 6:
        print("Sexta-Feira")
    case 7:
        print("Sábado")
    default:
        print("Número do dia inválido")
    }
}
diaDaSemana(numDia: 1)
diaDaSemana(numDia: 8)*/

//print("-     - Questão 11")
//11. Chama-se ano bissexto o ano ao qual é acrescentado um dia extra, ficando ele com 366 dias, um dia a mais do que os anos normais de 365 dias, ocorrendo a cada quatro anos. Criar uma função que verifique se um ano é bissexto. Um ano é bissexto se ele é divisível por 4. Entretanto, se o ano é divisível por 100, ele não é bissexto. Mas, se ele for divisível por 400, ele volta a ser bissexto. a. São bissextos os anos: 1600, 1996, 2000, 2004, 2008, 2012, 2016, 2400, 2800, ... b. Não são bissextos: 1500, 1974, 1982, 1983, 1990, 2018, 2022, 2030, 2038, ...

/*
func anoBi(_ ano: Int) {
    if ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0) {
        print("\(ano) é um ano bissexto")
    } else {
        print("\(ano) não é um ano bissexto")
    }
}
let ano: Int = 2000
anoBi(ano)*/

//print("-     - Questão 12")
//12. Encontre o menor número em uma vetor de inteiros: Criar uma função que receba um vetor de inteiros, para encontrar o menor número em uma lista de valores.

/*
func menorNum(_ num: [Int]) -> Int {
    return num.count > 0 ? num.min()! : 0
}
let num: [Int] = [3, 5, 1, 4, 2]
let menorNumero = menorNum(num)
print("O menor número é \(menorNumero)")*/

print("Ass: Murilo Policarpo Rezende Abreu")