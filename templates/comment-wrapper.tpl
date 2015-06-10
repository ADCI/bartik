<div id="comments" class="{$classes}"{$attributes}>
  {if ($content['comments'] && $node->type != 'forum')}
    {render($title_prefix)}
    <h2 class="title">{$.php.t('Comments')}</h2>
    {render($title_suffix)}
  {/if}

  {render($content['comments'])}

  {if ($content['comment_form'])}
    <h2 class="title comment-form">{$.php.t('Add new comment')}</h2>
    {render($content['comment_form'])}
  {/if}
</div>
