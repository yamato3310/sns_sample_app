# sns サーバー仕様書

## DBスキーマ
| users |      |       |          |           |            |
| :---- | :--- | :---- | :------- | :-------- | :--------- |
| id    | name | email | password | create_at | updated_at |

| passwords |         |                 |           |            |
| :-------- | :------ | :-------------- | :-------- | :--------- |
| id        | user_id | password_digest | create_at | updated_at |

| follows |         |             |           |            |
| :------ | :------ | :---------- | :-------- | :--------- |
| id      | user_id | followed_id | create_at | updated_at |

| tweets |         |       |           |            |
| :----- | :------ | :---- | :-------- | :--------- |
| id     | user_id | tweet | create_at | updated_at |

| sent_messages |         |              |         |           |            |
| :------------ | :------ | :----------- | :------ | :-------- | :--------- |
| id            | user_id | sent_user_id | message | create_at | updated_at |

## エンドポイント
 | メソッド | エンドポイント           | 補足                                     |
 | :------- | :----------------------- | :--------------------------------------- |
 | GET      | /                        | トップページ                             |
 | GET      | /users/:user_id/tweets   | ユーザーのツイートの取得                 |
 | POST     | /users/:user_id/tweets   | ツイート                                 |
 | GET      | /users/:user_id/follows  | ユーザーのフォローしているユーザーの取得 |
 | POST     | /users/:user_id/follows  | ユーザーのフォロー                       |
 | GET      | /users/:user_id/timeline | ユーザーのタイムラインの取得             |
 | POST     | /users                   | ユーザー登録                             |
 | GET      | /users                   | ユーザー一覧の取得                       |
 | GET      | /users/:id               | ユーザーのプロフィールの取得             |
 | PUT      | /users/:id               | ユーザーのプロフィールの編集             |
 
 

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

### /user/follow:user_id
```
{
    id: 1,
    name: hoge,
    follow_users:[
        {
            id: 2,
            name: hoge
        }, {
            id: 2,
            name: hoge
        }
    ],
}
```

### /tweet/follow:id
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