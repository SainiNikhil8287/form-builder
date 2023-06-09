<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link      https://cakephp.org CakePHP(tm) Project
 * @since     3.3.0
 * @license   https://opensource.org/licenses/mit-license.php MIT License
 */
namespace App;

use Cake\Core\Configure;
use Cake\Core\Exception\MissingPluginException;
use Cake\Error\Middleware\ErrorHandlerMiddleware;
use Cake\Http\BaseApplication;
use Cake\Routing\Middleware\AssetMiddleware;
use Cake\Routing\Middleware\RoutingMiddleware;
// use App\Event\SocialAuthListener;
// use Cake\Event\EventManager;

/**
 * Application setup class.
 *
 * This defines the bootstrapping logic and middleware layers you
 * want to use in your application.
 */
class Application extends BaseApplication
{
    /**
     * {@inheritDoc}
     */
    public function bootstrap()
    {
        $this->addPlugin('ADmad/HybridAuth', ['bootstrap' => true, 'routes' => true]);

        $this->addPlugin('ADmad/SocialAuth');

        $this->addPlugin('ADmad/HybridAuth', ['bootstrap' => true, 'routes' => true]);

        // Call parent to load bootstrap from files.
        parent::bootstrap();

        if (PHP_SAPI === 'cli') {
            $this->bootstrapCli();
        }

        /*
         * Only try to load DebugKit in development mode
         * Debug Kit should not be installed on a production system
         */
        if (Configure::read('debug')) {
            $this->addPlugin('DebugKit');
        }

        // Load more plugins here
    }

    /**
     * Setup the middleware queue your application will use.
     *
     * @param \Cake\Http\MiddlewareQueue $middlewareQueue The middleware queue to setup.
     * @return \Cake\Http\MiddlewareQueue The updated middleware queue.
     */
    public function middleware($middlewareQueue)
    {
       // EventManager::instance()->on(new SocialAuthListener());

        $middlewareQueue
            // Catch any exceptions in the lower layers,
            // and make an error page/response
            ->add(new ErrorHandlerMiddleware(null, Configure::read('Error')))

            // Handle plugin/theme assets like CakePHP normally does.
            ->add(new AssetMiddleware([
                'cacheTime' => Configure::read('Asset.cacheTime'),
            ]))

            // Add routing middleware.
            // If you have a large number of routes connected, turning on routes
            // caching in production could improve performance. For that when
            // creating the middleware instance specify the cache config name by
            // using it's second constructor argument:
            // `new RoutingMiddleware($this, '_cake_routes_')`
            ->add(new RoutingMiddleware($this));
/*
            $middlewareQueue->add(new \ADmad\SocialAuth\Middleware\SocialAuthMiddleware([
    // Request method type use to initiate authentication.
    'requestMethod' => 'POST',
    // Login page URL. In case of auth failure user is redirected to login
    // page with "error" query string var.
    'loginUrl' => '/users/login',
    // URL to redirect to after authentication (string or array).
    'loginRedirect' => '/',
    // Boolean indicating whether user identity should be returned as entity.
    'userEntity' => false,
    // User model.
    'userModel' => 'Users',
    // Social profile model.
    'socialProfileModel' => 'ADmad/SocialAuth.SocialProfiles',
    // Finder type.
    'finder' => 'all',
    // Fields.
    'fields' => [
        'password' => 'password',
    ],
    // Session key to which to write identity record to.
    'sessionKey' => 'Auth',
    // The method in user model which should be called in case of new user.
    // It should return a User entity.
    'getUserCallback' => 'getUser',
    // SocialConnect Auth service's providers config. https://github.com/SocialConnect/auth/blob/master/README.md
    'serviceConfig' => [
        'provider' => [
            'facebook' => [
                'applicationId' => '<application id>',
                'applicationSecret' => '<application secret>',
                'scope' => [
                    'email',
                ],
                'options' => [
                    'identity.fields' => [
                        'email',
                        // To get a full list of all possible values, refer to
                        // https://developers.facebook.com/docs/graph-api/reference/user
                    ],
                ],
            ],
            'google' => [
                'applicationId' => '<application id>',
                'applicationSecret' => '<application secret>',
                'scope' => [
                    'https://www.googleapis.com/auth/userinfo.email',
                    'https://www.googleapis.com/auth/userinfo.profile',
                ],
            ],
        ],
    ],
    // Instance of `\SocialConnect\Auth\CollectionFactory`. If none provided one will be auto created. Default `null`.
    'collectionFactory' => null,
    // Whether social connect errors should be logged. Default `true`.
    'logErrors' => true,
]));
*/


        return $middlewareQueue;
    }

    /**
     * @return void
     */
    protected function bootstrapCli()
    {
        try {
            $this->addPlugin('Bake');
        } catch (MissingPluginException $e) {
            // Do not halt if the plugin is missing
        }

        $this->addPlugin('Migrations');

        // Load more plugins here
    }
}
