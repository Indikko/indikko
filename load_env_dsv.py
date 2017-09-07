#! /usr/bin/python
# -*- coding: utf-8 -*-


import os

if __name__ == '__main__':

    ENV = open('.env','r')
    ENV_TXT = ENV.readlines()

    for linha in ENV_TXT:
        l = linha.split('=')
        if l.__len__()>1:
            os.environ[l[0]]=l[1][:-1]
            print('os.environ["%s"]=%s'%(l[0],l[1][:-1]))

    print('\n','='*50)
    print('Carga do arquivo .env realizado com sucesso!!')
