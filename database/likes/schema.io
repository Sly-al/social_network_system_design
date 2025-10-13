Table likes {
  post_id uuid [not null]
  user_id uuid [not null]
  created_at timestamp

  Indexes {
    (post_id, user_id)
    user_id
  }
}