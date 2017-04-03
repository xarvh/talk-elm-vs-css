module Main exposing (..)

import Slides exposing (..)


main =
    Slides.app
        Slides.slidesDefaultOptions
        [ md
            """
            # Elm vs CSS
            """
        , md
            """
            ## Pain points of _declaring_ CSS:

            * Namespacing

            * Expressive Reuse

            * Inlining
            """
        , md
            """
            ## Namespacing

            _What if two different parts of our CSS declaration use the same class name?_

            * I want to pick class names without fear of collision
            * I want self-contained modules
            """
        , md
            """
            ## Expressive Reuse

            ```
            warningColor =
              "#ccdd33"

            warningPopupStyle =
              makePopupStyle(warningColor)
            ```

            * I want full programming power: variables, modules, functions, lists...
            """
        , md
            """
            ## Inlining

            ```elm
            helloWorld = "Hello World"
            ```

            ```elm
            printHelloWorld =
              console.log(SomeImportedModule.helloWorld)
            ```
            _Sometimes I want a `:hover` effect without having to name a class_

            * I want to declare styles in place
            * ...with full pseudo-class support
            * ...and without cluttering the browser's dev tools
            """
        , md
            """
            ## Vanlla Elm

            ```
            div
              [ class "some-class-name"
              [ style
                [ ( "display", "flex" )
                , ( "background-color", "white" )
                ]
              ]
              children
            ```

            - Namespacing: nope
            - Expressive Reuse: Yes!
            - Inlining: nope
            """
        , md
            """
            ## elm-css

            ```
            TODO
            ```

            - Namespacing: some
            - Expressive Reuse: Yes!
            - Inlining: nope
            - *Static type checking: Yes!*
            """

        , md
            """
            ## Styled Html

            ```
            TODO
            ```

            - Namespacing: Yes!
            - Expressive Reuse: Yes!
            - Inlining: Yes!
            - *Static type checking: With Elm-Css*

            - **But will it scale?**
            """
        ]



{-

   -----

   How do we WANT to declare CSS?
   How can we make Elm do it?
   ---> static?


-}
