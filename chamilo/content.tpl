<!-- /* For licensing terms, see /license.txt */ -->
<!-- Sample display module -->
<div class="sample-display">
<h2>Content:</h2>

{if isset($products) AND $products}
<h3>{$product.name|escape:'htmlall':'UTF-8'}</h3>

{$product.description_short|strip_tags}
	{/if}</div>

<!-- /Sample Display Module -->
