# GraphQL Example App

### Put together for Rubyist meetup, September 26, 2018

-----------------------------------------------

Clone, `bundle`, create some records, pop over to `localhost:PORT/graphiql`. 



Try:
```javascript
{
   dinosaurs {
    id
    name
    species
    scientific_name
    researcher {
      id
      name
    }
  }
}
```


