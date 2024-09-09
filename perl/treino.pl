#!/usr/local/bin/perl
use v5.10.1;
# 5.18+
use feature qw( switch );
no warnings qw( experimental::smartmatch );
use Scalar::Util qw(looks_like_number);


sub introduction{
	$str = "hello" . " " . "world!";
	print "$str\n";
	$mix = $str . " ". 1000 . " times!";
	print "$mix\n";

	$string = "line 1
	line 2
	line 3
	...\n";
	print "$string";

	print "\x{30}\n";
	$num = v48.49.50.51.52.53.54.55.56.57;
	print "$num\n";

	print "File name ". __FILE__ . "\n";
	print "Line Number " . __LINE__ ."\n";
	print "Package " . __PACKAGE__ ."\n";
}

sub ex_array{
	@dsemana = qw/Segunda-Feira
	Terca-Feira
	Quarta-Feira
	Quinta-Feira
	Sexta-Feira
	Sabado
	Domingo/;

	foreach $a (@dsemana){
		print "$a\n";
	}

	@fimsemana = @dsemana[5,6];
	@tsemana = @dsemana[0..4];
	print"\n\ndias de trabalho = @tsemana\n";
	print "fim de semana = @fimsemana\n\n\n";

	@lista = ('elemento 1','elemento 2');
	print "@lista\n";
	unshift(@lista,'esquerda');
	push(@lista,'direita');
	print "@lista\n";
	pop(@lista);
	shift(@lista);
	print "@lista\n\n\n";

	@nums = (0..40);
	@alpha1 = (a..z);
	@alpha2 = (A..Z);
	print "@alpha1\n";
	print "@alpha2\n";
	print "numbers - @nums\n";
	splice(@nums,21,20);
	print "update1 - @nums\n";
	splice(@nums,2,5,(222,333,444,555,666));
	print "update2 - @nums\n";
	splice(@nums,5);
	print "update3 - @nums\n";
	splice(@nums);
	print "update4 - @nums\n";

	$metals = "iron,tin,copper,silver,gold";
	@listmetals = split(',',$metals);
	print "@listmetals\n";
	$metals1 = join('-',@listmetals);
	print "$metals1\n";
	@sort_list = sort(@listmetals);
	print "@sort_list\n";

	@vet = (1,2,3);
	@vet[100]=1278382183;
	$size = @vet;
	$max_index = $#vet;
	$size1 = scalar @vet;
	print "size = $size   ,   Max Index = $max_index   ,   size1 = $size1\n";

	@odd = (1,3,5);
	@even = (2, 4, 6);

	@numbers = (@odd, @even);
	print "numbers = @numbers\n";
	@numbers = (9,8,7,6,5,4,3,2,1,0);
	print "\n\n\nlist of numbers = @numbers\n";
	@pos = @numbers[0,2,4,6,8];
	print "positions of even numbers -> @pos\n\n\n\n";
}

sub ex_hash{
	$meses{'Negativo'} = 1;
	$meses{'Fevereiro'} = 2;
	print "\$meses{'Janeiro'} = $meses{'Janeiro'}\n";
	print "\$meses{'Fevereiro'} = $meses{'Fevereiro'}\n";
	%sinal = ( -Negativo => -1, -Zero => 0, -Positivo => 1);
	print "Sinal Positivo -> $sinal{-Positivo}\n";
	%sinal = ( 'Negativo' => -1, 'Zero' => 0, 'Positivo' => 1);
	print "Sinal Negativo -> $sinal{'Negativo'}\n";
	@array = @sinal{-Negativo,-Zero,-Positivo};
	print "All Numbers of Signal -> @array\n";
	@nomes = keys %sinal;
	print "Nomes dos Sinais -> @nomes\n";
	@valores = values %sinal;
	print "valores -> @valores\n";
	delete $sinal{'Negativo'};
	if(exists($sinal{'Negativo'})){
		print "Existe sinal negativo\n";
	}
	else{
		print "Nao existe sinal negativo\n";
	}	
	$sinal{'Negativo'} = -1;
	if(exists($sinal{'Negativo'})){
		print "Agora existe sinal negativo\n";
	}
}

sub eq2{
	print "a = "; $a = <>;
	print "b = "; $b = <>;
	print "c = "; $c = <>;
	$d = ($b**2)-(4*$a*$c);
	if($d>0){
		print "Two Real Roots\n";
		$x = ((-$b)+sqrt($d))/(2*$a);
		print "x1 = $x\n";
		$x = ((-$b)-sqrt($d))/(2*$a);
		print "x2 = $x\n";
	}
	elsif($d==0){
		print "One Real Root\n";
		$x = (-$b)/(2*$a);
		print "x = $x\n";
	}
	else{
		print "Two Complex Roots\n";
		$xa = (-$b)/(2*$a);
		$xb = sqrt(abs($d))/(2*$a);
		print "x1 = $xa + $xb"."i\n";
		print "x1 = $xa - $xb"."i\n";
	}
}

sub data_time{
	@months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
	@days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);
	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
	print "$mday $months[$mon] $days[$wday]\n";
	$datestring = localtime();
	print "Local date and time $datestring\n";
	$datestring = gmtime();
	print "GMT date and time $datestring\n";
	printf("Time Format - HH:MM:SS\n");
	printf("%02d:%02d:%02d\n", $hour, $min, $sec);
	$epoc = time();
	print "Number of seconds since Jan 1, 1970 - $epoc\n";
	$datestring = localtime();
	print "Current date and time $datestring\n";

	$epoc = time();
	$epoc = $epoc - 24 * 60 * 60;   # one day before of current date.
	$datestring = localtime($epoc);
	print "Yesterday's date and time $datestring\n";
}


sub media{
	
	for($i=0;;$i++){
		print "Write 'stop' or number\n";
		AGAIN:$x = <>; chomp($x);
		unless(not looks_like_number($x)){
			$numeros[$i] = $x;
			print "x_$i = $numeros[$i]\n";
		}
		elsif($x eq 'stop'){
			last;
		}
		else{
			print "Error.....\n";
			redo;
		}
	}
	
	$size=@numeros;
	if($size==0){
		print "There's no number\n";
	}
	else{
		for($i=0,$sum=0;$i<@numeros;$i++){
			$sum+=$numeros[$i];
		}
		$media = $sum / @numeros;
		print "numeros = @numeros\n";
		print "n = $size\n";
		print "media = $media\n";
	}
}


sub loop{

	$a=0;
	while($a<5){
		print "a = $a\n";
	}
	continue{
		$a++;
	}

	until($a==10){
		print "a = $a\n";
		$a++;
	}

	OUT: for($i=0;$i<5;$i++){
			IN: for($j=0;j<5;$j++){
					print "$i,$j - 'stop','next' or 'redo'\n";
					$s=<>;
					chomp($s);
					if($s eq "stop"){
						last OUT;
					}
					elsif($s eq "next"){
						next OUT;
					}
					elsif($s eq "redo"){
						redo OUT;
					}
			}
	}
}


sub ex_goto{
	$a = 10;
	$str1 = "LO";
	$str2 = "OP";
	LOOP:do {
		if( $a == 15) {
			$a++;
			goto LOOP;
		}
		elsif($a==17){
			$a++;
			goto $str1.$str2;
		}
		print "\n\nValue of a = $a\n\n";
		$a++;
	}while( $a < 20 );
}

sub operators{
	print "x = "; $x=<>; $x=$x*1;
	print "y = "; $y=<>; $y=$y*1;
	
	$z=$x+$y; print "\n$x + $y = $z\n";
	$z=$x-$y; print "$x - $y = $z\n";
	$z=$x*$y; print "$x * $y = $z\n";
	$z=$x/$y; print "$x / $y = $z\n";
	$z=$x%$y; print "$x % $y = $z\n";
	$z=$x**$y; print "$x ** $y = $z\n\n\n";
	
	$z = ($x lt $y) ? "True" : "False"; print "$x lt $y is $z\n";
	$z = ($x < $y) ? "True" : "False"; print "$x < $y is $z\n\n";
	$z = ($x gt $y) ? "True" : "False"; print "$x gt $y is $z\n";
	$z = ($x > $y) ? "True" : "False"; print "$x > $y is $z\n\n";
	$z = ($x le $y) ? "True" : "False"; print "$x le $y is $z\n";
	$z = ($x <= $y) ? "True" : "False"; print "$x <= $y is $z\n\n";
	$z = ($x ge $y) ? "True" : "False"; print "$x ge $y is $z\n";
	$z = ($x >= $y) ? "True" : "False"; print "$x >= $y is $z\n\n";
	$z = ($x eq $y) ? "True" : "False"; print "$x eq $y is $z\n";
	$z = ($x == $y) ? "True" : "False"; print "$x == $y is $z\n\n";
	$z = ($x ne $y) ? "True" : "False"; print "$x ne $y is $z\n";
	$z = ($x != $y) ? "True" : "False"; print "$x != $y is $z\n\n";
	$z = $x cmp $y; print "$x cmp $y is $z\n";
	$z = $x <=> $y; print "$x <=> $y is $z\n\n\n";
	
	$z = True and True; print "True and True = $z\n";
	$z = True and False; print "True and False = $z\n";
	$z = False and True; print "False and True = $z\n";
	$z = False and False; print "False and False = $z\n";
	$z = True && True; print "True && True = $z\n";
	$z = True && False; print "True && False = $z\n";
	$z = False && True; print "False && True = $z\n";
	$z = False && False; print "False && False = $z\n\n";
	$z = True or True; print "True or True = $z\n";
	$z = True or False; print "True or False = $z\n";
	$z = False or True; print "False or True = $z\n";
	$z = False or False; print "False or False = $z\n";
	$z = True || True; print "True || True = $z\n";
	$z = True || False; print "True || False = $z\n";
	$z = False || True; print "False || True = $z\n";
	$z = False || False; print "False || False = $z\n\n";
	$z = (not True) ? 'True' : 'False'; print "not True = $z\n";
	$z = (not False) ? 'True' : 'False'; print "not False = $z\n\n";
}

sub other_operators{
	print "\n\n\n";
	$s = 'A'x3;
	print "'A' x 3 = $s\n";
	$s = q{teste};
	print "single quote -> $s\n";
	$s = qq{teste};
	print "double quote -> $s\n";
}

sub factorial{
	my $x = $_[0];
	if($x==1){
		return 1;
	}
	else{
		return $x*factorial($x-1);
	}
}

sub arq{
	print "writing in file\n\n";
	open(fp,">file.txt") or die "Error.....\n";
	
	for(;;){
		$s=<>;
		if($s eq "\n"){
			last;
		}
		else{
			print fp "$s";
		}
	}
	close(fp) || die "Error.....\n";
	open(fp,"<file.txt") or die "Error.....\n";
	while(<fp>){
		print "$_";
	}
	
	close(fp) || die "Error.....\n";
	
	open(fp,"+>>","file.txt");
	$s=<>;
	print fp "$s";
	print "\n\n";
	seek fp, 0, 0;
	print(<fp>);
	
	close(fp) || die "Error.....\n";
}

print <<EOF;
===================================
     Programa de Treinamento
===================================
EOF
$strmenu = "===================================
1 - Operadores
2 - Equacao de Segundo Grau
3 - Media Aritmetica
4 - Fatorial
5 - Arquivos
0 - Sair
===================================";

do{
	print "$strmenu\n";
	$op=<>;
	for ($op) {
		when(0){;}
		when(1){operators();}
		when(2){eq2();}
		when(3){media();}
		when(4){print"y = ";$y=<>;chomp($y);$z=factorial($y);print"$y! = $z\n\n";}
		when(5){arq();}
		default { print "Error.....\n";}
	}
}while($op!=0);

