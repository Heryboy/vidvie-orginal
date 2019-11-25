<?php

class ControllerCommonColumnLeft extends Controller {

	public function index() {

		$this->load->model('design/layout');

		$this->load->model('catalog/filter');



		if (isset($this->request->get['route'])) {

			$route = (string)$this->request->get['route'];

		} else {

			$route = 'common/home';

		}

		

		$layout_id = 0;



		if ($route == 'product/category' && isset($this->request->get['path'])) {

			$this->load->model('catalog/category');



			$path = explode('_', (string)$this->request->get['path']);



			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));

		}



		if ($route == 'product/product' && isset($this->request->get['product_id'])) {

			$this->load->model('catalog/product');



			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);

		}



		if ($route == 'information/information' && isset($this->request->get['information_id'])) {

			$this->load->model('catalog/information');



			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);

		}



		if (!$layout_id) {

			$layout_id = $this->model_design_layout->getLayout($route);

		}



		if (!$layout_id) {

			$layout_id = $this->config->get('config_layout_id');

		}



		$this->load->model('extension/module');



		$data['modules'] = array();



		$modules = $this->model_design_layout->getLayoutModules($layout_id, 'column_left');



		foreach ($modules as $module) {

			$part = explode('.', $module['code']);



			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {

				$module_data = $this->load->controller('module/' . $part[0]);



				if ($module_data) {

					$data['modules'][] = $module_data;

				}

			}



			if (isset($part[1])) {

				$setting_info = $this->model_extension_module->getModule($part[1]);



				if ($setting_info && $setting_info['status']) {

					$module_data = $this->load->controller('module/' . $part[0], $setting_info);



					if ($module_data) {

						$data['modules'][] = $module_data;

					}

				}

			}

		}



		// filter ################

		$this->load->language('catalog/filter');

		$filterGroups = array();

		$filter_groups = $this->model_catalog_filter->getFilterGroups();

		foreach ($filter_groups as $result) {

			$filter_group_id = $result['filter_gid'];

			// echo "==>".$result['name']."<br>";

			$FilterDescriptions = $this->model_catalog_filter->getFilterDescriptions($filter_group_id);

			$filters_data = array();

			foreach ($FilterDescriptions as $FilterDescription) {

				// foreach ($FilterDescription['filter_description'] as $filter_data) {

				$filters_data[] = array(

					'filter_id' => $FilterDescription['filter_id'],

					'filter_name' => $FilterDescription['filter_description'],

				);

				// echo $filter_data['name']."<br>";

				// }

			}



			$data['filterGroups'][] = array(

				'filter_group_id' => $result['filter_gid'],

				'name'            => $result['name'],

				'filters_data' => $filters_data

			);

		}

		// print_r($data['filterGroups']);

		// $FilterDescriptions = $this->model_catalog_filter->getFilterDescriptions(1);

		// foreach ($FilterDescriptions as $FilterDescription) {

		// 	echo $FilterDescription['name'];

		// }



			

		// ###############################

		if(isset($this->request->get['path'])){

			$data['link_cat'] = "index.php?route=product/category&path=".$this->request->get['path'];

		}else{

			$data['link_cat'] = "";

		}

		// ###########################END



		$data['heading_title'] = $this->language->get('heading_title');

		// ################### End filter

		return $this->load->view('common/column_left', $data);

	}

}

