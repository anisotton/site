<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/** @var JDocumentHtml $this */

$app = JFactory::getApplication();
$user = JFactory::getUser();
$doc = JFactory::getDocument();
$doc->setGenerator('');
$removeScripts = array(
    '/media/jui/js/jquery.min.js',
    '/media/jui/js/jquery-noconflict.js',
    '/media/jui/js/jquery-migrate.min.js',
    '/media/system/js/caption.js',
);
foreach ($removeScripts as $removeScript) {
    unset($this->_scripts[JURI::root(true).$removeScript]);
}
$this->_script['text/javascript'] = preg_replace('%jQuery\(window\).on\(\'load\',\s*function\(\)\s*\{\s*new\s*JCaption\(\'img.caption\'\)\;\s*\}\)\;\s*%', '', $this->_script['text/javascript']);

JHtml::_('script', 'jquery-3.2.1.slim.min.js', array('relative' => true));
JHtml::_('script', 'popper.min.js', array('relative' => true));
JHtml::_('script', 'bootstrap.min.js', array('relative' => true));
JHtml::_('script', 'template.js', array('relative' => true));

JHtml::_('stylesheet', 'bootstrap.min.css', array('relative' => true));
JHtml::_('stylesheet', 'full-slider.css', array('relative' => true));
JHtml::_('stylesheet', 'template.css', array('relative' => true));


$logo = '<img src="' . JUri::root() . 'templates/brilhart/images/logo.svg' . '" alt="' . $sitename . '" />';
?>


<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <jdoc:include type="head" />
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top opaque-navbar">
    <div class="container">
        <div class="logo">
            <a class="brand pull-left" href="<?php echo $this->baseurl; ?>/">
                <?php echo $logo; ?>
            </a>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">A Escola</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contato</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <!-- <ol class="carousel-indicators">
             <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
             <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
             <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
         </ol>-->
        <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url('https://dummyimage.com/1900x1080/b700ff/white')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Imagem</h3>
                    <p>Imagem de apresentação</p>
                </div>
            </div>
        </div>
        <!--

        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        -->
    </div>
</header>

<!-- Page Content -->
<section class="py-5">
    <div class="container">
        <h1>Full Slider by Start Bootstrap</h1>
        <p>The background images for the slider are set directly in the HTML using inline CSS. The rest of the styles
            for this template are contained within the
            <code>full-slider.css</code>
            file.</p>
    </div>
</section>

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

