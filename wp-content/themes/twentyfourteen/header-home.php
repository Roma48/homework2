
<?php
/**
 * The Header for our theme
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?><!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) & !(IE 8)]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width">
    <title><?php wp_title( '|', true, 'right' ); ?></title>
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
    <!--[if lt IE 9]>
    <script src="<?php echo get_template_directory_uri(); ?>/js/html5.js"></script>
    <![endif]-->
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site">

    <header id="masthead" class="home-header" role="banner">
        <div class="header-main">
            <a href="/"><img class="logo" src='/wp-content/themes/twentyfourteen/images/geekhub_logo.png'></a>
            <nav>
                <?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'nav-menu' ) ); ?>
            </nav>

            <ul class="social">
                <li class="facebook"><a href="http://www.facebook.com/pages/GeekHub/158983477520070"></a></li>
                <li class="vk"><a href="http://vkontakte.ru/geekhub"></a></li>
                <li class="twitter"><a href="http://twitter.com/#!/geek_hub"></a></li>
                <li class="y"><a href="http://www.youtube.com/user/GeekHubchannel"></a></li>
            </ul>
        </div>





        <div class="registration-home">
        <h4 class="registration">Реєстрацію на 4й сезон закрито</h4>
        <p class="note">*залиште нам ваш емейл і ми повідомимо вас про початок реєстрації</p>
        <form action="#">
            <fieldset>
                <span></span>
                <input type="text" class="email" placeholder="Ваш email">
                <input type="submit" value="Відіслати">
            </fieldset>

        </form>

        </div>

    </header><!-- #masthead -->

    <div id="main" class="site-main">
