// Replication:
// - master-slave (one sync + async)
// - replication factor 3
//
// Sharding:
// - key based by post_id

Table comments {
  id uuid [primary key]
  user_id uuid [not null]
  post_id uuid [not null]
  body text [not null]
  created_at timestamp
  updated_at timestamp

  Indexes {
    post_id
    (post_id, created_at)
  }
}