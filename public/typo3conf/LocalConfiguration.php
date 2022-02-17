<?php
return [
    'BE' => [
        'debug' => false,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$YjRLMS9YdGdhQkRHdUsuWA$kqw9u+w6f524yGN/NBXj687SBPqICTtduSPV4Ndqq5c',
        'loginSecurityLevel' => 'normal',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8',
                'driver' => 'mysqli',
            ],
        ],
    ],
    'EXT' => [
        'extConf' => [
            'backend' => 'a:6:{s:9:"loginLogo";s:0:"";s:19:"loginHighlightColor";s:0:"";s:20:"loginBackgroundImage";s:0:"";s:13:"loginFootnote";s:0:"";s:11:"backendLogo";s:0:"";s:14:"backendFavicon";s:0:"";}',
            'dlf' => 'a:25:{s:15:"metadataFormats";s:1:"0";s:19:"enableInternalProxy";s:1:"0";s:9:"useragent";s:19:"Kitodo.Presentation";s:16:"forceAbsoluteUrl";s:1:"0";s:21:"forceAbsoluteUrlHttps";s:1:"0";s:7:"caching";s:1:"0";s:21:"publishNewCollections";s:1:"1";s:13:"unhideOnIndex";s:1:"0";s:13:"fileGrpImages";s:11:"DEFAULT,MAX";s:13:"fileGrpThumbs";s:6:"THUMBS";s:15:"fileGrpDownload";s:8:"DOWNLOAD";s:15:"fileGrpFulltext";s:8:"FULLTEXT";s:12:"fileGrpAudio";s:5:"AUDIO";s:16:"indexAnnotations";s:1:"0";s:18:"iiifThumbnailWidth";s:3:"150";s:19:"iiifThumbnailHeight";s:3:"150";s:11:"solrConnect";s:1:"0";s:9:"solrHttps";s:1:"0";s:8:"solrHost";s:9:"localhost";s:8:"solrPort";s:4:"8983";s:8:"solrPath";s:1:"/";s:8:"solrUser";s:0:"";s:8:"solrPass";s:0:"";s:11:"solrTimeout";s:2:"10";s:19:"solrAllowCoreDelete";s:1:"0";}',
            'extensionmanager' => 'a:2:{s:21:"automaticInstallation";s:1:"1";s:11:"offlineMode";s:1:"0";}',
            'lfeditor' => 'a:9:{s:13:"viewLanguages";s:0:"";s:15:"defaultLanguage";s:0:"";s:11:"searchRegex";s:60:"/^([a-z0-9_]*locallang[a-z0-9_-]*\\.(php|xml)|[^\\.]*\\.xlf)$/i";s:9:"extIgnore";s:23:"/^(CVS|.svn|.git|csh_)/";s:12:"extWhitelist";s:0:"";s:13:"changeXlfDate";s:1:"1";s:17:"editModeExtension";s:1:"1";s:27:"pathAdditionalConfiguration";s:37:"typo3conf/AdditionalConfiguration.php";s:16:"beMainModuleName";s:4:"user";}',
            'news' => 'a:18:{s:13:"prependAtCopy";s:1:"1";s:6:"tagPid";s:1:"1";s:12:"rteForTeaser";s:1:"0";s:22:"contentElementRelation";s:1:"1";s:21:"contentElementPreview";s:1:"1";s:13:"manualSorting";s:1:"0";s:19:"categoryRestriction";s:0:"";s:34:"categoryBeGroupTceFormsRestriction";s:1:"0";s:19:"dateTimeNotRequired";s:1:"0";s:11:"archiveDate";s:4:"date";s:12:"mediaPreview";s:5:"false";s:20:"advancedMediaPreview";s:1:"1";s:13:"slugBehaviour";s:6:"unique";s:24:"showAdministrationModule";s:1:"1";s:35:"hidePageTreeForAdministrationModule";s:1:"0";s:12:"showImporter";s:1:"0";s:18:"storageUidImporter";s:1:"1";s:22:"resourceFolderImporter";s:12:"/news_import";}',
            'scheduler' => 'a:2:{s:11:"maxLifetime";s:4:"1440";s:15:"showSampleTasks";s:1:"1";}',
        ],
    ],
    'EXTCONF' => [
        'lang' => [
            'availableLanguages' => [
                'de',
            ],
        ],
    ],
    'EXTENSIONS' => [
        'backend' => [
            'backendFavicon' => '',
            'backendLogo' => '',
            'loginBackgroundImage' => '',
            'loginFootnote' => '',
            'loginHighlightColor' => '',
            'loginLogo' => '',
        ],
        'dlf' => [
            'caching' => '0',
            'enableInternalProxy' => '0',
            'fileGrpAudio' => 'AUDIO',
            'fileGrpDownload' => 'DOWNLOAD',
            'fileGrpFulltext' => 'FULLTEXT',
            'fileGrpImages' => 'DEFAULT,MAX',
            'fileGrpThumbs' => 'THUMBS',
            'forceAbsoluteUrl' => '0',
            'forceAbsoluteUrlHttps' => '0',
            'iiifThumbnailHeight' => '150',
            'iiifThumbnailWidth' => '150',
            'indexAnnotations' => '0',
            'metadataFormats' => '0',
            'publishNewCollections' => '1',
            'solrAllowCoreDelete' => '0',
            'solrConnect' => '0',
            'solrHost' => 'localhost',
            'solrHttps' => '0',
            'solrPass' => '',
            'solrPath' => '/',
            'solrPort' => '8983',
            'solrTimeout' => '10',
            'solrUser' => '',
            'unhideOnIndex' => '0',
            'useragent' => 'Kitodo.Presentation',
        ],
        'extensionmanager' => [
            'automaticInstallation' => '1',
            'offlineMode' => '0',
        ],
        'lfeditor' => [
            'beMainModuleName' => 'user',
            'changeXlfDate' => '1',
            'defaultLanguage' => '',
            'editModeExtension' => '1',
            'extIgnore' => '/^(CVS|.svn|.git|csh_)/',
            'extWhitelist' => '',
            'pathAdditionalConfiguration' => 'typo3conf/AdditionalConfiguration.php',
            'searchRegex' => '/^([a-z0-9_]*locallang[a-z0-9_-]*\\.(php|xml)|[^\\.]*\\.xlf)$/i',
            'viewLanguages' => '',
        ],
        'news' => [
            'advancedMediaPreview' => '1',
            'archiveDate' => 'date',
            'categoryBeGroupTceFormsRestriction' => '0',
            'categoryRestriction' => '',
            'contentElementPreview' => '1',
            'contentElementRelation' => '1',
            'dateTimeNotRequired' => '0',
            'hidePageTreeForAdministrationModule' => '0',
            'manualSorting' => '0',
            'mediaPreview' => 'false',
            'prependAtCopy' => '1',
            'resourceFolderImporter' => '/news_import',
            'rteForTeaser' => '0',
            'showAdministrationModule' => '1',
            'showImporter' => '0',
            'slugBehaviour' => 'unique',
            'storageUidImporter' => '1',
            'tagPid' => '1',
        ],
        'scheduler' => [
            'maxLifetime' => '1440',
            'showSampleTasks' => '1',
        ],
    ],
    'FE' => [
        'cacheHash' => [
            'requireCacheHashPresenceParameters' => [
                'tx_dlf[id]',
                'set[mets]',
            ],
        ],
        'debug' => false,
        'loginSecurityLevel' => 'normal',
        'pageNotFoundOnCHashError' => false,
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'GFX' => [
        'processor' => 'ImageMagick',
        'processor_allowTemporaryMasksAsPng' => false,
        'processor_colorspace' => 'sRGB',
        'processor_effects' => true,
        'processor_enabled' => true,
        'processor_path' => '/usr/bin/',
        'processor_path_lzw' => '/usr/bin/',
    ],
    'LOG' => [
        'TYPO3' => [
            'CMS' => [
                'deprecations' => [
                    'writerConfiguration' => [
                        5 => [
                            'TYPO3\CMS\Core\Log\Writer\FileWriter' => [
                                'disabled' => true,
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
    'MAIL' => [
        'transport' => 'sendmail',
        'transport_sendmail_command' => '/usr/local/bin/mailhog sendmail test@example.org --smtp-addr 127.0.0.1:1025',
        'transport_smtp_encrypt' => '',
        'transport_smtp_password' => '',
        'transport_smtp_server' => '',
        'transport_smtp_username' => '',
    ],
    'SYS' => [
        'devIPmask' => '',
        'displayErrors' => 0,
        'encryptionKey' => '613d96536d6d251f09af263bf5d627317bf5c7f9ee5641ca23f1c04c3981b5cdb2b9f2c4960d4545f69ca9ab34f10cdb',
        'exceptionalErrors' => 4096,
        'features' => [
            'newTranslationServer' => true,
            'unifiedPageTranslationHandling' => true,
        ],
        'sitename' => 'DFG-Viewer',
        'systemLogLevel' => 2,
        'systemMaintainers' => [
            1,
        ],
    ],
];
