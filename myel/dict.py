import sys
try:
    from DictionaryServices import *
    from CoreFoundation import *
except:
    print('DictionaryService is not available. please install pyobjc.')


def call_dict(str):
    return DCSCopyTextDefinition(None, word, (0, len(word)))


def main():
    word = sys.argv[1].decode('utf-8')
    result = call_dict(word)
    if(result is None):
        print(sys.argv[1], '\n', word[minindex:maxindex], ': No match found!')
        return

    print(result.encode('utf-8'))
    
if __name__ == '__main__':
    main()
