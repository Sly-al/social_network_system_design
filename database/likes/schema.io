// Replication:
// - master-slave (one sync + async)
// - replication factor 3
//
// Sharding:
// - key based by post_id

Table likes {
  post_id uuid [not null]
  user_id uuid [not null]
  created_at timestamp

  Indexes {
    (post_id, user_id)
    user_id
  }
}