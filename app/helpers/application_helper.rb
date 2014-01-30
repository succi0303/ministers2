module ApplicationHelper
  def full_title(page_title)
    base_title = "日本の総理大臣"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def my_blog_path
    "http://www.succi.jp/blog/"
  end

  def facebook_script_tag
    snippet = <<EOF
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ja_JP/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>
EOF
    snippet.html_safe
  end

  def facebook_button_tag
    snippet = <<EOF
<div class="fb-like" data-href="http://nippon-no-souridaijin.herokuapp.com/" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
EOF
    snippet.html_safe
  end

  def hatena_bookmark_button_tag
    snippet = <<EOF
<a href="http://b.hatena.ne.jp/entry/http://nippon-no-souridaijin.herokuapp.com/" class="hatena-bookmark-button" data-hatena-bookmark-title="日本の総理大臣" data-hatena-bookmark-layout="standard-balloon" data-hatena-bookmark-lang="ja" title="このエントリーをはてなブックマークに追加"><img src="http://b.st-hatena.com/images/entry-button/button-only@2x.png" alt="このエントリーをはてなブックマークに追加" width="20" height="20" style="border: none;" /></a><script type="text/javascript" src="http://b.st-hatena.com/js/bookmark_button.js" charset="utf-8" async="async"></script>
EOF
    snippet.html_safe
  end

  def twitter_button_tag
    snippet = <<EOF
<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://nippon-no-souridaijin.herokuapp.com/">Tweet</a>
<script src="//platform.twitter.com/widgets.js"></script>
EOF
    snippet.html_safe
  end
end
