import time


class Class(object):
    def __init__(self):
        self.something = None

    def do_something(self):
        """Wait 5 seconds and set self.something to something"""
        time.sleep(5)
        self.something = "Done after 5 seconds."

    @property
    def thing(self):
        return self.something
