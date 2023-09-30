#!/urs/bin/env bash

limite_ocupacao=70

# Obtém a ocupação em disco da partição raiz (/) 
# tratamento da string pegando a segunda linha 6 item e abstraindo o simbulo de %
ocupacao=$(df -h / | awk 'NR==2 {print $6}' | tr -d '%')

# #condicional baseado no limite de ocupação,
Verifica se a ocupação está acima do limite definido
if [ "$ocupacao" -gt "$limite_ocupacao" ]; then
    echo "A ocupação em disco está acima de $limite_ocupacao%."
    echo "Executando comando para liberar espaço..."

    # Executa seu comando de limpeza
    # Executa comandos adicionais 


    echo "Limpeza do sistema Docker concluída."
else
    echo "A ocupação em disco está abaixo de $limite_ocupacao%."
    echo "Nenhuma ação é necessária neste momento."
fi
