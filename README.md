# BABY MEMORY

## users テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| baby_name          | string     | null: false                    |
| birthday           | date       | null: false                    |
| gender_id          | integer    | null: false                    |
| parent_id          | integer    | null: false                    |

### Association
- has_many   :memories
- has_many   :heights
- has_many   :weighs
- has_many   :temperatures
- has_many   :milks
- has_many   :pees
- has_many   :poops
- belongs_to :parent
- belongs_to :gender

## memoriesテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| comment            | text       |                                |
| worked_at          | datetime   |                                |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- has_many      :temperatures
- has_many      :milks
- has_many      :pees
- has_many      :poos

## heights テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| height_list_id     | integer    | null: false                    |
| measured_at        | datetime   | null: false                    |
| memo               | string     |                                |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- belongs_to    :heigh_list

## weighs テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| weigh_list_id      | integer    | null: false                    |
| measured_at        | datetime   | null: false                    |
| memo               | string     |                                |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- belongs_to    :weigh_list

## temperatures テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| temperature_list_id| integer    | null: false                    |
| memo               | string     |                                |
| user               | references | null: false, foreign_key: true |
| memory             | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- belongs_to    :memory
- belongs_to    :temperature_list

## milks テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| milk_list_id       | integer    | null: false                    |
| memo               | string     |                                |
| user               | references | null: false, foreign_key: true |
| memory             | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- belongs_to    :memory
- belongs_to    :milk_list

## pees テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| amount_id          | integer    | null: false                    |
| memo               | string     |                                |
| user               | references | null: false, foreign_key: true |
| memory             | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- belongs_to    :memory
- belongs_to    :amount

## poops テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| amount_id          | integer    | null: false                    |
| hardness_id        | integer    | null: false                    |
| memo               | string     |                                |
| user               | references | null: false, foreign_key: true |
| memory             | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- belongs_to    :memory
- belongs_to    :amount
- belongs_to    :hardness
