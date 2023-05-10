-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 02:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_dmad_social_auth_phinxlog`
--

CREATE TABLE `a_dmad_social_auth_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `a_dmad_social_auth_phinxlog`
--

INSERT INTO `a_dmad_social_auth_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20170418000000, 'CreateSocialProfiles', '2023-05-10 01:54:34', '2023-05-10 01:54:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_forms`
--

CREATE TABLE `custom_forms` (
  `id` int(11) NOT NULL,
  `form_code` text,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_forms`
--

INSERT INTO `custom_forms` (`id`, `form_code`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '<ul id=\"frmb-1683610530028\" class=\"frmb stage-wrap pull-left ui-sortable\" data-content=\"Drag a field from the right to this area\" style=\"min-height: 581px;\"><li class=\"number-field form-field\" type=\"number\" id=\"frmb-1683610530028-fld-1\"><div class=\"field-actions\"><a type=\"remove\" id=\"del_frmb-1683610530028-fld-1\" class=\"del-button btn formbuilder-icon-cancel delete-confirm\" title=\"Remove Element\"></a><a type=\"edit\" id=\"frmb-1683610530028-fld-1-edit\" class=\"toggle-form btn formbuilder-icon-pencil\" title=\"Edit\"></a><a type=\"copy\" id=\"frmb-1683610530028-fld-1-copy\" class=\"copy-button btn formbuilder-icon-copy\" title=\"Copy\"></a></div><label class=\"field-label\">Number</label><span class=\"required-asterisk\" style=\"\"> *</span><span class=\"tooltip-element\" tooltip=\"undefined\" style=\"display:none\">?</span><div class=\"prev-holder\" data-field-id=\"frmb-1683610530028-fld-1\"><div class=\"formbuilder-number form-group field-number-1683610531308-0-preview\"><label for=\"number-1683610531308-0-preview\" class=\"formbuilder-number-label\">Number</label><input class=\"form-control\" name=\"number-1683610531308-0-preview\" type=\"number\" id=\"number-1683610531308-0-preview\"></div></div><div id=\"frmb-1683610530028-fld-1-holder\" class=\"frm-holder\" data-field-id=\"frmb-1683610530028-fld-1\"><div class=\"form-elements\"><div class=\"form-group required-wrap\"><label for=\"required-frmb-1683610530028-fld-1\">Required</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-required\" name=\"required\" id=\"required-frmb-1683610530028-fld-1\"></div></div><div class=\"form-group label-wrap\" style=\"display: block\"><label for=\"label-frmb-1683610530028-fld-1\">Label</label><div class=\"input-wrap\"><div name=\"label\" placeholder=\"Label\" class=\"fld-label form-control\" id=\"label-frmb-1683610530028-fld-1\" contenteditable=\"true\">Number</div></div></div><div class=\"form-group description-wrap\" style=\"display: block\"><label for=\"description-frmb-1683610530028-fld-1\">Help Text</label><div class=\"input-wrap\"><input name=\"description\" placeholder=\"\" class=\"fld-description form-control\" id=\"description-frmb-1683610530028-fld-1\" value=\"\" type=\"text\"></div></div><div class=\"form-group placeholder-wrap\" style=\"display: block\"><label for=\"placeholder-frmb-1683610530028-fld-1\">Placeholder</label><div class=\"input-wrap\"><input name=\"placeholder\" placeholder=\"\" class=\"fld-placeholder form-control\" id=\"placeholder-frmb-1683610530028-fld-1\" value=\"\" type=\"text\"></div></div><div class=\"form-group className-wrap\" style=\"display: block\"><label for=\"className-frmb-1683610530028-fld-1\">Class</label><div class=\"input-wrap\"><input name=\"className\" placeholder=\"space separated classes\" class=\"fld-className form-control\" id=\"className-frmb-1683610530028-fld-1\" value=\"form-control\" type=\"text\"></div></div><div class=\"form-group name-wrap\" style=\"display: block\"><label for=\"name-frmb-1683610530028-fld-1\">Name</label><div class=\"input-wrap\"><input name=\"name\" placeholder=\"\" class=\"fld-name form-control\" id=\"name-frmb-1683610530028-fld-1\" value=\"number-1683610531308-0\" type=\"text\"></div></div><div class=\"form-group access-wrap\"><label for=\"access-frmb-1683610530028-fld-1\">Access</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-access\" name=\"access\" id=\"access-frmb-1683610530028-fld-1\"> <label for=\"access-frmb-1683610530028-fld-1\">Limit access to one or more of the following roles:</label><div class=\"available-roles\"><label for=\"fld-frmb-1683610530028-fld-1-roles-1\"><input type=\"checkbox\" name=\"roles[]\" value=\"1\" id=\"fld-frmb-1683610530028-fld-1-roles-1\" class=\"roles-field\"> Administrator</label></div></div></div><div class=\"form-group value-wrap\" style=\"display: undefined\"><label for=\"value-frmb-1683610530028-fld-1\">Value</label><div class=\"input-wrap\"><input name=\"value\" placeholder=\"Value\" class=\"fld-value form-control\" id=\"value-frmb-1683610530028-fld-1\" value=\"\" type=\"text\"></div></div><div class=\"form-group min-wrap\"><label for=\"min-frmb-1683610530028-fld-1\">min</label><div class=\"input-wrap\"><input type=\"number\" name=\"min\" class=\"fld-min form-control form-control\" id=\"min-frmb-1683610530028-fld-1\"></div></div><div class=\"form-group max-wrap\"><label for=\"max-frmb-1683610530028-fld-1\">max</label><div class=\"input-wrap\"><input type=\"number\" name=\"max\" class=\"fld-max form-control form-control\" id=\"max-frmb-1683610530028-fld-1\"></div></div><div class=\"form-group step-wrap\"><label for=\"step-frmb-1683610530028-fld-1\">step</label><div class=\"input-wrap\"><input type=\"number\" name=\"step\" class=\"fld-step form-control form-control\" id=\"step-frmb-1683610530028-fld-1\"></div></div><a class=\"close-field\">Close</a></div></div></li><li class=\"radio-group-field form-field\" type=\"radio-group\" id=\"frmb-1683610530028-fld-2\"><div class=\"field-actions\"><a type=\"remove\" id=\"del_frmb-1683610530028-fld-2\" class=\"del-button btn formbuilder-icon-cancel delete-confirm\" title=\"Remove Element\"></a><a type=\"edit\" id=\"frmb-1683610530028-fld-2-edit\" class=\"toggle-form btn formbuilder-icon-pencil\" title=\"Edit\"></a><a type=\"copy\" id=\"frmb-1683610530028-fld-2-copy\" class=\"copy-button btn formbuilder-icon-copy\" title=\"Copy\"></a></div><label class=\"field-label\">Radio Group</label><span class=\"required-asterisk\" style=\"\"> *</span><span class=\"tooltip-element\" tooltip=\"undefined\" style=\"display:none\">?</span><div class=\"prev-holder\" data-field-id=\"frmb-1683610530028-fld-2\"><div class=\"formbuilder-radio-group form-group field-radio-group-1683610533283-0-preview\"><label for=\"radio-group-1683610533283-0-preview\" class=\"formbuilder-radio-group-label\">Radio Group</label><div class=\"radio-group\"><div class=\"formbuilder-radio\"><input name=\"radio-group-1683610533283-0-preview\" class=\"\" id=\"radio-group-1683610533283-0-preview-0\" value=\"option-1\" type=\"radio\"><label for=\"radio-group-1683610533283-0-preview-0\">Option 1</label></div><div class=\"formbuilder-radio\"><input name=\"radio-group-1683610533283-0-preview\" class=\"\" id=\"radio-group-1683610533283-0-preview-1\" value=\"option-2\" type=\"radio\"><label for=\"radio-group-1683610533283-0-preview-1\">Option 2</label></div><div class=\"formbuilder-radio\"><input name=\"radio-group-1683610533283-0-preview\" class=\"\" id=\"radio-group-1683610533283-0-preview-2\" value=\"option-3\" type=\"radio\"><label for=\"radio-group-1683610533283-0-preview-2\">Option 3</label></div></div></div></div><div id=\"frmb-1683610530028-fld-2-holder\" class=\"frm-holder\" data-field-id=\"frmb-1683610530028-fld-2\"><div class=\"form-elements\"><div class=\"form-group required-wrap\"><label for=\"required-frmb-1683610530028-fld-2\">Required</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-required\" name=\"required\" id=\"required-frmb-1683610530028-fld-2\"></div></div><div class=\"form-group label-wrap\" style=\"display: block\"><label for=\"label-frmb-1683610530028-fld-2\">Label</label><div class=\"input-wrap\"><div name=\"label\" placeholder=\"Label\" class=\"fld-label form-control\" id=\"label-frmb-1683610530028-fld-2\" contenteditable=\"true\">Radio Group</div></div></div><div class=\"form-group description-wrap\" style=\"display: block\"><label for=\"description-frmb-1683610530028-fld-2\">Help Text</label><div class=\"input-wrap\"><input name=\"description\" placeholder=\"\" class=\"fld-description form-control\" id=\"description-frmb-1683610530028-fld-2\" value=\"\" type=\"text\"></div></div><div class=\"form-group inline-wrap\"><label for=\"inline-frmb-1683610530028-fld-2\">Inline</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-inline\" name=\"inline\" id=\"inline-frmb-1683610530028-fld-2\"> <label for=\"inline-frmb-1683610530028-fld-2\">Display radio inline</label></div></div><div class=\"form-group className-wrap\" style=\"display: block\"><label for=\"className-frmb-1683610530028-fld-2\">Class</label><div class=\"input-wrap\"><input name=\"className\" placeholder=\"space separated classes\" class=\"fld-className form-control\" id=\"className-frmb-1683610530028-fld-2\" value=\"\" type=\"text\"></div></div><div class=\"form-group name-wrap\" style=\"display: block\"><label for=\"name-frmb-1683610530028-fld-2\">Name</label><div class=\"input-wrap\"><input name=\"name\" placeholder=\"\" class=\"fld-name form-control\" id=\"name-frmb-1683610530028-fld-2\" value=\"radio-group-1683610533283-0\" type=\"text\"></div></div><div class=\"form-group access-wrap\"><label for=\"access-frmb-1683610530028-fld-2\">Access</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-access\" name=\"access\" id=\"access-frmb-1683610530028-fld-2\"> <label for=\"access-frmb-1683610530028-fld-2\">Limit access to one or more of the following roles:</label><div class=\"available-roles\"><label for=\"fld-frmb-1683610530028-fld-2-roles-1\"><input type=\"checkbox\" name=\"roles[]\" value=\"1\" id=\"fld-frmb-1683610530028-fld-2-roles-1\" class=\"roles-field\"> Administrator</label></div></div></div><div class=\"form-group other-wrap\"><label for=\"other-frmb-1683610530028-fld-2\">Enable \"Other\"</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-other\" name=\"other\" id=\"other-frmb-1683610530028-fld-2\"> <label for=\"other-frmb-1683610530028-fld-2\">Let users enter an unlisted option</label></div></div><div class=\"form-group field-options\"><label class=\"false-label\">Options</label><div class=\"sortable-options-wrap\"><ol class=\"sortable-options ui-sortable\"><li class=\"ui-sortable-handle\"><input type=\"radio\" data-attr=\"selected\" class=\"option-selected option-attr\"><input value=\"Option 1\" type=\"text\" placeholder=\"\" data-attr=\"label\" class=\"option-label option-attr\"><input value=\"option-1\" type=\"text\" placeholder=\"\" data-attr=\"value\" class=\"option-value option-attr\"><a class=\"remove btn formbuilder-icon-cancel\" title=\"Remove Element\"></a></li><li class=\"ui-sortable-handle\"><input type=\"radio\" data-attr=\"selected\" class=\"option-selected option-attr\"><input value=\"Option 2\" type=\"text\" placeholder=\"\" data-attr=\"label\" class=\"option-label option-attr\"><input value=\"option-2\" type=\"text\" placeholder=\"\" data-attr=\"value\" class=\"option-value option-attr\"><a class=\"remove btn formbuilder-icon-cancel\" title=\"Remove Element\"></a></li><li class=\"ui-sortable-handle\"><input type=\"radio\" data-attr=\"selected\" class=\"option-selected option-attr\"><input value=\"Option 3\" type=\"text\" placeholder=\"\" data-attr=\"label\" class=\"option-label option-attr\"><input value=\"option-3\" type=\"text\" placeholder=\"\" data-attr=\"value\" class=\"option-value option-attr\"><a class=\"remove btn formbuilder-icon-cancel\" title=\"Remove Element\"></a></li></ol><div class=\"option-actions\"><a class=\"add add-opt\">Add Option +</a></div></div></div><a class=\"close-field\">Close</a></div></div></li><li class=\"paragraph-field form-field\" type=\"paragraph\" id=\"frmb-1683610530028-fld-3\"><div class=\"field-actions\"><a type=\"remove\" id=\"del_frmb-1683610530028-fld-3\" class=\"del-button btn formbuilder-icon-cancel delete-confirm\" title=\"Remove Element\"></a><a type=\"edit\" id=\"frmb-1683610530028-fld-3-edit\" class=\"toggle-form btn formbuilder-icon-pencil\" title=\"Edit\"></a><a type=\"copy\" id=\"frmb-1683610530028-fld-3-copy\" class=\"copy-button btn formbuilder-icon-copy\" title=\"Copy\"></a></div><label class=\"field-label\">Paragraph</label><span class=\"required-asterisk\" style=\"\"> *</span><span class=\"tooltip-element\" tooltip=\"undefined\" style=\"display:none\">?</span><div class=\"prev-holder\" data-field-id=\"frmb-1683610530028-fld-3\"><div class=\"formbuilder-paragraph form-group field-paragraph-1683610533964-0-preview\"><p class=\"\" name=\"paragraph-1683610533964-0-preview\" id=\"paragraph-1683610533964-0-preview\">Paragraph</p></div></div><div id=\"frmb-1683610530028-fld-3-holder\" class=\"frm-holder\" data-field-id=\"frmb-1683610530028-fld-3\"><div class=\"form-elements\"><div class=\"form-group label-wrap\" style=\"display: block\"><label for=\"label-frmb-1683610530028-fld-3\">Content</label><div class=\"input-wrap\"><div name=\"label\" placeholder=\"Label\" class=\"fld-label form-control\" id=\"label-frmb-1683610530028-fld-3\" contenteditable=\"true\">Paragraph</div></div></div><div class=\"form-group subtype-wrap\"><label for=\"subtype-frmb-1683610530028-fld-3\">Type</label><div class=\"input-wrap\"><select id=\"subtype-frmb-1683610530028-fld-3\" name=\"subtype\" class=\"fld-subtype form-control\"><option label=\"p\" value=\"p\">p</option><option label=\"address\" value=\"address\">address</option><option label=\"blockquote\" value=\"blockquote\">blockquote</option><option label=\"canvas\" value=\"canvas\">canvas</option><option label=\"output\" value=\"output\">output</option></select></div></div><div class=\"form-group className-wrap\" style=\"display: block\"><label for=\"className-frmb-1683610530028-fld-3\">Class</label><div class=\"input-wrap\"><input name=\"className\" placeholder=\"space separated classes\" class=\"fld-className form-control\" id=\"className-frmb-1683610530028-fld-3\" value=\"\" type=\"text\"></div></div><div class=\"form-group access-wrap\"><label for=\"access-frmb-1683610530028-fld-3\">Access</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-access\" name=\"access\" id=\"access-frmb-1683610530028-fld-3\"> <label for=\"access-frmb-1683610530028-fld-3\">Limit access to one or more of the following roles:</label><div class=\"available-roles\"><label for=\"fld-frmb-1683610530028-fld-3-roles-1\"><input type=\"checkbox\" name=\"roles[]\" value=\"1\" id=\"fld-frmb-1683610530028-fld-3-roles-1\" class=\"roles-field\"> Administrator</label></div></div></div><a class=\"close-field\">Close</a></div></div></li><li class=\"select-field form-field\" type=\"select\" id=\"frmb-1683610530028-fld-4\"><div class=\"field-actions\"><a type=\"remove\" id=\"del_frmb-1683610530028-fld-4\" class=\"del-button btn formbuilder-icon-cancel delete-confirm\" title=\"Remove Element\"></a><a type=\"edit\" id=\"frmb-1683610530028-fld-4-edit\" class=\"toggle-form btn formbuilder-icon-pencil\" title=\"Edit\"></a><a type=\"copy\" id=\"frmb-1683610530028-fld-4-copy\" class=\"copy-button btn formbuilder-icon-copy\" title=\"Copy\"></a></div><label class=\"field-label\">Select</label><span class=\"required-asterisk\" style=\"\"> *</span><span class=\"tooltip-element\" tooltip=\"undefined\" style=\"display:none\">?</span><div class=\"prev-holder\" data-field-id=\"frmb-1683610530028-fld-4\"><div class=\"formbuilder-select form-group field-select-1683610534499-0-preview\"><label for=\"select-1683610534499-0-preview\" class=\"formbuilder-select-label\">Select</label><select class=\"form-control\" name=\"select-1683610534499-0-preview\" id=\"select-1683610534499-0-preview\"><option selected=\"selected\" value=\"option-1\" id=\"select-1683610534499-0-preview-0\">Option 1</option><option value=\"option-2\" id=\"select-1683610534499-0-preview-1\">Option 2</option><option value=\"option-3\" id=\"select-1683610534499-0-preview-2\">Option 3</option></select></div></div><div id=\"frmb-1683610530028-fld-4-holder\" class=\"frm-holder\" data-field-id=\"frmb-1683610530028-fld-4\"><div class=\"form-elements\"><div class=\"form-group required-wrap\"><label for=\"required-frmb-1683610530028-fld-4\">Required</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-required\" name=\"required\" id=\"required-frmb-1683610530028-fld-4\"></div></div><div class=\"form-group label-wrap\" style=\"display: block\"><label for=\"label-frmb-1683610530028-fld-4\">Label</label><div class=\"input-wrap\"><div name=\"label\" placeholder=\"Label\" class=\"fld-label form-control\" id=\"label-frmb-1683610530028-fld-4\" contenteditable=\"true\">Select</div></div></div><div class=\"form-group description-wrap\" style=\"display: block\"><label for=\"description-frmb-1683610530028-fld-4\">Help Text</label><div class=\"input-wrap\"><input name=\"description\" placeholder=\"\" class=\"fld-description form-control\" id=\"description-frmb-1683610530028-fld-4\" value=\"\" type=\"text\"></div></div><div class=\"form-group placeholder-wrap\" style=\"display: block\"><label for=\"placeholder-frmb-1683610530028-fld-4\">Placeholder</label><div class=\"input-wrap\"><input name=\"placeholder\" placeholder=\"\" class=\"fld-placeholder form-control\" id=\"placeholder-frmb-1683610530028-fld-4\" value=\"\" type=\"text\"></div></div><div class=\"form-group className-wrap\" style=\"display: block\"><label for=\"className-frmb-1683610530028-fld-4\">Class</label><div class=\"input-wrap\"><input name=\"className\" placeholder=\"space separated classes\" class=\"fld-className form-control\" id=\"className-frmb-1683610530028-fld-4\" value=\"form-control\" type=\"text\"></div></div><div class=\"form-group name-wrap\" style=\"display: block\"><label for=\"name-frmb-1683610530028-fld-4\">Name</label><div class=\"input-wrap\"><input name=\"name\" placeholder=\"\" class=\"fld-name form-control\" id=\"name-frmb-1683610530028-fld-4\" value=\"select-1683610534499-0\" type=\"text\"></div></div><div class=\"form-group access-wrap\"><label for=\"access-frmb-1683610530028-fld-4\">Access</label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-access\" name=\"access\" id=\"access-frmb-1683610530028-fld-4\"> <label for=\"access-frmb-1683610530028-fld-4\">Limit access to one or more of the following roles:</label><div class=\"available-roles\"><label for=\"fld-frmb-1683610530028-fld-4-roles-1\"><input type=\"checkbox\" name=\"roles[]\" value=\"1\" id=\"fld-frmb-1683610530028-fld-4-roles-1\" class=\"roles-field\"> Administrator</label></div></div></div><div class=\"form-group multiple-wrap\"><label for=\"multiple-frmb-1683610530028-fld-4\"> </label><div class=\"input-wrap\"><input type=\"checkbox\" class=\"fld-multiple\" name=\"multiple\" id=\"multiple-frmb-1683610530028-fld-4\"> <label for=\"multiple-frmb-1683610530028-fld-4\">Allow Multiple Selections</label></div></div><div class=\"form-group field-options\"><label class=\"false-label\">Options</label><div class=\"sortable-options-wrap\"><ol class=\"sortable-options ui-sortable\"><li class=\"ui-sortable-handle\"><input value=\"value\" type=\"radio\" checked=\"checked\" data-attr=\"selected\" class=\"option-selected option-attr\"><input value=\"Option 1\" type=\"text\" placeholder=\"\" data-attr=\"label\" class=\"option-label option-attr\"><input value=\"option-1\" type=\"text\" placeholder=\"\" data-attr=\"value\" class=\"option-value option-attr\"><a class=\"remove btn formbuilder-icon-cancel\" title=\"Remove Element\"></a></li><li class=\"ui-sortable-handle\"><input type=\"radio\" data-attr=\"selected\" class=\"option-selected option-attr\"><input value=\"Option 2\" type=\"text\" placeholder=\"\" data-attr=\"label\" class=\"option-label option-attr\"><input value=\"option-2\" type=\"text\" placeholder=\"\" data-attr=\"value\" class=\"option-value option-attr\"><a class=\"remove btn formbuilder-icon-cancel\" title=\"Remove Element\"></a></li><li class=\"ui-sortable-handle\"><input type=\"radio\" data-attr=\"selected\" class=\"option-selected option-attr\"><input value=\"Option 3\" type=\"text\" placeholder=\"\" data-attr=\"label\" class=\"option-label option-attr\"><input value=\"option-3\" type=\"text\" placeholder=\"\" data-attr=\"value\" class=\"option-value option-attr\"><a class=\"remove btn formbuilder-icon-cancel\" title=\"Remove Element\"></a></li></ol><div class=\"option-actions\"><a class=\"add add-opt\">Add Option +</a></div></div></div><a class=\"close-field\">Close</a></div></div></li></ul>', 'Active', 1234, '2023-05-08 10:28:14', '2023-05-08 10:28:14'),
(2, '\n\n		<!-- <form id=\"inside-form\"> --><form method=\"post\" accept-charset=\"utf-8\" id=\"inside-form\" action=\"/projects/cake/click-form\"><div style=\"display:none;\"><input type=\"hidden\" name=\"_method\" value=\"POST\"><input type=\"hidden\" name=\"_csrfToken\" autocomplete=\"off\" value=\"79bbaab96f4113f156d4ca5ed5af8e9b40871152641ddd287996577d8ed415aab899ed40186565528dc3328564f20f517016a20b6ff2e4737d17d96cfc375e7a\"></div>\n\n\n		<!-- </form> --><div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><button class=\"form-control mt-2\" id=\"form-save\" type=\"submit\">submit</button></form>\n	', 'Inactive', 1234, '2023-05-08 10:29:36', '2023-05-08 10:29:36'),
(3, '\n\n		<form method=\"post\" accept-charset=\"utf-8\" id=\"inside-form\" action=\"/projects/cake/click-form\"><div style=\"display:none;\"><input type=\"hidden\" name=\"_method\" value=\"POST\"><input type=\"hidden\" name=\"_csrfToken\" autocomplete=\"off\" value=\"79bbaab96f4113f156d4ca5ed5af8e9b40871152641ddd287996577d8ed415aab899ed40186565528dc3328564f20f517016a20b6ff2e4737d17d96cfc375e7a\"></div>\n\n\n		<div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><button class=\"form-control mt-2\" id=\"form-save\" type=\"submit\">submit</button></form>\n	', 'Inactive', 1234, '2023-05-08 10:46:53', '2023-05-08 10:46:53'),
(4, '\n\n		<form method=\"post\" accept-charset=\"utf-8\" id=\"inside-form\" action=\"/projects/cake/click-form\"><div style=\"display:none;\"><input type=\"hidden\" name=\"_method\" value=\"POST\"><input type=\"hidden\" name=\"_csrfToken\" autocomplete=\"off\" value=\"79bbaab96f4113f156d4ca5ed5af8e9b40871152641ddd287996577d8ed415aab899ed40186565528dc3328564f20f517016a20b6ff2e4737d17d96cfc375e7a\"></div>\n\n\n		<div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><div class=\"input text\"><input type=\"text\" name=\"uname\" placeholder=\"User Name\" class=\"form-control mt-2\" id=\"input-1\"></div><button class=\"form-control mt-2\" id=\"form-save\" type=\"submit\">submit</button></form>\n	', 'Inactive', 1234, '2023-05-08 11:08:56', '2023-05-08 11:08:56'),
(5, '\n\n		<form method=\"post\" accept-charset=\"utf-8\" id=\"inside-form\" action=\"/projects/cake/click-form\"><div style=\"display:none;\"><input type=\"hidden\" name=\"_method\" value=\"POST\"><input type=\"hidden\" name=\"_csrfToken\" autocomplete=\"off\" value=\"7de0cbb64a62a1d0a6d8d9bc68d0fd8bdd2d1f6ca201a5ffdab41c239d9241589cb1256401527682f8fb3eef5558dcd122f260a786b5813e57712c1f47d7534b\"></div>\n\n\n		<div class=\"input-icons\"><i class=\"fa fa-pencil-square\"></i><input type=\"text\" required=\"\" class=\"form-control mt-2\" id=\"input-1\"></div><button class=\"form-control mt-2\" id=\"form-save\" type=\"submit\"> submit</button><div class=\"input-icons\"><i class=\"fa fa-pencil-square\"></i><input type=\"text\" required=\"\" class=\"form-control mt-2\" id=\"input-1\"></div><div class=\"input-icons\"><i class=\"fa fa-pencil-square\"></i><input type=\"text\" required=\"\" class=\"form-control mt-2\" id=\"input-1\"></div><button class=\"form-control mt-2\" id=\"form-save\" type=\"submit\"> submit</button><div class=\"input-icons\"><i class=\"fa fa-pencil-square\"></i><input type=\"text\" required=\"\" class=\"form-control mt-2\" id=\"input-1\"></div></form>\n	', 'Inactive', 1234, '2023-05-09 05:06:14', '2023-05-09 05:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `access_token` text NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `status`, `created_at`) VALUES
(9, 'dmeoadmin@gmail.com', '$2y$10$9dIECe5tqa3Nmq/BHG3aB.gflGx1oMf7aZgVb7Wh6icVaobNy56wK', 'dmeoadmin@gmail.com', 1, '2023-05-03 06:44:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_dmad_social_auth_phinxlog`
--
ALTER TABLE `a_dmad_social_auth_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `custom_forms`
--
ALTER TABLE `custom_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_forms`
--
ALTER TABLE `custom_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
