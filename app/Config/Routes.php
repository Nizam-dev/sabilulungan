<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/test', 'Testing::index');
$routes->get('/', 'Home::index');
$routes->get('/login', 'Login::index');
$routes->post('/login', 'Login::login_post');
$routes->post('/register', 'Login::register_post');
$routes->get('/register', 'Login::register');

$routes->get('/peraturan', 'Fitur::peraturan');
$routes->get('/lapor', 'Fitur::lapor');
$routes->get('/lapor/send', 'Fitur::lapor_send');
$routes->get('/listlaporan', 'Fitur::listlaporan');
$routes->get('/pengumuman', 'Fitur::pengumuman');
$routes->get('/tentang', 'Fitur::tentang');
$routes->get('/tentang', 'Fitur::tentang');
$routes->get('/proposal', 'Fitur::proposal');
