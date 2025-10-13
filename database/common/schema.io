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

Table follows {
  id uuid [primary key]
  following_user_id uuid [not null]
  followed_user_id uuid [not null]
  created_at timestamp

  Indexes {
    (following_user_id, followed_user_id) [unique]
  }
}

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

Table likes {
  post_id uuid [not null]
  user_id uuid [not null]
  created_at timestamp

  Indexes {
    (post_id, user_id)
    user_id
  }
}

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