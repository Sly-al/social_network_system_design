// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - key based by post_id

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