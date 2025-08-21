#!/usr/bin/env python3
import sys

from glfw.GLFW import *

from OpenGL.GL import *
from OpenGL.GLU import *


viewer = [0.0, 0.0, 10.0]

theta = 0.0
pix2angle = 1.0

left_mouse_button_pressed = 0
mouse_x_pos_old = 0
delta_x = 0

# składowe koloru materiału
mat_ambient = [1.0, 1.0, 1.0, 1.0]
mat_diffuse = [1.0, 1.0, 1.0, 1.0]
mat_specular = [1.0, 1.0, 1.0, 1.0]
# stopień połyskliwości materiału
mat_shininess = 20.0

# kolorze źródła światła
light_ambient = [0.1, 0.1, 0.0, 1.0]
light_diffuse = [0.8, 0.8, 0.0, 1.0]
light_specular = [1.0, 1.0, 1.0, 1.0]

light_ambient2 = [0.5, 0.0, 0.35, 1.0]
light_diffuse2 = [0.2, 0.5, 0.1, 1.0]
light_specular2 = [1.0, 1.0, 0.5, 1.0]

# położenie źródła światła.
light_position = [0.0, 0.0, 10.0, 1.0]
light_position2 = [0.0, 5.0, 8.0, 1.0]

att_constant = 1.0
att_linear = 0.05
att_quadratic = 0.001

# 0 - ambient, 1 - diffuse, 2 - specular
current_component = 0
component_names = ['ambient', 'diffuse', 'specular']

def startup():
    update_viewport(None, 400, 400)
    glClearColor(0.0, 0.0, 0.0, 1.0)
    glEnable(GL_DEPTH_TEST)

    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient)
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse)
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular)
    glMaterialf(GL_FRONT, GL_SHININESS, mat_shininess)

    glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient)
    glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse)
    glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular)
    glLightfv(GL_LIGHT0, GL_POSITION, light_position)

    glLightfv(GL_LIGHT1, GL_AMBIENT, light_ambient2)
    glLightfv(GL_LIGHT1, GL_DIFFUSE, light_diffuse2)
    glLightfv(GL_LIGHT1, GL_SPECULAR, light_specular2)
    glLightfv(GL_LIGHT1, GL_POSITION, light_position2)

    glLightf(GL_LIGHT0, GL_CONSTANT_ATTENUATION, att_constant)
    glLightf(GL_LIGHT0, GL_LINEAR_ATTENUATION, att_linear)
    glLightf(GL_LIGHT0, GL_QUADRATIC_ATTENUATION, att_quadratic)

    glLightf(GL_LIGHT1, GL_CONSTANT_ATTENUATION, att_constant)
    glLightf(GL_LIGHT1, GL_LINEAR_ATTENUATION, att_linear)
    glLightf(GL_LIGHT1, GL_QUADRATIC_ATTENUATION, att_quadratic)

    glShadeModel(GL_SMOOTH)
    glEnable(GL_LIGHTING)
    glEnable(GL_LIGHT0)
    glEnable(GL_LIGHT1)

    # Identyfikator GL_LIGHT0 wskazuje konkretne źródło światła


def shutdown():
    pass


def render(time):
    global theta

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    glLoadIdentity()

    gluLookAt(viewer[0], viewer[1], viewer[2],
              0.0, 0.0, 0.0, 0.0, 1.0, 0.0)

    if left_mouse_button_pressed:
        theta += delta_x * pix2angle

    glRotatef(theta, 0.0, 1.0, 0.0)

# rysowanie sfery
    quadric = gluNewQuadric()
    gluQuadricDrawStyle(quadric, GLU_FILL)
    gluSphere(quadric, 3.0, 10, 10)
    gluDeleteQuadric(quadric)

    glFlush()


def update_viewport(window, width, height):
    global pix2angle
    pix2angle = 360.0 / width

    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()

    gluPerspective(70, 1.0, 0.1, 300.0)

    if width <= height:
        glViewport(0, int((height - width) / 2), width, width)
    else:
        glViewport(int((width - height) / 2), 0, height, height)

    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()


def keyboard_key_callback(window, key, scancode, action, mods):
    global light_ambient, light_diffuse, light_specular, current_component

    if key == GLFW_KEY_ESCAPE and action == GLFW_PRESS:
        glfwSetWindowShouldClose(window, GLFW_TRUE)

    # Wybór składowej
    if key == GLFW_KEY_A and action == GLFW_PRESS:
        current_component = 0 # ambient
        print(f"Selected component: {component_names[current_component]}")
        print_current_values()

    if key == GLFW_KEY_S and action == GLFW_PRESS:
        current_component = 2  # specular
        print(f"Selected component: {component_names[current_component]}")
        print_current_values()

    if key == GLFW_KEY_D and action == GLFW_PRESS:
        current_component = 1  # diffuse
        print(f"Selected component: {component_names[current_component]}")
        print_current_values()

    # zwiększenie wartości
    if key == GLFW_KEY_UP and action == GLFW_PRESS:
        if current_component == 0:
            for i in range(3):  # iterujemy przez pierwsze trzy składowe
                light_ambient[i] = min(light_ambient[i] + 0.1, 1.0)
            glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient)
        elif current_component == 1:
            for i in range(3):
                light_diffuse[i] = min(light_diffuse[i] + 0.1, 1.0)
            glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse)
        elif current_component == 2:
            for i in range(3):
                light_specular[i] = min(light_specular[i] + 0.1, 1.0)
            glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular)
        print_current_values()

    # Zmniejszenie wartości
    if key == GLFW_KEY_DOWN and action == GLFW_PRESS:
        if current_component == 0:
            light_ambient = [max(x - 0.1, 0.0) for x in light_ambient[:-1]] + [1.0]
            glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient)
        elif current_component == 1:
            light_diffuse = [max(x - 0.1, 0.0) for x in light_diffuse[:-1]] + [1.0]
            glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse)
        else:
            light_specular = [max(x - 0.1, 0.0) for x in light_specular[:-1]] + [1.0]
            glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular)
        print_current_values()


def print_current_values():
    print(f"Current light values:")
    print(f"Ambient:  R={light_ambient[0]:.1f} G={light_ambient[1]:.1f} B={light_ambient[2]:.1f}")
    print(f"Diffuse:  R={light_diffuse[0]:.1f} G={light_diffuse[1]:.1f} B={light_diffuse[2]:.1f}")
    print(f"Specular: R={light_specular[0]:.1f} G={light_specular[1]:.1f} B={light_specular[2]:.1f}")
    print("------------------------------------------")


def mouse_motion_callback(window, x_pos, y_pos):
    global delta_x
    global mouse_x_pos_old

    delta_x = x_pos - mouse_x_pos_old
    mouse_x_pos_old = x_pos


def mouse_button_callback(window, button, action, mods):
    global left_mouse_button_pressed

    if button == GLFW_MOUSE_BUTTON_LEFT and action == GLFW_PRESS:
        left_mouse_button_pressed = 1
    else:
        left_mouse_button_pressed = 0


def main():
    if not glfwInit():
        sys.exit(-1)

    window = glfwCreateWindow(400, 400, __file__, None, None)
    if not window:
        glfwTerminate()
        sys.exit(-1)

    glfwMakeContextCurrent(window)
    glfwSetFramebufferSizeCallback(window, update_viewport)
    glfwSetKeyCallback(window, keyboard_key_callback)
    glfwSetCursorPosCallback(window, mouse_motion_callback)
    glfwSetMouseButtonCallback(window, mouse_button_callback)
    glfwSwapInterval(1)

    startup()
    while not glfwWindowShouldClose(window):
        render(glfwGetTime())
        glfwSwapBuffers(window)
        glfwPollEvents()
    shutdown()

    glfwTerminate()


if __name__ == '__main__':
    main()