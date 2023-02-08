import 'package:reio/widget.dart';

class Layout extends Widget {
  static int counterSlot = slotNumber();
  static int observerSlot = slotNumber();

  Layout(super.construct, super.styles);

  @override
  void activity() {}
}

Widget layout = Layout(
    (w) => Div()
        .id('example')
        .$(Div()
            .id('introduction')
            .$(H1(go(1)).to({
              1: A('Reio Dart Framework 0.2.2')
                  .href('https://github.com/MineEjo/reiodart')
            }))
            .$(Span('A progressive ${go(1)} framework for creating UI '
                    'on the web. $br Uses HTML, CSS and ${go(2)}, which '
                    'is compiled into efficient JavaScript code. '
                    '$br $br'
                    'By default, Reio template uses ${go(3)}')
                .to({
              1: A('Dart').href('https://dart.dev/'),
              2: A('Dart').href('https://dart.dev/'),
              3: A('Webdev').href('https://web.dev/')
            })))
        .$(P('Examples').id('examples'))
        .$slot(Layout.counterSlot)
        .$(Br())
        .$slot(Layout.observerSlot),
    () => '''<style>
    #example {
      display: grid;
      margin: var(--margin-1);
      justify-content: center;
      grid-template-columns: var(--grid-width-1);
    }

    #examples {
      font-weight: bold;
      font-size: var(--font-size-1);
    }

    h1 a {
      color: var(--color-accent);
    }

    a {
      color: var(--color-accent-text);
      text-decoration: none;
      box-shadow: var(--box-shadow-2);
    }

    a:hover {
      box-shadow: var(--box-shadow-3);
    }
    </style>''');
