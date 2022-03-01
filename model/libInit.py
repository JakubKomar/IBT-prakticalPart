from model.xpc import XPlaneConnect as XPC

global client
def estCon(xpHost='localhost', xpPort=49009, port=0, timeout=100):
    print("X-Plane Connect example script")
    global client
    client = XPC(xpHost,xpPort,port,timeout)
    try:
        # If X-Plane does not respond to the request, a timeout error
        # will be raised.
        client.getDREF("sim/test/test_float")
        print("Connection succsesfull")
    except:
        print("Error establishing connection to X-Plane.")
        # print("Exiting...")
        # sys.exit(-2)
