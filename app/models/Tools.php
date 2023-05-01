<?php
/*
 * @copyright Copyright (c) 2021 AltumCode (https://altumcode.com/)
 *
 * This software is exclusively sold through https://altumcode.com/ by the AltumCode author.
 * Downloading this product from any other sources and running it without a proper license is illegal,
 *  except the official ones linked from https://altumcode.com/.
 */

namespace Altum\Models;

class Tools extends Model {

    public function get_tools_usage() {

        $cache_instance = \Altum\Cache::$adapter->getItem('tools_usage');

        /* Set cache if not existing */
        if(!$cache_instance->get()) {

            $result = database()->query("SELECT * FROM `tools_usage` ORDER BY `total_views` DESC");
            $data = [];

            while($row = $result->fetch_object()) {
                $data[$row->tool_id] = $row;
            }

            \Altum\Cache::$adapter->save($cache_instance->set($data)->expiresAfter(3600));

        } else {

            /* Get cache */
            $data = $cache_instance->get('tools_usage');

        }

        return $data;
    }

}
