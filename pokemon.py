import random

def pokemon_game():
    # Definimos la vida de los pokemones
    hp_pikachu = 100
    hp_jiggypuff = 100      

    # Definimos el turno, el cual será aleatorio
    # 0 Para Pikachu
    # 1 Para Jigglipuff
    turn = random.randint(0, 1)

    print('Pikachu HP           : ' + str(hp_pikachu))
    print('Jigglypuff HP        : ' + str(hp_jiggypuff) )

    # Entramos en combate
    while hp_pikachu > 0and hp_jiggypuff > 0:

        # Esta partida esta arreglada (al menos le estamos dando ventaja a Pikachu)xD
        attack_pikachu = random.randint(0, 55)
        attack_jigglypuff = random.randint(0, 45)

        if turn == 1:
            print('\nTurn: Jigglypuff')
            print('Pikachu HP           : ' + str(hp_pikachu) + ' HP')
            hp_pikachu -= attack_jigglypuff
            print('Jigglypuff attack    : -' + str(attack_jigglypuff))
            print('Pikachu HP           : ' + str(hp_pikachu))
            turn = 0

        else:
            print('\nTurn: Pikachu')
            print('Jigglypuuf HP        : ' + str(hp_jiggypuff) + ' HP')
            hp_jiggypuff -= attack_pikachu
            print('Pikachu attack       : -' + str(attack_pikachu))
            print('Jigglypuff HP        : ' + str(hp_jiggypuff))
            turn = 1

    # Salimos del ciclo cuando la vida de uno de los 2 sea menor o igual a 0
    if hp_pikachu <= 0:
        win = '\nJigglipuuf is the winner'
    else:
        win = '\nPikachu is the winner'

    print(win)

pokemon_game()