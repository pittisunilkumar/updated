


CREATE TABLE `fees_discount_approval` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `approval_status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES
(1010, 'Fee Discount', 'fee_dis_appr', 1, 0, '2022-11-17 10:53:36');


INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`)
VALUES (1011, 1010, 'Fee Discount Approval', 'fee_dis_appr_approval', 1, 0, 0, 0, '2022-11-15 05:07:36');


INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`)
VALUES (null, 1, 1011, 1, 0, 0, 0, '2022-05-05 07:00:06');

INSERT INTO `sidebar_menus` (`id`, `permission_group_id`, `icon`, `menu`, `activate_menu`, `lang_key`, `system_level`, `level`, `sidebar_display`, `access_permissions`, `is_active`, `created_at`)
VALUES (35, 1010, 'fa fa-check-circle ftlayer', 'Fee Discount', 'fee_dis_appr', 'fee_dis_appr', 0, 4, 1, '(\'fee_dis_appr_approval\', \'can_view\')', 1, '2023-01-10 12:49:51');




INSERT INTO `sidebar_sub_menus` (`id`, `sidebar_menu_id`, `menu`, `key`, `lang_key`, `url`, `level`, `access_permissions`, `permission_group_id`, `activate_controller`, `activate_methods`, `addon_permission`, `is_active`, `created_at`) VALUES
(300, 35, 'feediscountapproval', NULL, 'fees_discount_approval', 'admin/feesdiscountapproval', 1, '(\'fee_dis_appr_approval\', \'can_view\')', NULL, 'feesdis', 'index,search', '', 1, '2022-11-15 05:45:32');



ALTER TABLE `fees_discount_approval`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `fees_discount_approval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;




