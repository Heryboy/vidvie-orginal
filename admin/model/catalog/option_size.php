<?php

class ModelCatalogOptionSize extends Model {

	public function addOptionSize($data) {

		$this->db->query("INSERT INTO " . DB_PREFIX . "option_size SET sort_order = '" . (int)$data['sort_order'] . "'");



		$option_size_id = $this->db->getLastId();



		foreach ($data['option_size_description'] as $language_id => $value) {

			$this->db->query("INSERT INTO " . DB_PREFIX . "option_size_description SET option_size_id = '" . (int)$option_size_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");

		}


		$this->cache->delete('option_size');



		return $option_size_id;

	}



	public function editOptionSize($option_size_id, $data) {

		$this->db->query("UPDATE " . DB_PREFIX . "option_size SET sort_order = '" . (int)$data['sort_order'] . "' WHERE option_size_id = '" . (int)$option_size_id . "'");



		$this->db->query("DELETE FROM " . DB_PREFIX . "option_size_description WHERE option_size_id = '" . (int)$option_size_id . "'");



		foreach ($data['option_size_description'] as $language_id => $value) {

			$this->db->query("INSERT INTO " . DB_PREFIX . "option_size_description SET option_size_id = '" . (int)$option_size_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");

		}


		$this->cache->delete('option_size');

	}



	public function deleteOptionSize($option_size_id) {

		$this->db->query("DELETE FROM " . DB_PREFIX . "option_size WHERE option_size_id = '" . (int)$option_size_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "option_size_description WHERE option_size_id = '" . (int)$option_size_id . "'");

		$this->cache->delete('option_size');

	}



	public function getOptionSize($option_size_id) {

		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "option_size WHERE option_size_id = '" . (int)$option_size_id . "'");



		return $query->row;

	}



	public function getOptionSizes($data = array()) {

		if ($data) {

			$sql = "SELECT * FROM " . DB_PREFIX . "option_size os LEFT JOIN " . DB_PREFIX . "option_size_description osd ON (os.option_size_id = osd.option_size_id) WHERE osd.language_id = '" . (int)$this->config->get('config_language_id') . "'";



			$sort_data = array(

				'osd.name',

				'os.sort_order'

			);



			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {

				$sql .= " ORDER BY " . $data['sort'];

			} else {

				$sql .= " ORDER BY osd.name";

			}



			if (isset($data['order']) && ($data['order'] == 'DESC')) {

				$sql .= " DESC";

			} else {

				$sql .= " ASC";

			}



			if (isset($data['start']) || isset($data['limit'])) {

				if ($data['start'] < 0) {

					$data['start'] = 0;

				}



				if ($data['limit'] < 1) {

					$data['limit'] = 20;

				}



				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];

			}



			$query = $this->db->query($sql);



			return $query->rows;

		} else {

			$information_data = $this->cache->get('information.' . (int)$this->config->get('config_language_id'));



			if (!$information_data) {

				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "option_size i LEFT JOIN " . DB_PREFIX . "option_size_description id ON (i.option_size_id = id.option_size_id) WHERE id.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY id.title");



				$information_data = $query->rows;



				$this->cache->set('information.' . (int)$this->config->get('config_language_id'), $information_data);

			}



			return $information_data;

		}

	}



	public function getOptionSizeDescriptions($option_size_id) {

		$option_size_description_data = array();



		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "option_size_description WHERE option_size_id = '" . (int)$option_size_id . "'");



		foreach ($query->rows as $result) {

			$option_size_description_data[$result['language_id']] = array(

				'name'            => $result['name'],

				'description'      => $result['description'],

				'meta_title'       => $result['meta_title'],

				'meta_description' => $result['meta_description'],

				'meta_keyword'     => $result['meta_keyword']

			);

		}



		return $option_size_description_data;

	}


	public function getTotalOptionSizes() {

		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "option_size");



		return $query->row['total'];

	}


}