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

            > What if two different parts of our CSS declaration use the same class name?

            -> I want to pick class names without fear of collision
            -> I want self-contained modules
            """

        , md
            """
            ## Expressive Reuse

            ```
            warningColor =
              "#ccdd33"

            flashBackgroundColor =
              addFlashBackgroundOpacity(warningColor)
            ```

            -> I want full programming power: variables, modules, functions, lists...
            """

        , md
            """
            ## Inlining

            ```
            helloWorld = "Hello World"

            printHelloWorld =
              console.log(helloWorld)
            ```
            > Sometimes I want a :hover effect without having to name a class

            -> I want to declare styles in place, with full pseudo-class support
            """
        ]



{-
   ---

   (My) CSS pain points:


   * *Namespacing*: I want to pick class names without fear of collisions

   * *Programming*: I want the full power of the programming language (variables, functions, lists...)

   * *Inlining*: I don't care to create a class name that I will reference once





   ----
   What does vanilla Elm:

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

   Namespacing: nope
   Inlining: nope
   Programing: Yes!

   -----

   Elm Css

   ```
   ```

   Namespacing: some
   Inlining: nope
   Programming: Yes!

   Static type checking: Yes!


   -----

   Syled Html

   ```
   ```

   Namespacing: Yes!
   Inlining: Yes!
   Programming: Yes!

   Static type checking: With Elm-Css

   But will it scale?

   -----

   How do we WANT to declare CSS?
   How can we make Elm do it?
   ---> static?


-}
