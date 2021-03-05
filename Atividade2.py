aluguel =  float(input("Valor do Aluguel: "))
conta_luz = float(input("Valor da conta de luz: "))
conta_agua = float(input("Valor da conta de agua: "))
qtd_pessoas = int(input("Quantidade de Pessoas: "))

valor_a_pagar = float((aluguel + conta_luz + conta_agua)/qtd_pessoas)
print("Cada um ira pagar %.2f"% valor_a_pagar)