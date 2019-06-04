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

| message_sent_user |         |              |         |
| :---------------- | :------ | :----------- | :------ |
| id                | user_id | sent_user_id | message |

## エンドポイント
 | メソッド | エンドポイント | 補足                                             |
 | :------- | :------------- | :----------------------------------------------- |
 | GET      | /user:id       | ユーザーの情報を取得とダイレクトメッセージの取得 |
 | POST     | /user          | ユーザーの情報を登録                             |
 | POST     | /user:id       | ユーザーをフォロー                               |
 | GET      | /tweet:id      | フォローしているユーザーのツイートの表示         |
 | POST     | /tweet         | ツイートの投稿                                   |
 | POST     | /user:id       | ユーザーにダイレクトメッセージ                   |

 ## 返却データ
### /user:id
```
{
    user_id: 1,
    name: hogehoge,
    sent_message: [
        {
            id: 1,
            user_id: 2,
            message: huga
        }, {
            id: 2,
            user_id: 2,
            message: hugahuga
        }
    ]
}
```

### /tweet:id
```
{
    users_tweet: [
        {
            id: 1,
            user_id: 1,
            tweet: huga
        }, {
            id: 2,
            user_id: 1,
            tweet: hugahuga
        }
    ]
}
```

### 