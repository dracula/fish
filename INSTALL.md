### [Fish](http://fishshell.com)

#### Install using a plugin manager

If you use [Fisher](https://github.com/jorgebucaran/fisher) to manage your `fish` plugins:

```
fisher install dracula/fish
```

If you use [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) to manage your `fish` plugins:

```
omf install https://github.com/dracula/fish
```

If you're using fish >= 3.4.0, you can set the theme by adding this line to the top of your `config.fish`:

```
fish_config theme choose "Dracula Official"
```

If you're using fish < 3.4.0, then the theme is set just be installing this plugin. Note that this means that you can't install this theme alongside others and switch between them freely, which is the main advantage of using [`fish_config`](https://fishshell.com/docs/current/cmds/fish_config.html).

#### Install manually

Download using the [GitHub .zip download](https://github.com/dracula/fish/archive/master.zip) option.

If you're using fish >= 3.4.0, place `themes/Dracula Official.theme` in your `~/.config/fish/themes` directory. You can set the theme by adding this line to the top of your `config.fish`:

```
fish_config theme choose "Dracula Official"
```

If you're using fish < 3.4.0, place `conf.d/dracula.fish` in your `~/.config/fish/conf.d` directory, then reload fish (e.g. `exec fish`).
