aluguel = float(input("Valor do Aluguel: "))
multa = input("Tem Multa ?? [S/N] ")
qtd_pessoa = int(input("Quantidade de Pessoas: "))
if multa == "S" or "s":
    valor_multa = float(input("Valor da Multa: "))
    valor_total = (aluguel+valor_multa)/qtd_pessoa
else:
    valor_total = aluguel/qtd_pessoa
print("O total a ser pago é %.2f" % valor_total)
