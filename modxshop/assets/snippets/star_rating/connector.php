<?php
/** @var DocumentParser $modx */
define('MODX_API_MODE', true);

include_once dirname(dirname(dirname(dirname(__FILE__)))) . '/index.php';
require_once 'starrating.class.php';
require_once 'starratingresponse.class.php';

$modx->db->connect();
if (empty($modx->config)) {
    $modx->getSettings();
}

$modx->invokeEvent('OnWebPageInit');

$rating = new StarRating($modx);
$response = $rating->response();

if (!$rating->method('get') || !$rating->ajax()) {
    return $response->error($rating->trans('method_not_allowed'))->display();
}

$response = $rating->vote(
    isset($_GET['id']) ? $_GET['id'] : null,
    isset($_GET['vote']) ? $_GET['vote'] : null,
    isset($_GET['tpl']) ? (string) $_GET['tpl'] : ''
);

$response->display();
