class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.references :admin, foreign_key: true
      t.string :company #会社名
      t.string :name #代表者苗字
      t.string :tel #電話番号
      t.string :mobile #携帯番号
      t.string :mail #メールアドレス
      t.string :postnumber #郵便番号
      t.string :address #住所
      t.string :industry #業種
      t.string :url #ビル名・号室
      t.string :item #取引商品
      t.string :price #送信単価
      t.string :number #件数
      t.string :history #過去アポ利用履歴
      t.string :area #ターゲットエリア
      t.string :option #オプション
      t.string :start #希望開始時期
      t.string :target #対象者
      t.datetime :next #次回営業日
      t.string :content #サービス内容
      t.timestamps
    end
  end
end
