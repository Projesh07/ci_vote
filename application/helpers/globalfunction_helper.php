<?php

/*
 * PHP funkce pro použití v celém projektu
 * AUTHORS: Jiří Losert
 * Created date: 14.4.2016
 */

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * funkce pro nahrazení pevných textů v codu.
 * vytvořený jedinečný název textu. Stylem "controller.view.charakteristické-jméno"
 * @param string $text - identifikátor textu
 * @param string $lang - jazyk. jestli je null použije se výchozí jazyk "cz"
 * @return string
 */
function serch_vote($id)
{
    $ci = & get_instance();
    $ci->load->database();

    $result = $ci->db->query(" SELECT v_value FROM ci_voting_counter  JOIN ci_voting
                    ON ci_voting_counter.v_voting_id = ci_voting.dv_id
                    WHERE dv_id=$id ")->result();
        return $result;

}

