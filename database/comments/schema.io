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