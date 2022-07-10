import pynvim

@pynvim.plugin
class TestPlugin(object):
    def __init__(self, nvim):
        self.nvim = nvim

    @pynvim.command("TestFunction")
    def hello_world(self):
        self.nvim.command('echo "🔥"')


