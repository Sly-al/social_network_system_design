Table users {
  id uuid [primary key]
  username text [not null]
  avatar_url text
  total_followings int
  total_followers int
  created_at timestamp

  Indexes {
    username [unique]
  }
}

