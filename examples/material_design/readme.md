# Using Material Web Components
https://github.com/material-components/material-web/blob/main/docs/quick-start.md

## How to

In a fresh Rails app using `jsbundling` and `esbuild` 

**1. Install Material Web Components**
```bash
$ yarn add @material/web
```

**2. Import all Material Web Components**
```js
// app/javascript/application.js
import ...

import '@material/web/all'
```

**3. Copy the form builder in this folder to your app**
```
app/
  models/
  controllers/
  form_builders/
    material_form_builder.rb
```

**4. Use the form builder in a form**
In any form in any page in your app, use the `builder` option.

This example assumes you have a `User` model with a `name` attribute but you can use whatever you want

```erb
<%= form_with model: User.new, builder: MaterialFormBuilder do %>
  <%= form.text_field :name %>
<% end %>
```

**5. Run the server**
```bash
$ bin/dev
```

**6. Visit the form**

In whichever location you used it.

## Preview

![empty](empty.png)
![full](full.png)
![markup](markup.png)
![params](params.png)