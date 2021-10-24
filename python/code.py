#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# функция не работает, функция "chr" в python не может иметь отрецательное значение / the function does not work, the "chr" function in python cannot have a negative value
def code(text, password, decode):
        if len(password) == 0:
                exit;
        sign = 1
        if decode:
                sign = -1
        result = ""
        for i in range(0, len(text)):
                result += chr(ord(text[i]) + sign * ord(password[i % len(password) + 1]))
        return result
