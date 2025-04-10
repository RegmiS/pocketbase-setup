/// <reference path="../pb_data/types.d.ts" />
migrate((app) => {
  const collection = app.findCollectionByNameOrId("pbc_3900923048")

  // update collection data
  unmarshal({
    "name": "tags"
  }, collection)

  return app.save(collection)
}, (app) => {
  const collection = app.findCollectionByNameOrId("pbc_3900923048")

  // update collection data
  unmarshal({
    "name": "Tags"
  }, collection)

  return app.save(collection)
})
