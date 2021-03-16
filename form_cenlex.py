#!/usr/bin/env python3
import pyautogui, time, datetime
"""
    @author Adrian González Pardo
    @email gozapaadr@gmail.com
    @a.k.a d3vcr4ck / DevCrack
    @fecha_de_modificación 15/03/2021
    @github AdrianPardo99
"""
# Usage: python3 form_cenlex.py
# Modificar:
#   boleta -> con datos personales
#   arreglo -> Datos generales en mayuscula y sin acentos
#   en la consiguiente escritura de Día de nacimiento, Mes y Anio
#   sig -> Sexo (M o F) y (M<->Media superior o P<->Profesional)
time.sleep(2)
boleta="#############"
arreglo=["NOMBRE","AP_Paterno","AP_Materno"] # En Mayusculas
sig=["M","P"] # M->Masculino, F Femenino; P->Nivel Superior
pyautogui.typewrite(boleta)
pyautogui.press("enter")
time.sleep(3)
for word in arreglo:
    pyautogui.typewrite(word)
    pyautogui.press("tab")
    time.sleep(0.1)
pyautogui.typewrite("##") # Dia de nacimiento
pyautogui.press("divide")
pyautogui.typewrite("##") # Mes de nacimiento
pyautogui.press("divide")
pyautogui.typewrite("####") # Anio de nacimiento
pyautogui.press("tab")
for w in sig:
    pyautogui.typewrite(w)
    pyautogui.press("tab")
    time.sleep(0.1)
pyautogui.press("enter")
