class sample {
$game=hiera ('game','defaultcricket')	
notify { " The value of game is ${game} ":}
}
