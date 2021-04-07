# README

## テーブル設計

## Usersテーブル
| Column             | Type    | Options                   |
| ------------------ | ------  | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association
- has_many :items
- has_many :likes

## Itemsテーブル
| Column              | Type       | Options                         |
| ------------------- | ---------- |-------------------------------- |
| title                | string    | null: false                     |
| rank1                | text      | null: false                     |
| rank2                | text      | null: false                     |
| rank3                | text      | null: false                     |
| rank4                | text      | null: false                     |
| rank5                | text      | null: false                     |
| rank6                | text      | null: false                     |
| rank7                | text      | null: false                     |
| rank8                | text      | null: false                     |
| rank9                | text      | null: false                     |
| rank10               | text      | null: false                     |
| detail               | text      | null: false                     |
| user                | references | null: false, foreign_keys: true |

### Association
- belongs_to :user
- has_many :likes


## Likesテーブル
| Column           | Type       | Options                         |
| ---------------- | ---------  |-------------------------------- |
| item             | references | null: false, foreign_keys: true |
| user             | references | null: false, foreign_keys: true |

### Association
- belongs_to :item
- belongs_to :user
