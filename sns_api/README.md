# sns サーバー仕様書

## DBスキーマ
| users |      |          |
| :---- | :--- | :------- |
| id    | name | password |

| follow_users |         |           |
| :----------- | :------ | :-------- |
| id           | user_id | follow_id |

| user_tweets |         |       |
| :---------- | :------ | :---- |
| id          | user_id | tweet |

| message_to_user |         |              |         |
| :-------------- | :------ | :----------- | :------ |
| id              | user_id | sent_user_id | message |