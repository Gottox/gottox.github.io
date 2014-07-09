title: 'node-pdfutils on the way'
date: 2014-07-09 11:24:44
tags:
---
Version 0.4 of node-pdfutils is a complete rewrite of pdfutils.

The old design didn't work out, I naively decided that it would be a
good idea to do as much as possible in C++ and keep the JS side minimal
in order to reduce context switches between JS and C++. Turns out this was
a bad idea. First of all, node will switch to a new v8-API with 0.12. This
means I have to rewrite big parts of the code once 0.12 is out. Furthermore
it turns out (surprise!) that the C++-part became messy and was harder to
maintain. With the new architecture, I keep the C++ smaller and better
structured. Also I kept in mind that the v8-API will change and it'll be easy
to switch to the new one.

One of the most requested features is reordering/insert/extract
pages from/to a document. With this rewrite, we finally got a base
to do this. It's not implemented yet, but it's much easier to do now.

Also I'm proud to announce, that pdfutils will support multiple PDF-engines.

The 0.4 series will switch license: node-pdfutils was licensed under GPL before,
which makes it hard to include it with 3rd party products. 0.4 will be dual
licensed under MIT/GPL. The idea is, that you can choose to use MIT with any
GPL-free PDF-engine. If you want to use i.e. poppler, you have to use GPL, as
poppler is GPL itself (If I'm talking nonsense, please correct me.)
