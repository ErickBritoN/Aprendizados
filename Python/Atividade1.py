preco_pass = float(input("Preço da passagem: "))
num_pass = int(input("Numero de Passageiros: "))
especiais = int(input("NUmero de Passageiros especiais: "))
faturamento = float(preco_pass*num_pass)
faturamento_espec = float((preco_pass*especiais)/2)
faturamento_total = faturamento + faturamento_espec
print("O faturamento da viagem foi %.2f"% faturamento_total)