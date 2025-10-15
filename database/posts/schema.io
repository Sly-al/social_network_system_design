// Replication:
// - master-slave (one sync + async)
// - replication factor 3
//
// Sharding:
// - key based by user_id

Table posts {
  id uuid [primary key]
  title text
  body text [note: 'Content of the post']
  user_id uuid [not null]
  status text [note: 'draft, published, archived']
  total_likes int
  total_comments int
  created_at timestamp
  updated_at timestamp

  Indexes {
    user_id
    (user_id, status)
    created_at
  }
}