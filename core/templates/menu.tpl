<div id="menu">
    <ul>
        {foreach $data.menus as $menu}
            {if $config.realpath == $menu.menu_block_link}
                <li class="menublock">
                    <span class="menuAG menu_limit"></span>
                        <a class="menuA" href="{$menu.menu_block_link}">{$menu.menu_block_title}</a>
                    <span class="menuAD menu_limit"></span>
                </li>
            {else}
                <li class="menublock">
                    <span class="menuG menu_limit"></span>
                        <a href="{$menu.menu_block_link}">{$menu.menu_block_title}</a>
                    <span class="menuD menu_limit"></span>
                </li>
            {/if}
        {/foreach}
    </ul>
    <div style="clear:both;"></div>
</div>