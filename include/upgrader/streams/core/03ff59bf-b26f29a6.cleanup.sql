DELETE FROM  `%TABLE_PREFIX%config`
    WHERE  `key` = 'properties' AND  `namespace` LIKE  'TS.%';

DELETE FROM `%TABLE_PREFIX%ticket_status`
    WHERE `state` = 'resolved';

OPTIMIZE TABLE `%TABLE_PREFIX%ticket_status`;
