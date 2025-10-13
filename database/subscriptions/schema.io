Table follows {
  id uuid [primary key]
  following_user_id uuid [not null]
  followed_user_id uuid [not null]
  created_at timestamp

  Indexes {
    (following_user_id, followed_user_id) [unique]
  }
}