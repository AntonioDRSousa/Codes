import operator
import sys


def exibir_menu():
    print("Menu:")
    print("1. Multiplicação")
    print("2. Subtração")
    print("3. Adição")
    print("4. Divisão")
    print("5. Sair")
    
def input_num(): 
  numero1 = float(input("Digite o primeiro número: "))
  numero2 = float(input("Digite o segundo número: "))
  return numero1, numero2    

def op_bin(op):
    numero1, numero2 = input_num()
    print(op(numero1,numero2))

def main():
    while True:
        try:
            exibir_menu()
            opcao = input("Escolha uma opção: ")
            
            if opcao == "1":
                op_bin(operator.mul)
            elif opcao == "2":
                op_bin(operator.sub)
            elif opcao == "3":
                op_bin(operator.add)
            elif opcao == "4":
                op_bin(operator.truediv)
            elif opcao == "5":
                sys.exit()
            else:
                print("Opção inválida. Tente novamente.")
        except:
            print("Error .....")

if __name__ == "__main__":
    main()
