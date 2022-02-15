
class RendModeBase:
    referList = []

    def requestRef(self):
        return self.referList

    def sendRef(self,dic={}):
        pass

    def render(self):
        pass