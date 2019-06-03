from epc.server import EPCServer

server = EPCServer(('localhost', 0))


def callback(reply):
    print(reply)


@server.register_function
def run():
    handler = server.clients[0]
    handler.call('return-ten', [], callback)
    return 0

server.print_port()
server.serve_forever()
