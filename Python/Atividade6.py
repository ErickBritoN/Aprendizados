peso = float(input("Insira o peso: "))
altura = float(input("Insira a altura:"))
imc = float(peso / (altura*altura))
if(imc <= 18.5):
    print("Abaixo do peso")
else: 
    if(imc >=18.5 and imc <= 24.9):
        print("Peso Normal")
    else: 
        if(imc >= 25 and imc <=29.9):
            print("Sobrepeso")
        else:
            if(imc >= 30 and imc <= 34.9):
                print("Obesidade Nivel 1")
            else:
                if(imc >= 35 and imc <=39.9):
                    print("Obesidade Nivel 2")
                else:
                    print("Obesidade Nivel 3")
