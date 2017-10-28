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
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

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

    foregroundColor: '#cbcbcb',
    backgroundColor: "#1e1e1e",
    borderColor: '#0a0a0a',
    cursorColor: '#9bc4bd',

    // simple basic colors - http://dotshare.it/dots/464/
    colors: {
      black:        '#2E3436',
      lightBlack:   '#4a575a',
      red:          '#CC0000',
      lightRed:     '#EF2929',
      green:        '#4E9A06',
      lightGreen:   '#8AE234',
      yellow:       '#C4A000',
      lightYellow:  '#FCE94F',
      blue:         '#3465A4',
      lightBlue:    '#729FCF',
      magenta:      '#75507B',
      lightMagenta: '#AD7FA8',
      cyan:         '#06989A',
      lightCyan:    '#34E2E2',
      white:        '#e6e3c6',
      lightWhite:   '#EEEEEC'
    },

    // nyquil - http://dotshare.it/dots/532/
    //colors: {
    //  black:        '#151515',
    //  lightBlack:   '#666666',
    //  red:          '#ff005b',
    //  lightRed:     '#ff00a0',
    //  green:        '#cee318',
    //  lightGreen:   '#ccff00',
    //  yellow:       '#ffe755',
    //  lightYellow:  '#ff9f00',
    //  blue:         '#048ac7',
    //  lightBlue:    '#48c6ff',
    //  magenta:      '#833c9f',
    //  lightMagenta: '#be67e1',
    //  cyan:         '#0ac1cd',
    //  lightCyan:    '#63e7f0',
    //  white:        '#e4e4e4',
    //  lightWhite:   '#f3f3f3'
    //},

    // X::DotShare - http://dotshare.it/dots/87 (inverted)
    //foregroundColor: '#D7D0C7',
    //backgroundColor: "#151515",
    //borderColor: '#151515',
    //cursorColor: '#ff8939',
    //colors: {
    //  black:        '#101010',
    //  red:          '#e84f4f',
    //  green:        '#b8d68c',
    //  yellow:       '#e1aa5d',
    //  blue:         '#7dc1cf',
    //  magenta:      '#9b64fb',
    //  cyan:         '#6d878d',
    //  white:        '#dddddd',
    //  lightBlack:   '#404040',
    //  lightRed:     '#d23d3d',
    //  lightGreen:   '#a0cf5d',
    //  lightYellow:  '#f39d21',
    //  lightBlue:    '#4e9fb1',
    //  lightMagenta: '#8542ff',
    //  lightCyan:    '#42717b',
    //  lightWhite:   '#dddddd'
    //},

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
    shell: '/bin/zsh',

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
    summonShortcut: 'Alt+Shift+T'
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: ['hyper-tab-icons', 'hyperterm-summon', "hyper-markdown-preview"],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
