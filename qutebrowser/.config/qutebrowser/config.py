
import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

config.bind('<Ctrl-Shift-y>', 'hint links spawn --detach mpv --hwdec=vdpau --force-window yes {hint-url}')
