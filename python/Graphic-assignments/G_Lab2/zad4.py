#!/usr/bin/env python3
import sys
import numpy as np
import math
import random


from glfw.GLFW import *
from OpenGL.GL import *

# zadeklarować tablicę wierzchołków– o rozmiarze N × N × 3
N =60
tab = np.zeros((N, N, 3))


def egg():
    # wyznaczyć N-elementowe tablice wartości dla parametrów u i v
    us = np.linspace(0.0, 1.0, N)  #
    vs = np.linspace(0.0, 1.0,N)  #

    # dla każdej pary u i v obliczyć i zapisać w tablicy wartości x, y i z,
    for i,u in enumerate(us):
        for j,v in enumerate(vs):
            x = (-(90 * math.pow(u, 5)) + 225 * math.pow(u, 4) - (270 * math.pow(u, 3)) + 180 * math.pow(u, 2) - (45 * u)) * math.cos(math.pi * v)
            y = 160 * math.pow(u, 4) - 320 * math.pow(u, 3) + 160 * math.pow(u, 2) - 5
            z = (-(90 * math.pow(u, 5)) + 225 * math.pow(u, 4) - (270 * math.pow(u, 3)) + 180 * math.pow(u, 2) - (45 * u)) * math.sin(math.pi * v)

            tab[i, j] = [x, y, z]

def startup():
    update_viewport(None, 400, 400)
    glClearColor(0.0, 0.0, 0.0, 1.0)
    glEnable(GL_DEPTH_TEST)

def shutdown():
    pass


def axes():
    glBegin(GL_LINES)

    glColor3f(1.0, 0.0, 0.0)
    glVertex3f(-5.0, 0.0, 0.0)
    glVertex3f(5.0, 0.0, 0.0)

    glColor3f(0.0, 1.0, 0.0)
    glVertex3f(0.0, -5.0, 0.0)
    glVertex3f(0.0, 5.0, 0.0)

    glColor3f(0.0, 0.0, 1.0)
    glVertex3f(0.0, 0.0, -5.0)
    glVertex3f(0.0, 0.0, 5.0)

    glEnd()

def spin(angle):
    glRotatef(angle, 1.0, 0.0, 0.0)
    glRotatef(angle, 0.0, 1.0, 0.0)
    glRotatef(angle, 0.0, 0.0, 1.0)

def render(time, r, g, b):
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    glLoadIdentity()

    spin(time * 180 / 3.1415) #przed stworzeniem obiektu
    #axes()

# ZAD2
# Użyć GL_TRIANGLES zamiast GL_LINES
# wystarczy każdą warstwę modelu zbudować za pomocą jednego paska
# zadbać o spójność modelu, wyeliminować artefekty łączenia na modelu

    glColor3f(1.0, 1.0, 0.0)

    glBegin(GL_TRIANGLE_STRIP) # automatycznie łączy się z poprzednimi wierzchołkami
    for i in range(N-1):
        for j in range(N):

            glColor3f(r, 1.0, 1.0)
            glVertex3f(tab[i, j, 0], tab[i, j, 1], tab[i, j, 2])
            glColor3f(1.0, g, 1.0)
            glVertex3f(tab[i + 1, j, 0], tab[i + 1, j, 1], tab[i + 1, j, 2])


    glEnd()

    glLoadIdentity()
    glFlush()


def update_viewport(window, width, height):
    if width == 0:
        width = 1
    if height == 0:
        height = 1
    aspect_ratio = width / height

    glMatrixMode(GL_PROJECTION)
    glViewport(0, 0, width, height)
    glLoadIdentity()

    if width <= height:
        glOrtho(-7.5, 7.5, -7.5 / aspect_ratio, 7.5 / aspect_ratio, 7.5, -7.5)
    else:
        glOrtho(-7.5 * aspect_ratio, 7.5 * aspect_ratio, -7.5, 7.5, 7.5, -7.5)

    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()


def main():
    if not glfwInit():
        sys.exit(-1)

    window = glfwCreateWindow(400, 400, __file__, None, None)
    if not window:
        glfwTerminate()
        sys.exit(-1)

    glfwMakeContextCurrent(window)
    glfwSetFramebufferSizeCallback(window, update_viewport)
    glfwSwapInterval(1)
    # wylosowanie kolorów
    red = random.uniform(0.0, 1.0)
    green = random.uniform(0.0, 1.0)
    blue = random.uniform(0.0, 1.0)

    egg()      # wyliczenie współrzędnych dla jajka

    startup()
    while not glfwWindowShouldClose(window):
        render(glfwGetTime(), red,green,blue)
        glfwSwapBuffers(window)
        glfwPollEvents()
    shutdown()

    glfwTerminate()


if __name__ == '__main__':
    main()