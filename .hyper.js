module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: '"Dina", "ProFontWindows Nerd Font Mono", Terminus, Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` if you're using a Linux set up
    // that doesn't shows native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: 'false',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: 'left',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object

    // Color Template
    //foregroundColor: '#',
    //backgroundColor: "#",
    //borderColor: '#',
    //cursorColor: '#',
    //colors: {
    //  black:        '#',
    //  lightBlack:   '#',
    //  red:          '#',
    //  lightRed:     '#',
    //  green:        '#',
    //  lightGreen:   '#',
    //  yellow:       '#',
    //  lightYellow:  '#',
    //  blue:         '#',
    //  lightBlue:    '#',
    //  magenta:      '#',
    //  lightMagenta: '#',
    //  cyan:         '#',
    //  lightCyan:    '#',
    //  white:        '#',
    //  lightWhite:   '#'
    //},

    //foregroundColor: '#cbcbcb',
    //backgroundColor: "#1e1e1e",
    //borderColor: '#0a0a0a',
    //cursorColor: '#9bc4bd',

    // Default Colors
    //foregroundColor: '#E8EAEC',
    //backgroundColor: '#212121',
    //borderColor: '#0a0a0a',
    //colors: {
    //  black:        '#525252',
    //  red:          '#ef9a89',
    //  green:        '#abd37c',
    //  yellow:       '#eec87c',
    //  blue:         '#7ca2ee',
    //  magenta:      '#9197bb',
    //  cyan:         '#00ffff',
    //  white:        '#d0d0d0',
    //  lightBlack:   '#707070',
    //  lightRed:     '#ef9a89',
    //  lightGreen:   '#abd37c',
    //  lightYellow:  '#eec87c',
    //  lightBlue:    '#7ca2ee',
    //  lightMagenta: '#9197bb',
    //  lightCyan:    '#74cadb',
    //  lightWhite:   '#e8e5dc'
    //},

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: '/usr/bin/env zsh',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: 'SOUND',

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg

    // hyperterm-summon keyboard shortcut
    summonShortcut: 'Alt+Shift+T',

    // Transparency
    hyperTransparentDynamic: {
      alpha: 1
    }
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    //"hyper-quantum-black",
    "hyper-ayu",
    //"hyperterm-material",
    //"hyperpanic",
    //"hyperterm-dark-macos",
    "hyper-statusline",
    "hyperterm-dibdabs",
    "hyperterm-bold-tab",
    'hyper-tab-icons',
    'hyperterm-summon',
    "hyper-markdown-preview",
    "hyper-transparent-dynamic",
    "hyperterm-tabs",
    "hyper-vsplit-fix",
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
