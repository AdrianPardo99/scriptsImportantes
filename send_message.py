#!/usr/bin/env python3
import pyautogui, time, datetime
"""
    @author Adrian González Pardo
    @email gozapaadr@gmail.com
    @a.k.a d3vcr4ck / DevCrack
    @fecha_de_modificación 18/11/2020
    @github AdrianPardo99
"""

def send_message(text,in_h,in_t,in_s):
    """
        @text_in -> Es un arreglo de cadenas de datos el cual
                    contiene los mensajes a ser enviados
        @in_h    -> Es la hora numericamente a la cual se
                    desea enviar el mensaje
        @in_t    -> Es el minuto numerico a la cual se
                    desea enviar el mensaje
        @in_s    -> Es el segundo numerico a la cual se
                    desea enviar el mensaje
    """
    # Sleep para ir al text zone y llenar lo que necesitas
    time.sleep(1)
    # Parabra a escribir
    while(True):
        tiempo=str(datetime.datetime.now())
        tiempo=tiempo.split(" ")
        tiempo=tiempo[1].split(".")
        tiempo=tiempo[0].split(":")
        tiempo[0]=int(tiempo[0])
        tiempo[1]=int(tiempo[1])
        tiempo[2]=int(tiempo[2])
        if(in_h==tiempo[0] and in_t==tiempo[1] and in_s==tiempo[2]):
            break
    for word in text:
        pyautogui.typewrite(word)
        pyautogui.press("enter")
        time.sleep(0.1)
    print("Se envio el mensaje correctamente")

# Prueba de mensaje
send_message(["Adrian","Adrian"],11,55,0)
