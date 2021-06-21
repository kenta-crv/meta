class CreateTrials < ActiveRecord::Migration[5.2]
  def change
    create_table :trials do |t|
      t.string :company #会社名
      t.string :name #担当者名
      t.string :tel #電話番号
      t.string :email #メールアドレス
      t.string :address #住所
      t.string :try #トライアル希望有無
      t.string :list #リスト有無
      t.string :script #スクリプト有無
      t.string :contract #本契約に進む際の月間希望件数
      t.string :remarks #その他
      t.string :agree #同意
      t.timestamps
    end
  end
end
