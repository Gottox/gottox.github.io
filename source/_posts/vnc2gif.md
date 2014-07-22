title: vnc2gif
date: 2014-07-10 11:45:56
tags:
  - node
  - gif
  - canvas
---
![vnc2gif](https://raw.githubusercontent.com/Gottox/vnc2gif/master/recording.gif)

[vnc2gif](https://github.com/Gottox/vnc2gif) is a small tool which renders a VNC connection into an animated gif. It is based on an idea from [vnc-over-gif](https://github.com/sidorares/vnc-over-gif) which is a little more decent. Unfortunately it does not work on node-0.10, so I decided to rewrite it using [node-canvas](https://www.npmjs.org/package/canvas).

node-canvas itself does not support animated gifs, so I had to use [gifencoder](https://www.npmjs.org/package/gifencoder).

Unfortunately gifencoder is quite slow. I would prefere to implement animated gif support in node-canvas directly. The libraries which are used in node-canvas support animation ([GIFLIB](http://giflib.sourceforge.net/)) and the node-canvas API supports multiple Frames with the PDF-output. So an implementation of animated gifs in node-canvas is feasible.

Find the source at the [Github Repository](https://github.com/Gottox/vnc2gif)
