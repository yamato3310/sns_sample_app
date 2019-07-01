# sns サーバー仕様書

## DBスキーマ
| users |      |       |           |            |
| :---- | :--- | :---- | :-------- | :--------- |
| id    | name | email | create_at | updated_at |

| passwords |         |                 |           |            |
| :-------- | :------ | :-------------- | :-------- | :--------- |
| id        | user_id | password_digest | create_at | updated_at |

| sessions |         |       |           |            |
| :------- | :------ | :---- | :-------- | :--------- |
| id       | user_id | token | create_at | updated_at |

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
 | GET      | /                        | 管理画面                                 |
 | POST     | /signin                  | アカウント制作                           |
 | POST     | /login                   | ログイン                                 |
 | GET      | /logout                  | ログアウト                               |
 | GET      | /users/:user_id/tweets   | ユーザーのツイートの取得                 |
 | POST     | /users/:user_id/tweets   | ツイート                                 |
 | GET      | /users/:user_id/follows  | ユーザーのフォローしているユーザーの取得 |
 | POST     | /users/:user_id/follows  | ユーザーのフォロー                       |
 | GET      | /users/:user_id/timeline | ユーザーのタイムラインの取得             |
 | POST     | /users                   | ユーザー登録                             |
 | GET      | /users                   | ユーザー一覧の取得                       |
 | GET      | /users/:id               | ユーザーのプロフィールの取得             |
 | PUT      | /users/:id               | ユーザーのプロフィールの編集             |
 
 

 ## API一覧
基本的に異常系は
```
{ result: "NG", error: "<NG理由>" }
```
とする

### POST /singin
#### request body
```
{
    name: "yamato3310",                 #ユーザー名
    email: "bity0000@gn.iwasaki.ac.jp", #メールアドレス
    password: "password",               #パスワード
    password_confirmation: "password"   #確認用パスワード
}
```
#### response
```
{
    "result": "OK",
    "user": {
        "id": "d0305c7675e62a8ee0b0",
        "name": "yamato3310",
        "email": "bity0000@gn.iwasaki.ac.jp",
        "created_at": "2019-06-27T01:46:50.000Z",
        "updated_at": "2019-06-27T01:46:50.000Z"
    }
}
```

### POST /login
#### request body
```
{
    "name": "user1",                    #ユーザー名
    "email": "user1@temp.com",          #メールアドレス
    "password": "hogehoge",             #パスワード
    "password_confirmation": "hogehoge" #確認用パスワード
}
```
#### response
```
{
    "result": "OK",
    "user": {
        "id": "user1",
        "name": "user1",
        "email": "user1@temp.com",
        "created_at": "2019-07-01T08:20:17.000Z",
        "updated_at": "2019-07-01T08:20:17.000Z"
    }
}
```

### GET /logout
#### response
```
{
    "result": "OK"
}
```

### GET /users/:user_id/tweets
#### response
```
[
    {
        "id": "tweet1",
        "user_id": "user1",
        "tweet": "tweet1",
        "created_at": "2019-07-01T08:20:17.000Z",
        "updated_at": "2019-07-01T08:20:17.000Z"
    },
    {
        "id": "tweet2",
        "user_id": "user1",
        "tweet": "tweet2",
        "created_at": "2019-07-01T08:20:17.000Z",
        "updated_at": "2019-07-01T08:20:17.000Z"
    }
]
```

### POST /users/:user_id/tweets
#### request body
```
{
    tweet: "うぇぶたのしいよ" #ツイート内容
}
```
#### response
```
{
    "result": "OK",
    "tweets": {
        "id": "737443d2f5d45120c2ae",
        "user_id": "user1",
        "tweet": "うぇぶたのしいよ",
        "created_at": "2019-07-01T10:37:40.000Z",
        "updated_at": "2019-07-01T10:37:40.000Z"
    }
}
```

### GET /users/:user_id/follows
### response
```
{
    "result": "OK",
    "users": [
        {
            "id": "user2",
            "name": "user2",
            "email": "user2@temp.com",
            "created_at": "2019-07-01T08:20:17.000Z",
            "updated_at": "2019-07-01T08:20:17.000Z"
        }
    ]
}
```
