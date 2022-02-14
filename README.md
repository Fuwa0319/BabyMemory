# BABYMEMORY

## users テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| parent_id          | integer    | null: false                    |

### Association
- has_one    :baby
- belongs_to :parent

## babies テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| baby_name          | string     | null: false                    |
| birthday           | date       | null: false                    |
| gender_id          | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to    :user
- has_many      :heights
- has_many      :weighs
- has_many      :temperatures
- has_many      :comments
- has_many      :milks
- has_many      :pees
- has_many      :poos
- belongs_to    :gender

## heights テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| height_id          | integer    | null: false                    |
| meas_datetime      | datetime   | null: false                    |
| memo               | string     |                                |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to    :baby
- belongs_to    :heigh

## weighs テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| weigh_id           | integer    | null: false                    |
| meas_datetime      | datetime   | null: false                    |
| memo               | string     |                                |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to    :baby
- belongs_to    :weigh

## temperatures テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| temperature_id     | integer    | null: false                    |
| meas_datetime      | datetime   | null: false                    |
| memo               | string     |                                |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to    :baby
- belongs_to    :temperature

## milks テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| milk_id            | integer    | null: false                    |
| drink_date         | date       | null: false                    |
| drink_time         | time       | null: false                    |
| memo               | string     |                                |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to    :baby
- belongs_to    :milk

## pees テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| pee_id             | integer    | null: false                    |
| toilet_date        | date       | null: false                    |
| toilet_time        | time       | null: false                    |
| memo               | string     |                                |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to    :baby
- belongs_to    :pee

## poops テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| poop_id            | integer    | null: false                    |
| toilet_date        | date       | null: false                    |
| toilet_time        | time       | null: false                    |
| memo               | string     |                                |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to    :baby
- belongs_to    :poop

## comments テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| comment            | text       |                                |
| up_datetime        | datetime   |                                |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to    :baby