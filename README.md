## Declarar  o caminho para o binário do Perl
```perl
	#!/usr/bin/perl
```



## Declarar imports
```perl
	use strict;
	use warnings;
	use Path::Tiny;
```
- Strict -> Impõe que o programa tenha todas as variáveis declaradas antes de serem utilizadas, que todas as referências simbólicas (%&$@) sejam válidas e evita que sejam declaradas variáveis globais diretamente em funções a menos que seja necessário.
- Warnings -> Trata todas as exceções e erros em tempo de execução.
- Path::Tiny -> É uma biblioteca que ajuda a manipular diretórios. 



## Declarar Variáveis
```perl
	my $dir = path('src');
	my $iter = $dir->iterator;
```
- $dir -> Guarda o caminho do diretório.
- $iter -> Variável que guarda o resultado do iterator no diretório declarado na variável $dir:
	- iterator -> Precorre todos os itens dentro do diretório;



## Mostrar os Arquivos
```perl
	while(my $file = $iter->()){
		next if $file->is_dir();
		print "$file\n";
	}
```
- while(my $file = $iter->()){ -> Precorre todos os ficheiros dentro da varíavel iter.
- next if $file->is_dir() -> Se o resultado é um diretório ele ignora e passa para a próxima iteração.
- print "$file\n" -> Se for um ficheiro ele printa o caminho relativo do ficheiro.