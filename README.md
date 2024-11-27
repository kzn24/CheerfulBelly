# CheerfulBelly

## ◆ サービス概要
SIBOやSIFO、IBSやリーキーガット症候群を始めとした、その他関連疾患など腸の病気に悩む人たちが治療・体調・食事の管理ができるサービスです。

## ◆ コンセプト（制作に至った経緯）
元々おなかが弱い体質に生まれ、しかし学生時代は特に大きな問題もなく過ごせていました。<br>
ところが社会人1年目の頃にSIBOを発症し、以来その他関連する疾患や症状に現在も悩み続けています。
これらの病気に関してはまだ比較的新しい概念であり、オーストラリアでは研究が進んでいるようですがこの日本ではまだまだ認知度も低く、治療が行える病院やクリニックも極限られているのが現状です。<br>
またその治療に関してもまだ研究段階であり、一般的な治療のプラットフォームは存在するものの確立した治療法はなく、病院やクリニックでは自由診療になることがほとんどです。<br>
そのためこれらの病気の治療を行なっている人々の中には独自に治療を行なっている方も過半数存在しており、自身を含めそういった方達の助けになるようなサービスがあればと考えました。

## ◆ 想定されるユーザー層
- 老若男女問わず腸に疾患がある方
- 治療の管理を行いたい方
- 食事と体調を管理したい方
- 腸活を行っている方

## ◆ サービス利用イメージ
毎日隙間時間などを利用して手軽に入力・確認ができるようスマートフォン端末での利用を想定。

## ◆ 類似サービスとの差別化
単なる食事管理や体調管理のできるサービスはたくさん存在しますが、SIBOを始めとする腸の病気ないし治療の管理に特化したサービスはまだ見つけることが出来ていません。

## ◆ 実装を予定している機能

### ●MVP
- 会員登録
- ログイン、ログアウト
- 基本情報編集
- カレンダー機能<br>
  - 薬(サプリメント)の予定作成・確認・編集・削除ができる。<br>
  - その日実際に服用した薬(サプリメント)の登録・編集・削除<br>
- 薬(サプリメント)のリスト登録・編集・削除機能
  - 薬(サプリメント)のリストを登録することで、服用予定を立てたり記録をつける際にわざわざ入力せずともリストから選択可能となる
- 症状のリスト登録・編集・削除機能
  - 薬(サプリメント)のリストと同様に症状(腹痛や倦怠感など)のリストを登録することにより、記録をつける際の入力手間が省ける
- 2つの棒グラフ<br>
  - 薬(サプリメント)の予定確認用。X軸を日付、Y軸を薬(サプリメント)の種類とし、薬(サプリメント)の予定が一目でわかる
  - 実際に服用した薬(サプリメント)の確認用。①と同じくX軸を日付、Y軸を薬(サプリメント)の種類とし、実際に服用した薬(サプリメント)の内容と期間が一目でわかる
- 折れ線グラフ
  - 実際に服用した薬(サプリメント)の棒グラフの真下に設置し、実際に服用した薬(サプリメント)と、それによりどのように体調が変化したのかが確認できる。<br>
X軸を日付、Y軸を5段階の評価とし、確認できる項目は消化器官・食事・体調・排便の4つの項目を予定。
- コンディションの5段階評価機能
  - 折れ線グラフで表示する、消化器官・食事・体調・排便の4つの項目それぞれの5段階評価機能（登録・編集・削除）
- パンくず
- ガイド
- プライバシーポリシー
- 利用規約

### ●その後の機能

- 記録の登録、編集、削除
- 入力忘れの際の通知機能
→ メール通知Action Mailerかアプリ内通知(未定)
- 過去の記録を一覧で閲覧できるアーカイブ機能
  - 検索機能
- パスワードリセット機能
- Google認証
- お問い合わせ
- おたより箱

## ◆ 使用予定技術
| カテゴリー | 技術 |
| --- | --- |
| サーバーサイド | Ruby<br>Ruby on Rails |
| データベース | PostgreSQL |
| 開発環境 | Docker |
| Gem | [Devise](https://github.com/heartcombo/devise)<br>[Omniauth](https://github.com/omniauth/omniauth)<br>[Group Date](https://github.com/ankane/groupdate)<br>[ChartKick](https://github.com/ankane/chartkick)<br>その他 |
| デプロイ | Render.com |
