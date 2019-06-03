# -*- coding:utf-8 -*-
try:
    from DictionaryServices import *
    from CoreFoundation import *
except:
    print('DictionaryService is not available. \
    Read https://pythonhosted.org/pyobjc/install.html to install.')


def call_dict(str):
    return DCSCopyTextDefinition(None, str, (0, len(str)))


def main():
    while (1):
        word = raw_input()

        result = call_dict(word)

        if(result is None):
            print(word + ': No match found!')
            continue

        result = result.replace(u'▸', u'\n▸').replace('.', '.\n')  # format some tokens
        print(result.encode('utf-8'))

if __name__ == '__main__':
    main()
