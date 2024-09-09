import pygame
from sys import exit
from random import randint
import math

dim = (600,600)
fps = 10
pygame.init()
screen = pygame.display.set_mode(dim)
pygame.display.set_caption("Gravidade")
pygame.display.flip()

clock = pygame.time.Clock()

floory = 300
fprof = 50

floor = pygame.Rect((0,floory,dim[1],fprof))

size = 50
posx = dim[0]//2-(size//2)
posy = floory-size
body = pygame.Rect((posx,posy,size,size))

v0 = 20
v=v0
g0 = 2 # podemos pensar na segunda lei de newton, qualidades do personagem como massa e forca
g=g0

isjump = False

while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            exit()
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_q:
                pygame.quit()
                exit()
            if event.key ==pygame.K_SPACE:
                print('espaco')
                if (not isjump):
                    print('pular')
                    isjump = True

    # para saber quando parar precisamos de um vetor
    # no caso deste teste só testamos a posicao
    if ((v+v0)==0)or((body.bottom-v+g)>floory):
        print('pousou')
        body = body.move(0,(floory-body.bottom))
        isjump = False
        v = v0
    if isjump:
        print('movimento')
        v-=g
        body = body.move(0,-v)
    
    screen.fill((255,255,255))
    pygame.draw.rect(screen,(0,0,0),floor)
    pygame.draw.rect(screen,(0,0,255),body)
    pygame.display.update()
    clock.tick(fps)
    
