<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit9066b196efabc55bdd4d84b37a606a3e
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit9066b196efabc55bdd4d84b37a606a3e::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit9066b196efabc55bdd4d84b37a606a3e::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit9066b196efabc55bdd4d84b37a606a3e::$classMap;

        }, null, ClassLoader::class);
    }
}