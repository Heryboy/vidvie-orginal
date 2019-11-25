<?php

	

	class ModelCatalogFilter extends Model {



		public function getFilterGroups() {

			$sql = "SELECT fgd.*,fg.filter_group_id as filter_gid FROM `" . DB_PREFIX . "filter_group` fg LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE fgd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

			// $sort_data = array(

			// 	'fgd.name',

			// 	'fg.sort_order'

			// );



			// if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {

			// 	$sql .= " ORDER BY " . $data['sort'];

			// } else {

			// 	$sql .= " ORDER BY fgd.name";

			// }



			// if (isset($data['order']) && ($data['order'] == 'DESC')) {

			// 	$sql .= " DESC";

			// } else {

			// 	$sql .= " ASC";

			// }



			// if (isset($data['start']) || isset($data['limit'])) {

			// 	if ($data['start'] < 0) {

			// 		$data['start'] = 0;

			// 	}



			// 	if ($data['limit'] < 1) {

			// 		$data['limit'] = 20;

			// 	}



			// 	$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];

			// }



			$query = $this->db->query($sql);



			return $query->rows;

		}



		public function getFilterDescriptions($filter_group_id) {

			$filter_data = array();



			$filter_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "filter WHERE filter_group_id = '" . (int)$filter_group_id . "'");



			foreach ($filter_query->rows as $filter) {

				$filter_description_data = array();



				$filter_description_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "filter_description WHERE filter_id = '" . (int)$filter['filter_id'] . "'");



				foreach ($filter_description_query->rows as $filter_description) {

					$filter_description_data[$filter_description['language_id']] = array(

							'filter_id' => $filter_description['filter_id'],

							'name' => $filter_description['name'],

						);

				}



				$filter_data[] = array(

					'filter_id'          => $filter['filter_id'],

					'filter_description' => $filter_description_data,

					'sort_order'         => $filter['sort_order']

				);

			}



			// $sql = "SELECT fd.* FROM `" . DB_PREFIX . "filter` f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE fd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND fd.filter_group_id = '" . (int)$filter_group_id . "'";

			



			// $query = $this->db->query($sql);

			return $filter_data;

		}



		public function getFilter($product_id){

			$filter_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_filter WHERE product_id = '" . (int)$product_id . "'");

			$filter_data = array();

			foreach ($filter_query->rows as $filter) {

				$filter_data[] = $filter['filter_id'];

				// $filter_data[] = array(

				// 	'filter_id'          => $filter['filter_id']

				// );

			}

			// $explode = explode(',',$filter_data);

			return $filter_data;

		}

	}