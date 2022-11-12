module ApplicationHelper
  def default_meta_tags
    {
      site: "Lステップの構築代行・運用代行なら｜Lステップコンサルティング",
      title:"<%= yield(:title) | 合同会社ファクトル' %>",
      description: "Lステップの構築代行・運用代行ならBtoBで数々のCRM・MAツールの運用サポート・システム構築を行って来たLステップコンサルティングにお任せ下さい。",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ],
	    canonical: request.original_url  # 優先されるurl

    }
  end

end
