module Main exposing (..)

import Css exposing (rgb, px, hex)
import Slides exposing (..)
import Slides.Styles


main =
    Slides.app
        { slidesDefaultOptions
            | style = Slides.Styles.elmMinimalist (rgb 255 255 255) (rgb 230 230 230) (px 25) (hex "60B5CC")
        }
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
            ## Vanilla Elm

            ```
            div
              [ class "some-class-name"
              , style
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
            h1
              [ fontWeight (int 400)
              , fontSize (px 70)
              ]
            ```

            - Namespacing: some
            - Expressive Reuse: Yes!
            - Inlining: nope
            - *Static type checking: Yes!*
            """
        , md
            """
            ## Styled html

            ```
            redBackgroundClass =
                makeClass "redBackground"
                    [ "background-color: #e00" ] []
            ```
            ```
            div
                [ class redBackgroundClass ]
                [ text "I have red background" ]
            ```
            """
        , md
            """
            ```
            style = class << makeClass ""
            ```
            ```
            div
                [ style
                  [ "color: grey" ]
                  [ selector ":hover"
                    [ "color: white" ] []
                  ]
                ]
                [ text "I am white on hover!" ]
            ```

            - Namespacing: Yes!
            - Expressive Reuse: Yes!
            - Inlining: Yes!
            - *Static type checking: with Elm-Css*
            """
        , mdFragments
            [ "Styled Html is very *usable*..."
            , "...but might be terrible for performance"
            ]
        , md
            """
            TODO: describe challenge
            """
        , md
            """
            @xarvh
            """
        ]
