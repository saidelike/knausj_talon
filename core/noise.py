"""
Map noises (like pop) to actions so they can have contextually differing behavior
"""

from talon import Module, actions, noise

mod = Module()


@mod.action_class
class Actions:
    def noise_trigger_pop():
        """
        Called when the user makes a 'pop' noise. Listen to
        https://noise.talonvoice.com/static/previews/pop.mp3 for an
        example.
        """


# we disable talon's default "pop", because we trigger the "pop" sound from parrot.py
# noise.register("pop", lambda _: actions.user.noise_trigger_pop())
