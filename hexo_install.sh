npm install hexo-cli
cd ~/work
hexo init $1 
cd $1
npm install 
git clone https://github.com/wzpan/hexo-theme-freemind.git themes/freemind
git clone https://github.com/theme-next/hexo-theme-next themes/next
git clone https://github.com/litten/hexo-theme-yilia.git themes/yiliya
git clone https://github.com/pinggod/hexo-theme-apollo.git themes/apollo
sed -i 's/landscapte/freemind/g' _config.yml
npm install hexo-filter-flowchart --save
npm install hexo-filter-sequence --save
#npm install hexo-filter-optimize --save
#npm install hexo-generator-search --save
npm install hexo-generator-searchdb --save
npm install hexo-toc --save
cnpm install hexo-tag-bootstrap --save
cnpm install hexo-recommended-posts --save
cnpm install hexo-deployer-git --save
cnpm install hexo-util --save
#cnpm install hexo-cover-utils --save
#cnpm install hexo-reading-time --save
#vim themes/freemind/layout/post.ejs
#```
#<%- readingTime(page.content) %>
#```
#cnpm install hexo-pdf --save
#```
#{% pdf http://....pdf %}
#```
mkdir categories
echo -e "title: Categories\nlayout: categories\n---" > categories/index.html
cnpm install hexo-generator-slidehtml --save
cnpm install hexo-filter-inline-assets --save
sed -i 's/next/freemind/g' _config.yml 
hexo new page about
hexo new page tags
nohug hexo s
#hexo clean && hexo g && hexo d
