# elm-spa-boiler-plate
A SPA boiler plate for elm projects

## Stack
#### Welcome to the ET Stack  
![](https://media.giphy.com/media/gHcPh3ehbRGik/giphy.gif)

**E**lm - for sweet :candy: functional code  
**T**achyons - for speedy :dash: modular styling

## Structure
``` elm
src/ -- contains elm code
src/Routes/ -- contains Html Msgs for your pages && elements
public/ -- contains built code, and an index.html file
```

## Commands
`npm run dev -- will start watching your elm project, and run a local dev
server`

`npm run build -- will build your elm project as a js file, ready to serve as a static site`

## Routing
Routing is done via a #url to avoid reloading the page and loosing model's state. There are workarounds for this, but this a simple solution that requires minimal code (_check resources below for alternatives_). The router works by using the `Navigation` package which gives us access to the url. Our app checks the current url address, updates this route in the `modal`, then renders the page accoring to the `modal.route`.

All routing takes place in the ```Router.elm``` file:
- ```getPage``` acts as a virtual router, which gets the current url and sets it in model
- the ```case``` statement in ```view``` acts as a handler which serves the correct ```Html Msg```

To add a new route you need to:
1. Create and export a ```Html Msg``` for the new page and place it in a separate file in ```Routes/```
2. Add a ```case``` for the route in ```getPage```
3. Serve the file by adding a ```case``` for the imported```Html Msg``` in ```view ```

## Multiplicity
To duplicate this repo for your own use follow [these gitHub instructions](https://help.github.com/articles/duplicating-a-repository/). And don't forget to :star: :star2: :star: to say thanks!

## Resources
This is a basic way of routing a SPA using [this tutorial](https://medium.com/@nithstong/spa-simple-with-elm-navigation-630bdfdbef94)

Further reading on best practises and limitations can be found here:
[Choosing Elm SPA architecture](https://medium.com/elm-shorts/choosing-the-right-elm-spa-architecture-d6e8275f6899)
