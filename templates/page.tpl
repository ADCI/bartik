<div id="page-wrapper"><div id="page">

  <div id="header" class="{$secondary_menu ? 'with-secondary-menu': 'without-secondary-menu'}"><div class="section clearfix">

    {if ($logo)}
      <a href="{$front_page}" title="{$.php.t('Home')}" rel="home" id="logo">
        <img src="{$logo}" alt="{$.php.t('Home')}" />
      </a>
    {/if}

    {if ($site_name || $site_slogan)}
      <div id="name-and-slogan"{if ($hide_site_name && $hide_site_slogan)} class="element-invisible"{/if}>

        {if ($site_name)}
          {if ($title)}
            <div id="site-name"{if ($hide_site_name)} class="element-invisible"{/if}>
              <strong>
                <a href="{$front_page}" title="{$.php.t('Home')}" rel="home"><span>{$site_name}</span></a>
              </strong>
            </div>
          {else}
            <h1 id="site-name"{if ($hide_site_name)} class="element-invisible"{/if}>>
              <a href="{$front_page}" title="{$.php.t('Home')}" rel="home"><span>{$site_name}</span></a>
            </h1>
          {/if}
        {/if}

        {if ($site_slogan)}
          <div id="site-slogan"{if ($hide_site_slogan)} class="element-invisible"{/if}>
            {$site_slogan}
          </div>
        {/if}

      </div> <!-- /#name-and-slogan -->
    {/if}

    {$.php.render($page['header'])}

    {if ($main_menu)}
      <div id="main-menu" class="navigation">
        {$.php.theme('links__system_main_menu', [
          'links' => $main_menu,
          'attributes' => [
            'id' => 'main-menu-links',
            'class' => ['links', 'clearfix'],
          ],
          'heading' => [
            'text' => t('Main menu'),
            'level' => 'h2',
            'class' => ['element-invisible'],
          ],
        ])}
      </div> <!-- /#main-menu -->
    {/if}

    {if ($secondary_menu)}
      <div id="secondary-menu" class="navigation">
        {$.php.theme('links__system_secondary_menu', [
          'links' => $secondary_menu,
          'attributes' => [
            'id' => 'secondary-menu-links',
            'class' => ['links', 'inline', 'clearfix'],
          ],
          'heading' => [
            'text' => t('Secondary menu'),
            'level' => 'h2',
            'class' => ['element-invisible'],
          ],
        ]) }
      </div> <!-- /#secondary-menu -->
    {/if}

  </div></div> <!-- /.section, /#header -->

  {if ($messages)}
    <div id="messages"><div class="section clearfix">
      {$messages}
    </div></div> <!-- /.section, /#messages -->
  {/if}

  {if ($page['featured'])}
    <div id="featured"><div class="section clearfix">
      {$.php.render($page['featured'])}
    </div></div> <!-- /.section, /#featured -->
  {/if}

  <div id="main-wrapper" class="clearfix"><div id="main" class="clearfix">

    {if ($breadcrumb)}
      <div id="breadcrumb">{$breadcrumb}</div>
    {/if}

    {if ($page['sidebar_first'])}
      <div id="sidebar-first" class="column sidebar"><div class="section">
        {$.php.render($page['sidebar_first'])}
      </div></div> <!-- /.section, /#sidebar-first -->
    {/if}

    <div id="content" class="column"><div class="section">
      {if ($page['highlighted'])}<div id="highlighted">{$.php.render($page['highlighted'])}</div>{/if}
      <a id="main-content"></a>
      {$title_prefix}
      {if ($title)}
        <h1 class="title" id="page-title">
          {$title}
        </h1>
      {/if}
      {$title_suffix}
      {if ($tabs)}
        <div class="tabs">
          {$.php.render($tabs)}
        </div>
      {/if}
      {$.php.render($page['help'])}
      {if ($action_links)}
        <ul class="action-links">
          {$.php.render($action_links)}
        </ul>
      {/if}
      {$.php.render($page['content'])}
      {$feed_icons}

    </div></div> <!-- /.section, /#content -->

    {if ($page['sidebar_second'])}
      <div id="sidebar-second" class="column sidebar"><div class="section">
        {$.php.render($page['sidebar_second'])}
      </div></div> <!-- /.section, /#sidebar-second -->
    {/if}

  </div></div> <!-- /#main, /#main-wrapper -->

  {if ($page['triptych_first'] || $page['triptych_middle'] || $page['triptych_last'])}
    <div id="triptych-wrapper"><div id="triptych" class="clearfix">
      {$.php.render($page['triptych_first'])}
      {$.php.render($page['triptych_middle'])}
      {$.php.render($page['triptych_last'])}
    </div></div> <!-- /#triptych, /#triptych-wrapper -->
  {/if}

  <div id="footer-wrapper"><div class="section">

    {if ($page['footer_firstcolumn'] || $page['footer_secondcolumn'] || $page['footer_thirdcolumn'] || $page['footer_fourthcolumn'])}
      <div id="footer-columns" class="clearfix">
        {$.php.render($page['footer_firstcolumn'])}
        {$.php.render($page['footer_secondcolumn'])}
        {$.php.render($page['footer_thirdcolumn'])}
        {$.php.render($page['footer_fourthcolumn'])}
      </div> <!-- /#footer-columns -->
    {/if}

    {if ($page['footer'])}
      <div id="footer" class="clearfix">
        {$.php.render($page['footer'])}
      </div> <!-- /#footer -->
    {/if}

  </div></div> <!-- /.section, /#footer-wrapper -->

</div></div> <!-- /#page, /#page-wrapper -->
