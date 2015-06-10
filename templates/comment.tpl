<div class="{$classes} clearfix"{$attributes}>

  <div class="attribution">

    {$picture}

    <div class="submitted">
      <p class="commenter-name">
        {$author}
      </p>
      <p class="comment-time">
        {$created}
      </p>
      <p class="comment-permalink">
        {$permalink}
      </p>
    </div>
  </div>

  <div class="comment-text">
    <div class="comment-arrow"></div>

    {if ($new)}
      <span class="new">{$new}</span>
    {/if}

    {render($title_prefix)}
    <h3{$title_attributes}>{$title}</h3>
    {render($title_suffix)}

    <div class="content"{$content_attributes}>
      {var $content['links'] = hide($content['links'])}
      {render($content)}
      {if ($signature)}
      <div class="user-signature clearfix">
        {$signature}
      </div>
      {/if}
    </div> <!-- /.content -->

    {render($content['links'])}
  </div> <!-- /.comment-text -->
</div>