<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$language->language}" lang="{$language->language}" dir="{$language->dir}">
<head>
  {$head}
  <title>{$head_title}</title>
  {$styles}
  {$scripts}
</head>
<body class="{$classes}" {$attributes}>

  <div id="skip-link">
    <a href="#main-content" class="element-invisible element-focusable">{$.php.t('Skip to main content')}</a>
  </div>

  <div id="page-wrapper"><div id="page">

    <div id="header"><div class="section clearfix">
      {if ($site_name || $site_slogan)}
        <div id="name-and-slogan"{if ($hide_site_name && $hide_site_slogan)} {' class="element-invisible"' } {/if}>
          {if ($site_name)}
            <div id="site-name"{if ($hide_site_name)} {' class="element-invisible"' } {/if}>
              <strong>
                <a href="{$front_page}" title="{$.php.t('Home')}" rel="home"><span>{$site_name}</span></a>
              </strong>
            </div>
          {/if}
          {if ($site_slogan)}
            <div id="site-slogan"{if ($hide_site_slogan)} {' class="element-invisible"'} {/if}>
              {$site_slogan}
            </div>
          {/if}
        </div> <!-- /#name-and-slogan -->
      {/if}
    </div></div> <!-- /.section, /#header -->

    <div id="main-wrapper"><div id="main" class="clearfix">
      <div id="content" class="column"><div class="section">
        <a id="main-content"></a>
        {if ($title)}<h1 class="title" id="page-title">{$title}</h1>{/if}
        {$content}
        {if ($messages)}
          <div id="messages"><div class="section clearfix">
            {$messages}
          </div></div> <!-- /.section, /#messages -->
        {/if}
      </div></div> <!-- /.section, /#content -->
    </div></div> <!-- /#main, /#main-wrapper -->

  </div></div> <!-- /#page, /#page-wrapper -->

</body>
</html>
