<div id="node-{$node->nid}" class="{$classes} clearfix"{$attributes}>

  {render($title_prefix)}
  {if (!$page)}
    <h2{$title_attributes}>
      <a href="{$node_url}">{$title}</a>
    </h2>
  {/if}
  {render($title_suffix)}

  {if ($display_submitted)}
    <div class="meta submitted">
      {$user_picture}
      {$submitted}
    </div>
  {/if}

  <div class="content clearfix"{$content_attributes}>
    {var $content['comments'] = hide($content['comments'])}
    {var $content['links'] = hide($content['links'])}
    {render($content)}
  </div>

  {if ($teaser || !empty($content['comments']['comment_form'])) && $content['links']['comment']['#links']['comment-add']?}
    {unset $content['links']['comment']['#links']['comment-add']}
  {/if}
  
  {var $links = render($content['links'])}
  {if ($links)}
    <div class="link-wrapper">
      {$links}
    </div>
  {/if}

  {render($content['comments'])}

</div>
