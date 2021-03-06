% Este arquivo possui a função objetivo do seu problema
% A função deve conter como entrada um vetor que será as váriaveis de entrada 
% da sua função. Ela também deverá retornar o valor da variável na função
%
% A função abaixo é um exemplo de implementação de função de fitness
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fit = FuncaoObjetivo (vars)
	[n N] = size(vars);
	soma_x = 0;
	soma_cos = 0;
	N = N-1;
	
	
	for i=1:N
		soma_x = soma_x + (vars(i)^2);
		soma_cos = soma_cos + cos(2*pi*vars(i));
	end%for	
	fit = -20*exp(-0.2*sqrt((1/N)*soma_x)) - exp((1/N)*soma_cos) + 20 + exp(1);
end %funcaoObjetivo
