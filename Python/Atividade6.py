peso = float(input("Insira o peso: "))
altura = float(input("Insira a altura:"))
imc = float(peso / (altura*altura))
if(imc <= 18.5):
    print("Abaixo do peso")
else: 
    if(imc >=18.5 and imc <25):
        print("Peso Normal")
    else: 
        if(imc >= 25 and imc <30):
            print("Sobrepeso")
        else:
            if(imc >= 30 and imc <35):
                print("Obesidade Nivel 1")
            else:
                if(imc >= 35 and imc <40):
                    print("Obesidade Nivel 2")
                else:
                    if(imc > 40):
                        print("Obesidade Nivel 3")
