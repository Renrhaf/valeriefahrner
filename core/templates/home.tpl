<h3 class="page_title">Votre espace personnel</h3>
             
<div class="home_box">
    <div class="home_box_head">
        Fonctionnalités principales
    </div>
    <div class="home_box_body">
        <h5>Votre compte</h5>
        <ul>
            <li><span class="uf_label">Nom :</span><span class="uf_val">{$data.user.user_lname}</span></li>
            <li><span class="uf_label">Prénom :</span><span class="uf_val">{$data.user.user_fname}</span></li>
            <li><span class="uf_label">Email :</span><span class="uf_val">{$data.user.user_mail}</span></li>
            <li><span class="uf_label">Date d'inscription :</span><span class="uf_val">{$data.user.user_created|date_format:"le %d/%m/%Y à %Hh%M"}</span></li>
            {if isset($data.user.user_website)}<li><span class="uf_label">Site web :</span><span class="uf_val"><a href="{$data.user.user_website}">{$data.user.user_website}</a></span></li>{/if}
            {if isset($data.profession.profession_name)}<li><span class="uf_label">Profession :</span><span class="uf_val">{$data.profession.profession_name}</span></li>{/if}
        </ul>
        <div style="clear:both;"></div>
        
        <a class="boutonW hasIcon" style="float:left;margin:20px;" href="index.php?model=User&amp;action=Editform&amp;pk={$smarty.session.user.user_id}&amp;admin" title="Modifier vos informations personnelles"><span class="user_icon"></span>Modifier vos informations personnelles</a>
        
        <h5 style="clear:both;">Informations diverses</h5>
        <ul>
            <li><span class="uf_label">Nombre d'utilisateurs :</span><span class="uf_val">{$data.miscellaneous.total_users}</span></li>
            <li><span class="uf_label">Dernier inscrit :</span><span class="uf_val">{$data.miscellaneous.last_date|date_format:"le %d/%m/%Y à %Hh%M"}</span></li>
            <li><span class="uf_label">Catégorie majeure :</span><span class="uf_val">{$data.miscellaneous.most_used_prof|default:"aucune"}</span></li>
            
            
        </ul>
        <div style="clear:both;"></div>
        
        <a class="boutonW hasIcon" style="float:left;margin:20px;margin-bottom:0px;" href="index.php?model=User&amp;action=showlist&amp;admin" title="Gérer les utilisateurs"><span class="users_icon"></span>Gérer les utilisateurs</a>
        <div style="clear:both;"></div>
        <a class="boutonW hasIcon" style="float:left;margin:20px;margin-bottom:0px;" href="index.php?model=Page&amp;action=showlist&amp;admin" title="Gérer les pages"><span class="pages_icon"></span>Gérer les pages</a>
        <a class="boutonW hasIcon" style="float:left;margin:20px;margin-bottom:0px;" href="index.php?model=Menu&amp;action=showlist&amp;admin" title="Gérer le menu"><span class="news_categ_icon"></span>Gérer le menu</a>
        <div style="clear:both;"></div>
        
        <div style="margin:30px 10px 10px 10px;">
            <a id="putInMaintenance" class="boutonB" style="width:100%;{if !$data.site_status}display:none;{/if}" href="#" onclick="putSiteInMaintenance(true); return false;">Mettre le site en maintenance</a>
            <a id="putOutOfMaintenance" class="boutonW" style="width:100%;{if $data.site_status}display:none;{/if}" href="#" onclick="putSiteInMaintenance(false); return false;">Mettre le site en ligne</a>
        </div>
    </div>
</div>

<div class="home_box">
    <div class="home_box_head">
        Module de Galeries
    </div>
    <div class="home_box_body">
        <h5 style="clear:both;">Informations diverses</h5>
        <ul>
            <li><span class="uf_label">Nombre de galeries :</span><span class="uf_val">{$data.galerie.nb_galeries}</span></li>
            <li><span class="uf_label">Nombre d'images :</span><span class="uf_val">{$data.galerie.nb_images}</span></li>
            <li><span class="uf_label">Taille totale :</span><span class="uf_val">{($data.galerie.total_size / 1000000)|string_format:"%.2f"} Mo</span></li>
        </ul>
        <div style="clear:both;"></div>
        
        <a class="boutonW hasIcon" style="float:left;margin:20px;margin-bottom:0px;" href="index.php?module=Galerie&amp;model=Galerie&amp;action=showlist&amp;admin" title="Gérer les galeries"><span class="galerie_icon"></span>Gérer les galeries</a>
        <div style="clear:both;"></div>
    </div>
</div>

<div class="home_box">
    <div class="home_box_head">
        Module d'actualités
    </div>
    <div class="home_box_body">
        <h5 style="clear:both;">Informations diverses</h5>
        <ul>
            <li><span class="uf_label">Nombre d'actualités :</span><span class="uf_val">{$data.news.nb_news}</span></li>
            <li><span class="uf_label">Nombre de catégories :</span><span class="uf_val">{$data.news.nb_news_categ}</span></li>
            <li><span class="uf_label">Catégorie majeure :</span><span class="uf_val">{$data.news.most_used_categ}</span></li>
        </ul>
        <div style="clear:both;"></div>
        
        <a class="boutonW hasIcon" style="float:left;margin:20px;margin-bottom:0px;" href="index.php?module=News&amp;model=News&amp;action=showlist&amp;admin" title="Gérer les actualités"><span class="news_icon"></span>Gérer les actualités</a>
        <a class="boutonW hasIcon" style="float:left;margin:20px;margin-bottom:0px;" href="index.php?module=News&amp;model=Newscateg&amp;action=showlist&amp;admin" title="Gérer les catégories"><span class="news_categ_icon"></span>Gérer les catégories</a>
        <div style="clear:both;"></div>
    </div>
</div>