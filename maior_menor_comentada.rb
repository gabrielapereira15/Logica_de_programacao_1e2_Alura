puts "Bem-vindo ao jogo da adivinhação!"; #puts é o imprimir do Ruby
puts "Qual é o seu nome?";
nome = gets; #variável
puts "\n\n\n\n"; # \n é para pular uma linha
puts "Começaremos o jogo para você, " + nome + "!";
puts "Escolhendo um número secreto entre 0 e 200 ...";
numero_secreto = 175;
puts "Escolhido! Que tal adivinhar o nosso número secreto hoje?";
puts "\n\n\n\n";

limite_de_tentativas = 5

for tentativas in 1..limite_de_tentativas			
	puts "Tentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s;
	puts"Entre com um número:";
	chute = gets;
	puts "Será que você acertou? Você chutou " + chute + ".";
	#No Ruby a condição ou laço é sem o {} e é preciso terminar a condição com end
	# .to_i transforma string em número e .to_s transforma o número em string
	acertou = numero_secreto == chute.to_i;

	if acertou
		puts "Parabéns você acertou! Que sorte!"; 
	else
		maior = chute.to_i < numero_secreto;
		if maior
			puts "Você errou! O número secreto é maior!";
		else
			puts "Você errou! O número secreto é menor";
		end
	end
end