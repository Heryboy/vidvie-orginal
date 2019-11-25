<?php

class ControllerModuleFilter extends Controller {

	public function index() {

		if (isset($this->request->get['path'])) {

			$parts = explode('_', (string)$this->request->get['path']);

		} else {

			$parts = array();

		}



		$this->load->language('product/category');



		$this->load->model('catalog/category');



		$this->load->model('catalog/product');



		$this->load->model('tool/image');

		$url = '';



			

			if (isset($this->request->get['filter'])) {

				$url .= '&filter=' . $this->request->get['filter'];

			}



			if (isset($this->request->get['sort'])) {

				$url .= '&sort=' . $this->request->get['sort'];

			}



			if (isset($this->request->get['order'])) {

				$url .= '&order=' . $this->request->get['order'];

			}

		$data['sorts'] = array();



			$data['sorts'][] = array(

				'text'  => $this->language->get('text_default'),

				'value' => 'p.sort_order-ASC',

				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)

			);



			$data['sorts'][] = array(

				'text'  => $this->language->get('text_name_asc'),

				'value' => 'pd.name-ASC',

				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)

			);



			$data['sorts'][] = array(

				'text'  => $this->language->get('text_name_desc'),

				'value' => 'pd.name-DESC',

				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)

			);



			$data['sorts'][] = array(

				'text'  => $this->language->get('text_price_asc'),

				'value' => 'p.price-ASC',

				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)

			);



			$data['sorts'][] = array(

				'text'  => $this->language->get('text_price_desc'),

				'value' => 'p.price-DESC',

				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)

			);



			if ($this->config->get('config_review_status')) {

				$data['sorts'][] = array(

					'text'  => $this->language->get('text_rating_desc'),

					'value' => 'rating-DESC',

					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)

				);



				$data['sorts'][] = array(

					'text'  => $this->language->get('text_rating_asc'),

					'value' => 'rating-ASC',

					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)

				);

			}



			$data['sorts'][] = array(

				'text'  => $this->language->get('text_model_asc'),

				'value' => 'p.model-ASC',

				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)

			);



			$data['sorts'][] = array(

				'text'  => $this->language->get('text_model_desc'),

				'value' => 'p.model-DESC',

				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)

			);



			$data['text_sort'] = $this->language->get('text_sort');



		$category_id = end($parts);



		$this->load->model('catalog/category');



		$category_info = $this->model_catalog_category->getCategory($category_id);



		if ($category_info) {

			$this->load->language('module/filter');



			$data['heading_title'] = $this->language->get('heading_title');



			$data['button_filter'] = $this->language->get('button_filter');



			$url = '';



			if (isset($this->request->get['sort'])) {

				$url .= '&sort=' . $this->request->get['sort'];

			}



			if (isset($this->request->get['order'])) {

				$url .= '&order=' . $this->request->get['order'];

			}



			if (isset($this->request->get['limit'])) {

				$url .= '&limit=' . $this->request->get['limit'];

			}



			$data['action'] = str_replace('&amp;', '&', $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url));



			if (isset($this->request->get['filter'])) {

				$data['filter_category'] = explode(',', $this->request->get['filter']);

			} else {

				$data['filter_category'] = array();

			}



			$this->load->model('catalog/product');



			$data['filter_groups'] = array();



			$filter_groups = $this->model_catalog_category->getCategoryFilters($category_id);



			if ($filter_groups) {

				foreach ($filter_groups as $filter_group) {

					$childen_data = array();



					foreach ($filter_group['filter'] as $filter) {

						$filter_data = array(

							'filter_category_id' => $category_id,

							'filter_filter'      => $filter['filter_id']

						);



						$childen_data[] = array(

							'filter_id' => $filter['filter_id'],

							'name'      => $filter['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : '')

						);

					}



					$data['filter_groups'][] = array(

						'filter_group_id' => $filter_group['filter_group_id'],

						'name'            => $filter_group['name'],

						'filter'          => $childen_data

					);

				}



				return $this->load->view('module/filter', $data);

			}

		}

	}

}