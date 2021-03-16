#!/usr/bin/env python3
import pyautogui, time, datetime, pyperclip
"""
    @author Adrian González Pardo
    @email gozapaadr@gmail.com
    @a.k.a d3vcr4ck / DevCrack
    @fecha_de_modificación 16/03/2021
    @github AdrianPardo99
"""
# Usage: python3 form_cenlex.py
# Modificar:
#   boleta -> con datos personales
#   arreglo -> Datos generales en mayuscula y sin acentos
#   en la consiguiente escritura de Día de nacimiento, Mes y Anio
time.sleep(2)
boleta="#############"
arreglo=["NOMBRE","AP_Paterno","AP_Materno","Telefono"] # En Mayusculas
email=["nombre","terminacion"] # Aca en nombre es antes del arroba y terminacion es el como termina el dominio
sig=[0,1]
# el primero en 0 es mujer el 1 es en hombre
# 0 es medio superior
# 1 es superior
# 2 es posgrado
pyautogui.typewrite(boleta)
pyautogui.press("enter")
time.sleep(2)
for word in arreglo:
    pyautogui.typewrite(word)
    pyautogui.press("tab")
    time.sleep(0.1)
pyautogui.typewrite(email[0])
pyperclip.copy('@')
pyautogui.hotkey('ctrl', 'v')
pyautogui.typewrite(email[1])
pyautogui.press("tab")
pyautogui.typewrite("N")
pyautogui.press("tab")
pyautogui.typewrite("##") # Dia de nacimiento
pyautogui.press("divide")
pyautogui.typewrite("##") # Mes de nacimiento
pyautogui.press("divide")
pyautogui.typewrite("####") # Anio de nacimiento
pyautogui.press("tab")
for w in sig:
    if w==0:
        pyautogui.press("tab")
    else:
        for i in range(w):
            pyautogui.press('down')
            pyautogui.press("tab")
pyautogui.press("tab")
pyautogui.press("enter")
