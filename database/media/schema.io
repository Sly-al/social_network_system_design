// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - consistent hashing based on media id

Table media {
  id uuid [primary key]
  post_id uuid [not null]
  url text [not null]
  order_index int [note: 'Order of media in post']
  type text [note: 'image, video']
  created_at timestamp

  Indexes {
    post_id
  }
}