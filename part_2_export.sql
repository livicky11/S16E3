set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>24746563970970817930
,p_default_application_id=>99123
,p_default_owner=>'IAB339'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 99123 - Organization.sim
--
-- Application Export:
--   Application:     99123
--   Name:            Organization.sim
--   Date and Time:   19:14 Thursday April 28, 2016
--   Exported By:     IBRUTON64@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     16
--     Items:                  265
--     Processes:               15
--     Regions:                 36
--     Buttons:                 17
--   Shared Components:
--     Logic:
--       Web Services:          11
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,99123)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CANNATA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Organization.sim')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_18843199')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BB2EC5D7ABD77122DED42FAF4271262F320C85430210FFA366F2EF22F2017933'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(89580657756612857805)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:CS 347 - Database Management (Part 2)'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185918'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(89580615173552857727)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31849039188681101853)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Login'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check'
,p_list_item_disp_cond_type=>'ITEM_IS_NULL'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31905050557196054205)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Create Person'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(60238757757456299760)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'View Users'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31864723740354772186)
,p_list_item_display_sequence=>155
,p_list_item_link_text=>'Departments'
,p_list_item_icon=>'fa-folder-open'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Project-Employee:Employee'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31839558439834381352)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'View Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864723740354772186)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31848202969268946917)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Create Department'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bolt'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President'
,p_parent_list_item_id=>wwv_flow_api.id(31864723740354772186)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Employees'
,p_list_item_icon=>'fa-group'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Project-Employee:Employee'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(60375376203642399618)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'View Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31839689086996391920)
,p_list_item_display_sequence=>39
,p_list_item_link_text=>'View Managers'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31871617491826820494)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'View Interim Managers'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31869766549450645792)
,p_list_item_display_sequence=>49
,p_list_item_link_text=>'View Project Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31869167488567192032)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'View President'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30408950353999166969)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Create Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bolt'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager'
,p_parent_list_item_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31848271162563949589)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Create Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bolt'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President'
,p_parent_list_item_id=>wwv_flow_api.id(31864359050436740138)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31864635813756759843)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Projects'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Project-Employee:Employee'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31841728507813651343)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'View All Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864635813756759843)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31868348042988106387)
,p_list_item_display_sequence=>189
,p_list_item_link_text=>'View Current Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864635813756759843)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31865836636511855177)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'View Previous Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager:Employee:Project Employee'
,p_parent_list_item_id=>wwv_flow_api.id(31864635813756759843)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31848890548975694924)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Create Project'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bolt'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'P18_PERSON_LIST'
,p_list_item_disp_condition2=>'President:Manager:Interim Manager'
,p_parent_list_item_id=>wwv_flow_api.id(31864635813756759843)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(89580657427572857800)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(89580657609619857804)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(89580614812379857727)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(89580614972837857727)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(89580615014320857727)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(89580657882351857810)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580615236926857728)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580615370616857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580615417307857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580615574346857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580615606335857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580615758847857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580615865343857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580615964902857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616038783857729)
,p_page_template_id=>wwv_flow_api.id(89580615236926857728)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580616118760857732)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616213103857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616334935857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616401734857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616518088857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616647666857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616733329857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616802765857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580616984427857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617048019857732)
,p_page_template_id=>wwv_flow_api.id(89580616118760857732)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580617091268857732)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617258721857733)
,p_page_template_id=>wwv_flow_api.id(89580617091268857732)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617305515857733)
,p_page_template_id=>wwv_flow_api.id(89580617091268857732)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580617476449857733)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617537827857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617654477857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617715363857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617810430857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580617910005857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618011832857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618142195857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618228160857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618380671857733)
,p_page_template_id=>wwv_flow_api.id(89580617476449857733)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580618446143857733)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618586319857734)
,p_page_template_id=>wwv_flow_api.id(89580618446143857733)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618679196857734)
,p_page_template_id=>wwv_flow_api.id(89580618446143857733)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618723660857734)
,p_page_template_id=>wwv_flow_api.id(89580618446143857733)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618879842857734)
,p_page_template_id=>wwv_flow_api.id(89580618446143857733)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618975395857734)
,p_page_template_id=>wwv_flow_api.id(89580618446143857733)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580618994601857734)
,p_page_template_id=>wwv_flow_api.id(89580618446143857733)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580619181295857734)
,p_page_template_id=>wwv_flow_api.id(89580618446143857733)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580619267651857734)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580619293477857734)
,p_page_template_id=>wwv_flow_api.id(89580619267651857734)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580619407997857734)
,p_page_template_id=>wwv_flow_api.id(89580619267651857734)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580619539017857734)
,p_page_template_id=>wwv_flow_api.id(89580619267651857734)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580619635632857734)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580619781942857734)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580619855084857735)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580619903212857735)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620072881857735)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620099670857735)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620274191857735)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620292695857735)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620433344857735)
,p_page_template_id=>wwv_flow_api.id(89580619635632857734)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580620577359857735)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620654393857735)
,p_page_template_id=>wwv_flow_api.id(89580620577359857735)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620767464857735)
,p_page_template_id=>wwv_flow_api.id(89580620577359857735)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620867790857735)
,p_page_template_id=>wwv_flow_api.id(89580620577359857735)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580620933088857735)
,p_page_template_id=>wwv_flow_api.id(89580620577359857735)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580621045549857735)
,p_page_template_id=>wwv_flow_api.id(89580620577359857735)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580621188029857735)
,p_page_template_id=>wwv_flow_api.id(89580620577359857735)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580621226899857735)
,p_page_template_id=>wwv_flow_api.id(89580620577359857735)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(89580621386651857735)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580621424988857736)
,p_page_template_id=>wwv_flow_api.id(89580621386651857735)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580621551964857736)
,p_page_template_id=>wwv_flow_api.id(89580621386651857735)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580621608454857736)
,p_page_template_id=>wwv_flow_api.id(89580621386651857735)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(89580652225807857771)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(89580652346231857771)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(89580652434233857772)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580621786043857736)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580621802738857738)
,p_plug_template_id=>wwv_flow_api.id(89580621786043857736)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580623279468857742)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580623376930857742)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580623434479857742)
,p_plug_template_id=>wwv_flow_api.id(89580623376930857742)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580623526300857742)
,p_plug_template_id=>wwv_flow_api.id(89580623376930857742)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580624217163857742)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580624350333857743)
,p_plug_template_id=>wwv_flow_api.id(89580624217163857742)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580624440271857743)
,p_plug_template_id=>wwv_flow_api.id(89580624217163857742)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580627637157857745)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580627715179857746)
,p_plug_template_id=>wwv_flow_api.id(89580627637157857745)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580627859014857746)
,p_plug_template_id=>wwv_flow_api.id(89580627637157857745)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580629775311857748)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580629815678857748)
,p_plug_template_id=>wwv_flow_api.id(89580629775311857748)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580629924679857748)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580630060360857748)
,p_plug_template_id=>wwv_flow_api.id(89580629924679857748)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580630800163857748)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580631154198857749)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580631284671857749)
,p_plug_template_id=>wwv_flow_api.id(89580631154198857749)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580631336710857749)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580631442678857749)
,p_plug_template_id=>wwv_flow_api.id(89580631336710857749)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580631517034857749)
,p_plug_template_id=>wwv_flow_api.id(89580631336710857749)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580633424599857751)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580633528203857751)
,p_plug_template_id=>wwv_flow_api.id(89580633424599857751)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580633635866857751)
,p_plug_template_id=>wwv_flow_api.id(89580633424599857751)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580634635457857752)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(89580635158953857753)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(89580635203113857753)
,p_plug_template_id=>wwv_flow_api.id(89580635158953857753)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580643550352857762)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580645240597857764)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580647294983857766)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580648117028857766)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580649036610857767)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580649492921857767)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580649653257857767)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580649773142857768)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580649883426857768)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580650730902857768)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(89580651250385857769)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580635788847857753)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580635798826857755)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580637569359857756)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580639613469857759)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580640058369857759)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580640167472857760)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(89580640167472857760)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580641414584857761)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580641597352857761)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(89580642614249857762)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(89580651693938857769)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(89580651853855857770)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(89580651924967857770)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(89580652085028857770)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(89580652146265857770)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(89580652817190857772)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(89580653079524857774)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(89580652974529857773)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(89580653459071857778)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(89580620577359857735)
,p_default_dialog_template=>wwv_flow_api.id(89580619267651857734)
,p_error_template=>wwv_flow_api.id(89580617091268857732)
,p_printer_friendly_template=>wwv_flow_api.id(89580620577359857735)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(89580617091268857732)
,p_default_button_template=>wwv_flow_api.id(89580652346231857771)
,p_default_region_template=>wwv_flow_api.id(89580631336710857749)
,p_default_chart_template=>wwv_flow_api.id(89580631336710857749)
,p_default_form_template=>wwv_flow_api.id(89580631336710857749)
,p_default_reportr_template=>wwv_flow_api.id(89580631336710857749)
,p_default_tabform_template=>wwv_flow_api.id(89580631336710857749)
,p_default_wizard_template=>wwv_flow_api.id(89580631336710857749)
,p_default_menur_template=>wwv_flow_api.id(89580634635457857752)
,p_default_listr_template=>wwv_flow_api.id(89580631336710857749)
,p_default_irr_template=>wwv_flow_api.id(89580630800163857748)
,p_default_report_template=>wwv_flow_api.id(89580640167472857760)
,p_default_label_template=>wwv_flow_api.id(89580651853855857770)
,p_default_menu_template=>wwv_flow_api.id(89580652817190857772)
,p_default_calendar_template=>wwv_flow_api.id(89580652974529857773)
,p_default_list_template=>wwv_flow_api.id(89580647294983857766)
,p_default_nav_list_template=>wwv_flow_api.id(89580650730902857768)
,p_default_top_nav_list_temp=>wwv_flow_api.id(89580650730902857768)
,p_default_side_nav_list_temp=>wwv_flow_api.id(89580649773142857768)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(89580623376930857742)
,p_default_dialogr_template=>wwv_flow_api.id(89580623279468857742)
,p_default_option_label=>wwv_flow_api.id(89580651853855857770)
,p_default_required_label=>wwv_flow_api.id(89580652085028857770)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(89580649653257857767)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>63
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31829215604625784413)
,p_theme_id=>42
,p_name=>'Vita (Dark)'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Region-Header-FG":"#fcfcfc","@g_Region-Header-BG":"#3d3d3d","@g_Region-FG":"#ffffff","@g_Region-BG":"#707070","@g_Body-BG":"#393939","@g_Actions-Col-BG":"#2c2c2c","@g_Body-Title-BG":"#3a3a3a","@g_Header-FG":"#f9f9f9","@g_H'
||'eader-BG":"#393939","@l_Left-Col-BG":"#f8f8f8","@l_Left-Col-Text":"#ffffff","@g_Accent-BG":"#393939","@g_Container-BorderRadius":"2px"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#31829215604625784413.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(89580653167663857775)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(89580653276245857775)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(89580653363328857775)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A205669746120284461726B290A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E657261746564';
wwv_flow_api.g_varchar2_table(2) := '207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A2E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20236432643264';
wwv_flow_api.g_varchar2_table(3) := '323B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20236433643364333B0A7D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A202364396439';
wwv_flow_api.g_varchar2_table(4) := '64393B0A7D0A2E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20236562656265623B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20236563656365633B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(5) := '526567696F6E202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20236632663266323B0A7D0A0A2E742D416C6572742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(6) := '636F6C6F7242472E742D416C6572742D2D7761726E696E672C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0A20206261636B67726F756E642D636F6C6F723A20236666666165353B0A7D0A2E742D416C6572';
wwv_flow_api.g_varchar2_table(7) := '742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D776172';
wwv_flow_api.g_varchar2_table(8) := '6E696E672068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E69';
wwv_flow_api.g_varchar2_table(9) := '6E67202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D416C6572742D2D636F';
wwv_flow_api.g_varchar2_table(10) := '6C6F7242472E742D416C6572742D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F723A20236563666265653B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0A2E742D416C';
wwv_flow_api.g_varchar2_table(11) := '6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373206833207B0A2020636F6C6F723A20233334333433343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572742D62';
wwv_flow_api.g_varchar2_table(12) := '6F6479207B0A2020636F6C6F723A20233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0A20206261636B';
wwv_flow_api.g_varchar2_table(13) := '67726F756E642D636F6C6F723A20236666656165393B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C0A2E74';
wwv_flow_api.g_varchar2_table(14) := '2D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0A2020636F6C6F723A20233335333533353B0A7D0A2E742D416C657274';
wwv_flow_api.g_varchar2_table(15) := '2D2D636F6C6F7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233734';
wwv_flow_api.g_varchar2_table(16) := '373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236433653566373B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(17) := '696E666F2068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0A2020636F6C6F723A20233236323632363B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F202E74';
wwv_flow_api.g_varchar2_table(18) := '2D416C6572742D626F6479207B0A2020636F6C6F723A20233636363636363B0A7D0A0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E207B';
wwv_flow_api.g_varchar2_table(19) := '0A2020636F6C6F723A20236666636330303B0A7D0A0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20233463643936343B0A7D0A0A2E742D416C6572742D2D696E666F202E742D416C657274';
wwv_flow_api.g_varchar2_table(20) := '2D69636F6E207B0A2020636F6C6F723A20233235373863663B0A7D0A0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(21) := '236539306330303B0A7D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0A2E742D416C6572742D';
wwv_flow_api.g_varchar2_table(22) := '2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616C657274202E742D416C';
wwv_flow_api.g_varchar2_table(23) := '6572742D2D70616765207B0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0A202062';
wwv_flow_api.g_varchar2_table(24) := '61636B67726F756E642D636F6C6F723A20726762612837342C203137302C2034342C20302E39293B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E2C0A2E742D416C6572742D2D706167652E74';
wwv_flow_api.g_varchar2_table(25) := '2D416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0A2020636F6C6F723A20234646463B0A7D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D2D636C6F7365416C657274207B0A2020636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(26) := '626128302C20302C20302C20302E35293B0A7D0A0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338613861386120';
wwv_flow_api.g_varchar2_table(27) := '696E7365743B0A7D0A2E742D42616467654C6973742061207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42616467';
wwv_flow_api.g_varchar2_table(28) := '654C6973742D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20233761376137613B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(29) := '63666366633B0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E312920696E7365743B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D426164';
wwv_flow_api.g_varchar2_table(30) := '67654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0A2020626F782D736861646F773A20302030203020317078202333393339333920696E7365743B0A2020636F6C6F723A20233331333133313B0A7D0A2E';
wwv_flow_api.g_varchar2_table(31) := '742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0A2020626F782D736861646F773A20302030203020347078202333393339333920696E7365743B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(32) := '6E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(33) := '646F773A2030203020302032707820726762612835372C2035372C2035372C20302E3235292C20302030203020317078202333393339333920696E7365743B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(34) := '742D6C6162656C207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0A2020626F726465';
wwv_flow_api.g_varchar2_table(35) := '722D636F6C6F723A20233339333933393B0A20207472616E736974696F6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0A7D0A2E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(36) := '63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020347078202333393339333920696E7365743B0A20206261636B';
wwv_flow_api.g_varchar2_table(37) := '67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20234646463B0A7D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(38) := '777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0A7D0A0A2E742D42616467654C6973742D2D66';
wwv_flow_api.g_varchar2_table(39) := '6C6F6174202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D666C6578202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467';
wwv_flow_api.g_varchar2_table(40) := '654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(41) := '656D3A6166746572207B0A20206261636B67726F756E643A20233861386138613B0A7D0A2E742D42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D666C6578';
wwv_flow_api.g_varchar2_table(42) := '202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D6669786564202E742D4261646765';
wwv_flow_api.g_varchar2_table(43) := '4C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6265666F7265207B0A20206261636B67726F756E643A20233861386138613B0A7D0A2E742D4261646765';
wwv_flow_api.g_varchar2_table(44) := '4C6973742D2D626F74746F6D426F72646572207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236638663866383B0A7D0A0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(45) := '726F756E642D636F6C6F723A20233764376437643B0A7D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20236239623962393B0A7D';
wwv_flow_api.g_varchar2_table(46) := '0A2E742D426F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20236261626162613B0A7D0A2E742D426F64792D696E666F202E612D';
wwv_flow_api.g_varchar2_table(47) := '4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20236261626162613B0A7D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D';
wwv_flow_api.g_varchar2_table(48) := '6974656D202E612D42617243686172742D76616C75652C0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(49) := '30663066303B0A7D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E612D4261724368617274202E612D42617243686172742D626172207B0A2020';
wwv_flow_api.g_varchar2_table(50) := '6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D636C6173736963';
wwv_flow_api.g_varchar2_table(51) := '202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172';
wwv_flow_api.g_varchar2_table(52) := '742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0A2E612D42617243686172742D';
wwv_flow_api.g_varchar2_table(53) := '2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D42';
wwv_flow_api.g_varchar2_table(54) := '617243686172742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D66696C6C6564207B0A20206261636B67726F756E642D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(55) := '39333933393B0A7D0A0A626F64792C0A2E742D426F6479207B0A20206261636B67726F756E643A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A61207B0A2020636F6C6F723A20233331333133313B0A7D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(56) := '2D7469746C6520612C0A2E742D426F64792D696E666F2061207B0A2020636F6C6F723A20233365336533653B0A7D0A2E742D426F64792D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20233263326332633B0A7D0A2E742D42';
wwv_flow_api.g_varchar2_table(57) := '6F64792D7469746C65207B0A20206261636B67726F756E642D636F6C6F723A20233361336133613B0A2020636F6C6F723A20236639663966393B0A7D0A2E75692D7769646765742D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(58) := '3A20233730373037303B0A7D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0A202063';
wwv_flow_api.g_varchar2_table(59) := '6F6C6F723A20236639663966393B0A7D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C';
wwv_flow_api.g_varchar2_table(60) := '0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D73696465207B0A20206261636B67726F756E642D636F6C6F723A2023663866386638';
wwv_flow_api.g_varchar2_table(61) := '3B0A2020636F6C6F723A20236666666666663B0A7D0A2E617065782D7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D696E666F202E617065782D7264';
wwv_flow_api.g_varchar2_table(62) := '732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D74';
wwv_flow_api.g_varchar2_table(63) := '69746C652E6A732D6869646542726561646372756D6273207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0A7D0A2E742D426F64792D746F70427574746F6E207B0A2020626F726465722D7261';
wwv_flow_api.g_varchar2_table(64) := '646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20233533353335333B0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233566356635663B0A7D';
wwv_flow_api.g_varchar2_table(65) := '0A2E742D426F64792D746F70427574746F6E3A616374697665202E612D49636F6E207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F64792D746F70427574746F6E202E612D49636F6E207B0A2020636F6C6F723A2023366336633663';
wwv_flow_api.g_varchar2_table(66) := '3B0A7D0A0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A2020746F';
wwv_flow_api.g_varchar2_table(67) := '703A20343070783B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A202020206C6566743A203230';
wwv_flow_api.g_varchar2_table(68) := '3070783B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0A202020206D617267696E';
wwv_flow_api.g_varchar2_table(69) := '2D6C6566743A2032303070783B0A20207D0A7D0A2E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20303B0A7D0A0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73';
wwv_flow_api.g_varchar2_table(70) := '207B0A2020746F703A20383070783B0A7D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20383070783B0A7D0A0A2E742D426F64792D6E6176207B0A202077696474683A2032303070783B0A7D0A0A2E742D';
wwv_flow_api.g_varchar2_table(71) := '426F64792D616374696F6E73207B0A202077696474683A2032303070783B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533';
wwv_flow_api.g_varchar2_table(72) := '64282D343070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0A7D0A0A406D6564696120';
wwv_flow_api.g_varchar2_table(73) := '6F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D426F64792D73696465207B0A2020202077696474683A2032343070783B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E61706578';
wwv_flow_api.g_varchar2_table(74) := '2D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20343070783B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C';
wwv_flow_api.g_varchar2_table(75) := '20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0A20207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A7D0A406D65646961206F6E6C792073637265';
wwv_flow_api.g_varchar2_table(76) := '656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E61764578';
wwv_flow_api.g_varchar2_table(77) := '70616E646564202E742D426F64792D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A20202E6170';
wwv_flow_api.g_varchar2_table(78) := '65782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428323030';
wwv_flow_api.g_varchar2_table(79) := '70782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A7D0A406D656469';
wwv_flow_api.g_varchar2_table(80) := '61206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D';
wwv_flow_api.g_varchar2_table(81) := '7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0A20202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(82) := '457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A20';
wwv_flow_api.g_varchar2_table(83) := '2020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0A202020206C6566';
wwv_flow_api.g_varchar2_table(84) := '743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C656674';
wwv_flow_api.g_varchar2_table(85) := '3A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A203070';
wwv_flow_api.g_varchar2_table(86) := '783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0A';
wwv_flow_api.g_varchar2_table(87) := '20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20';
wwv_flow_api.g_varchar2_table(88) := '2020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A20202E617065782D736964652D6E61762E6A73';
wwv_flow_api.g_varchar2_table(89) := '2D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A2020';
wwv_flow_api.g_varchar2_table(90) := '20202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674';
wwv_flow_api.g_varchar2_table(91) := '202E742D426F64792D73696465207B0A202020206C6566743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E';
wwv_flow_api.g_varchar2_table(92) := '74207B0A202020206D617267696E2D6C6566743A2032383070783B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E';
wwv_flow_api.g_varchar2_table(93) := '736C617465283136307078293B0A202020207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A2039393370';
wwv_flow_api.g_varchar2_table(94) := '7829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765';
wwv_flow_api.g_varchar2_table(95) := '626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E';
wwv_flow_api.g_varchar2_table(96) := '6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A2020202074';
wwv_flow_api.g_varchar2_table(97) := '72616E73666F726D3A206E6F6E653B0A202020206D617267696E2D6C6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(98) := '426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2034343070783B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A20202020747261';
wwv_flow_api.g_varchar2_table(99) := '6E73666F726D3A206E6F6E653B0A20207D0A7D0A0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D42';
wwv_flow_api.g_varchar2_table(100) := '6F64792D6E6176202E742D547265654E6176207B0A202077696474683A20343070783B0A7D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0A2E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(101) := '2E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A20206D617267696E2D6C6566743A20343070783B0A7D';
wwv_flow_api.g_varchar2_table(102) := '0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0A202020202D776562';
wwv_flow_api.g_varchar2_table(103) := '6B69742D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020207472616E73666F726D3A207472616E736C61746558282D34';
wwv_flow_api.g_varchar2_table(104) := '307078293B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73';
wwv_flow_api.g_varchar2_table(105) := '6964652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E';
wwv_flow_api.g_varchar2_table(106) := '20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0A202020206D617267696E2D6C6566743A20303B0A202020206C';
wwv_flow_api.g_varchar2_table(107) := '6566743A20343070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566743A';
wwv_flow_api.g_varchar2_table(108) := '20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20323830';
wwv_flow_api.g_varchar2_table(109) := '70783B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7369646520';
wwv_flow_api.g_varchar2_table(110) := '7B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A20303B0A7D0A2E742D50616765426F64';
wwv_flow_api.g_varchar2_table(111) := '792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0A20202D7765626B69742D7472616E73666F726D3A20747261';
wwv_flow_api.g_varchar2_table(112) := '6E736C6174653364282D32303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A';
wwv_flow_api.g_varchar2_table(113) := '7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E74';
wwv_flow_api.g_varchar2_table(114) := '2D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(115) := '206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D';
wwv_flow_api.g_varchar2_table(116) := '686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D68696465';
wwv_flow_api.g_varchar2_table(117) := '4C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F';
wwv_flow_api.g_varchar2_table(118) := '64792D7469746C65207B0A2020202072696768743A20303B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(119) := '426F64792D73696465207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E742D';
wwv_flow_api.g_varchar2_table(120) := '50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765';
wwv_flow_api.g_varchar2_table(121) := '426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D';
wwv_flow_api.g_varchar2_table(122) := '73686F774C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A2020';
wwv_flow_api.g_varchar2_table(123) := '7D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D506167';
wwv_flow_api.g_varchar2_table(124) := '65426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206C6566743A20343070783B0A20207D0A7D0A406D65';
wwv_flow_api.g_varchar2_table(125) := '646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20393932707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(126) := '2D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(127) := '2E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F';
wwv_flow_api.g_varchar2_table(128) := '774C656674202E742D426F64792D736964652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69';
wwv_flow_api.g_varchar2_table(129) := '742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A202020207472616E73666F726D3A207472616E736C61';
wwv_flow_api.g_varchar2_table(130) := '74653364282D32303070782C20302C2030293B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D61726769';
wwv_flow_api.g_varchar2_table(131) := '6E2D6C6566743A20343070782021696D706F7274616E743B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A203070783B0A7D0A';
wwv_flow_api.g_varchar2_table(132) := '2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0A202072696768743A203070783B0A7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D';
wwv_flow_api.g_varchar2_table(133) := '616374696F6E73207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A20207472616E7366';
wwv_flow_api.g_varchar2_table(134) := '6F726D3A207472616E736C61746533642832303070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(135) := '74202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032343070783B0A20207D0A7D0A0A2E742D426F64792D636F6E74656E74496E6E6572207B0A20206D617267696E3A206175746F3B0A20206D61782D77696474';
wwv_flow_api.g_varchar2_table(136) := '683A206175746F3B0A7D0A0A2E742D42726561646372756D622D6974656D3A6166746572207B0A2020636F6C6F723A2072676261283234392C203234392C203234392C20302E39393335293B0A7D0A2E742D42726561646372756D622D6974656D202E74';
wwv_flow_api.g_varchar2_table(137) := '2D49636F6E3A686F766572207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D3A6C6173742D6368';
wwv_flow_api.g_varchar2_table(138) := '696C64202E742D42726561646372756D622D6C6162656C207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0A2020636F6C6F723A20236639663966393B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(139) := '742D427574746F6E2C0A2E612D427574746F6E207B0A2020626F726465723A206E6F6E653B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(140) := '2D636F6C6F723A20236230623062303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020626F726465722D7261646975733A203270783B0A2020746578742D7368';
wwv_flow_api.g_varchar2_table(141) := '61646F773A206E6F6E653B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020';
wwv_flow_api.g_varchar2_table(142) := '317078207267626128302C20302C20302C20302E3132352920696E7365743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C65207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(143) := '756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020746578742D736861';
wwv_flow_api.g_varchar2_table(144) := '646F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(145) := '2D73696D706C653A666F6375732C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A6163746976652C0A2E612D427574746F6E2E742D42757474';
wwv_flow_api.g_varchar2_table(146) := '6F6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A2020626F782D736861646F773A20302030203020317078202365366536653620696E7365743B0A7D0A406D6564696120736372';
wwv_flow_api.g_varchar2_table(147) := '65656E20616E6420282D6D732D686967682D636F6E74726173743A2061637469766529207B0A20202E742D427574746F6E2C0A20202E612D427574746F6E207B0A20202020626F726465723A2031707820736F6C69643B0A20207D0A7D0A0A2E742D4275';
wwv_flow_api.g_varchar2_table(148) := '74746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D686F742C0A2E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D7761726E696E672C0A2E742D427574746F6E2D2D73756363657373207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(149) := '646F773A2030203020327078207267626128302C20302C20302C20302E30352920696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D686F742E742D42757474';
wwv_flow_api.g_varchar2_table(150) := '6F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D73756363';
wwv_flow_api.g_varchar2_table(151) := '6573732E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031707820696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F7665722C0A2E742D427574746F6E2D2D7761726E696E67';
wwv_flow_api.g_varchar2_table(152) := '3A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574';
wwv_flow_api.g_varchar2_table(153) := '746F6E2D2D686F743A686F7665722C0A2E742D427574746F6E2D2D64616E6765723A686F7665722C0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20';
wwv_flow_api.g_varchar2_table(154) := '302C20302C20302E31292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(155) := '636F6C6F723A20236361636163613B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A20207A2D696E6465783A20313130';
wwv_flow_api.g_varchar2_table(156) := '3B0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F6375732C0A2E742D427574746F6E3A6163746976653A666F6375732C0A2E612D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(157) := '20302030203020317078202333393339333920696E7365742C20302030203170782032707820726762612835372C2035372C2035372C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E3A616374697665207B0A20206261636B';
wwv_flow_api.g_varchar2_table(158) := '67726F756E642D636F6C6F723A20233937393739373B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32';
wwv_flow_api.g_varchar2_table(159) := '352920696E7365743B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365';
wwv_flow_api.g_varchar2_table(160) := '742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E69732D6163746976652C0A2E742D427574746F6E2E69732D6163746976653A616374697665';
wwv_flow_api.g_varchar2_table(161) := '2C0A2E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233937393739373B0A2020636F6C6F723A20233030303030303B0A2020666F6E742D7765696768743A206E6F726D616C3B0A2020';
wwv_flow_api.g_varchar2_table(162) := '746578742D736861646F773A206E6F6E653B0A20207A2D696E6465783A203130303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128';
wwv_flow_api.g_varchar2_table(163) := '302C20302C20302C20302E32352920696E7365743B0A7D0A2E742D427574746F6E2E69732D64697361626C65642C0A2E742D427574746F6E2E69732D64697361626C65643A6163746976652C0A2E742D427574746F6E3A64697361626C6564207B0A2020';
wwv_flow_api.g_varchar2_table(164) := '6F7061636974793A202E353B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E742D427574746F6E2D2D686F742C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D';
wwv_flow_api.g_varchar2_table(165) := '686F742C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(166) := '663B0A2020746578742D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2D2D686F743A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574';
wwv_flow_api.g_varchar2_table(167) := '746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(168) := '723A20233533353335333B0A7D0A2E742D427574746F6E2D2D686F743A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0A626F6479206275';
wwv_flow_api.g_varchar2_table(169) := '74746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D686F742E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(170) := '692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D6163746976652C0A2E742D4275';
wwv_flow_api.g_varchar2_table(171) := '74746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163';
wwv_flow_api.g_varchar2_table(172) := '746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(173) := '233230323032303B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E';
wwv_flow_api.g_varchar2_table(174) := '2D2D73696D706C652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A203020302030203170';
wwv_flow_api.g_varchar2_table(175) := '78202333393339333920696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233363336333633B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E74';
wwv_flow_api.g_varchar2_table(176) := '2D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174';
wwv_flow_api.g_varchar2_table(177) := '652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233363336333633B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E';
wwv_flow_api.g_varchar2_table(178) := '2D2D73696D706C653A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0A626F647920627574746F6E2E';
wwv_flow_api.g_varchar2_table(179) := '75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A';
wwv_flow_api.g_varchar2_table(180) := '626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F647920627574746F6E2E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(181) := '2E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F6479202E75692D73746174652D';
wwv_flow_api.g_varchar2_table(182) := '64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D70';
wwv_flow_api.g_varchar2_table(183) := '72696D6172792E742D427574746F6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020';
wwv_flow_api.g_varchar2_table(184) := '317078202333393339333920696E7365743B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E';
wwv_flow_api.g_varchar2_table(185) := '2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D42';
wwv_flow_api.g_varchar2_table(186) := '7574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(187) := '692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D707269';
wwv_flow_api.g_varchar2_table(188) := '6D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F6479202E75692D73746174652D';
wwv_flow_api.g_varchar2_table(189) := '64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072';
wwv_flow_api.g_varchar2_table(190) := '696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D427574746F6E2D2D7072696D617279207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(191) := '756E642D636F6C6F723A20233932393239323B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236163616361633B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(192) := '2D427574746F6E2D2D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D7072696D6172792E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233739373937393B0A7D0A2E742D427574746F6E2D2D7072';
wwv_flow_api.g_varchar2_table(193) := '696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202339323932393220696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(194) := '3A20233536353635363B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233536353635363B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D';
wwv_flow_api.g_varchar2_table(195) := '427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65';
wwv_flow_api.g_varchar2_table(196) := '3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233932393239323B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202339323932393220696E7365743B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(197) := '2D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A';
wwv_flow_api.g_varchar2_table(198) := '2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D427574746F6E2D2D64616E676572207B0A20206261636B';
wwv_flow_api.g_varchar2_table(199) := '67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A2E742D427574746F6E2D2D64616E6765723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666323931643B0A7D0A';
wwv_flow_api.g_varchar2_table(200) := '2E742D427574746F6E2D2D64616E6765723A6163746976652C0A2E742D427574746F6E2D2D64616E6765722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236236303930303B0A7D0A2E742D427574746F6E2D2D6461';
wwv_flow_api.g_varchar2_table(201) := '6E6765722E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(202) := '20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574';
wwv_flow_api.g_varchar2_table(203) := '746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A61637469';
wwv_flow_api.g_varchar2_table(204) := '7665207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A7D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(205) := '6F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D42757474';
wwv_flow_api.g_varchar2_table(206) := '6F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666656165393B0A7D0A0A2E742D427574746F6E2D2D7761726E696E67207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(207) := '636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D427574';
wwv_flow_api.g_varchar2_table(208) := '746F6E2D2D7761726E696E673A6163746976652C0A2E742D427574746F6E2D2D7761726E696E672E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E742D427574746F6E2D2D7761726E696E';
wwv_flow_api.g_varchar2_table(209) := '672E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(210) := '63373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D42757474';
wwv_flow_api.g_varchar2_table(211) := '6F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374';
wwv_flow_api.g_varchar2_table(212) := '697665207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A7D0A2E742D427574';
wwv_flow_api.g_varchar2_table(213) := '746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D42';
wwv_flow_api.g_varchar2_table(214) := '7574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233030303030303B0A7D0A0A2E742D427574746F6E2D2D73756363657373207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(215) := '756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233736653238383B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(216) := '2D427574746F6E2D2D737563636573733A6163746976652C0A2E742D427574746F6E2D2D737563636573732E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E742D427574746F6E2D2D7375';
wwv_flow_api.g_varchar2_table(217) := '63636573732E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(218) := '3A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E742D';
wwv_flow_api.g_varchar2_table(219) := '427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65';
wwv_flow_api.g_varchar2_table(220) := '3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(221) := '2D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A';
wwv_flow_api.g_varchar2_table(222) := '2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D70696C6C5374617274207B0A2020626F';
wwv_flow_api.g_varchar2_table(223) := '726465722D746F702D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C456E';
wwv_flow_api.g_varchar2_table(224) := '64207B0A2020626F726465722D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(225) := '70696C6C207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6869646553686F772E742D427574746F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D48';
wwv_flow_api.g_varchar2_table(226) := '65616465722D6272616E64696E67202E742D427574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0A20207472616E736974';
wwv_flow_api.g_varchar2_table(227) := '696F6E3A206E6F6E653B0A2020626F726465722D7261646975733A20303B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665';
wwv_flow_api.g_varchar2_table(228) := '3A666F637573207B0A2020626F782D736861646F773A20302030203020317078202335663566356620696E7365742C20302030203170782032707820726762612839352C2039352C2039352C20302E3235292021696D706F7274616E743B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(229) := '427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B';
wwv_flow_api.g_varchar2_table(230) := '0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C2030';
wwv_flow_api.g_varchar2_table(231) := '2C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(232) := '6E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C2030';
wwv_flow_api.g_varchar2_table(233) := '2C20302C20302E3235293B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A6265666F7265207B0A2020636F6E74656E74';
wwv_flow_api.g_varchar2_table(234) := '3A2027273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A2020626F74746F6D3A20303B0A202072696768743A20303B0A202077696474683A203170783B0A20206261636B67726F756E642D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(235) := '6128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265652E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A2074';
wwv_flow_api.g_varchar2_table(236) := '72616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D4275';
wwv_flow_api.g_varchar2_table(237) := '74746F6E2D2D686561646572547265653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E';
wwv_flow_api.g_varchar2_table(238) := '742D427574746F6E2D2D6865616465725269676874207B0A20206261636B67726F756E642D636F6C6F723A20233263326332633B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465725269';
wwv_flow_api.g_varchar2_table(239) := '6768743A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233436343634363B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A6163746976652C0A';
wwv_flow_api.g_varchar2_table(240) := '2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0A2020636F6C6F723A20236562656265623B0A7D0A2E742D427574746F6E2D2D6E6176426172202E';
wwv_flow_api.g_varchar2_table(241) := '742D427574746F6E2D6261646765207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0A7D0A2E742D427574746F6E2D2D68656C70427574';
wwv_flow_api.g_varchar2_table(242) := '746F6E202E612D49636F6E207B0A20206F7061636974793A202E353B0A7D0A2E612D43616C656E6461722D627574746F6E207B0A2020626F726465722D7261646975733A203270783B0A2020636F6C6F723A20233730373037303B0A7D0A0A2E742D4275';
wwv_flow_api.g_varchar2_table(243) := '74746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279207B0A2020636F6C6F723A20233536353635362021696D706F7274616E743B0A7D0A';
wwv_flow_api.g_varchar2_table(244) := '2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0A2020636F6C6F723A20233932393239322021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(245) := '2D7761726E696E67207B0A2020636F6C6F723A20233863373330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0A2020636F6C6F723A202366666363';
wwv_flow_api.g_varchar2_table(246) := '30302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572207B0A2020636F6C6F723A20233831313330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E74';
wwv_flow_api.g_varchar2_table(247) := '2D427574746F6E2D2D64616E676572202E742D49636F6E207B0A2020636F6C6F723A20236539306330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(248) := '3A20233333373933662021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0A2020636F6C6F723A20233463643936342021696D706F7274616E743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(249) := '742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A2020636F6C6F723A20233239323932392021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E20';
wwv_flow_api.g_varchar2_table(250) := '7B0A2020636F6C6F723A20233339333933392021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E';
wwv_flow_api.g_varchar2_table(251) := '672C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F';
wwv_flow_api.g_varchar2_table(252) := '74207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A0A2E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020636F6C6F723A20236666666666663B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(253) := '2D7261646975733A203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0A';
wwv_flow_api.g_varchar2_table(254) := '2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A20206261';
wwv_flow_api.g_varchar2_table(255) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(256) := '6638663866383B0A7D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D426F';
wwv_flow_api.g_varchar2_table(257) := '64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D526567696F6E202E742D427574746F6E5265';
wwv_flow_api.g_varchar2_table(258) := '67696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469';
wwv_flow_api.g_varchar2_table(259) := '746C65207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465';
wwv_flow_api.g_varchar2_table(260) := '722D7261646975733A20303B0A7D0A0A2E66632D746F6F6C626172207B0A2020626F726465722D636F6C6F723A20233834383438343B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(261) := '2032707820327078203020303B0A7D0A2E66632D746F6F6C6261722068322C0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0A2E6663202E66632D6461792D6E756D626572207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(262) := '6666666666663B0A7D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0A2E66632D76696577202E75692D7769646765742D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233461346134613B';
wwv_flow_api.g_varchar2_table(263) := '0A2020636F6C6F723A20236663666366633B0A2020626F726465722D636F6C6F723A20233537353735373B0A7D0A6469762E66632D6167656E64614C697374207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020626F72';
wwv_flow_api.g_varchar2_table(264) := '6465722D636F6C6F723A20233834383438343B0A2020636F6C6F723A20236666666666663B0A7D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0A20206261636B67726F756E642D636F6C6F723A20233633363336333B0A';
wwv_flow_api.g_varchar2_table(265) := '2020636F6C6F723A20236663666366633B0A2020626F726465722D636F6C6F723A20233735373537353B0A7D0A2E6663202E66632D6167656E64614C6973742D646179207B0A2020636F6C6F723A20236663666366633B0A7D0A2E6663202E66632D6167';
wwv_flow_api.g_varchar2_table(266) := '656E64614C6973742D64617465207B0A2020636F6C6F723A20236436643664363B0A7D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0A2E6663202E66632D6167656E64614C697374202E66632D';
wwv_flow_api.g_varchar2_table(267) := '6576656E742D616C6C2D646179207B0A2020636F6C6F723A20236439643964393B0A7D0A626F6479202E66632074642E66632D746F6461792C0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(268) := '6F723A20233861386138613B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(269) := '636F6C6F723A20233764376437643B0A7D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20233735373537353B0A7D0A0A2E742D436172642D77726170207B0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(270) := '75733A203270783B0A7D0A2E742D436172642D777261703A666F637573207B0A2020626F726465722D636F6C6F723A20233339333933393B0A7D0A2E742D436172642D69636F6E202E742D49636F6E207B0A2020636F6C6F723A20234646463B0A7D0A2E';
wwv_flow_api.g_varchar2_table(271) := '742D436172642D64657363207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20233733373337333B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(272) := '2D43617264732D2D636F6D70616374202E742D436172642D64657363207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436172642D696E666F207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436172642D7469746C6520';
wwv_flow_api.g_varchar2_table(273) := '7B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D777261702C0A2E742D436172642D2D6261736963202E742D436172642D77726170207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(274) := '6E642D636F6C6F723A20233733373337333B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6261736963202E742D436172642D69636F6E202E742D4963';
wwv_flow_api.g_varchar2_table(275) := '6F6E207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C65577261702C';
wwv_flow_api.g_varchar2_table(276) := '0A2E742D436172642D2D6261736963202E742D436172642D7469746C6557726170207B0A20206261636B67726F756E642D636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172';
wwv_flow_api.g_varchar2_table(277) := '642D777261702C0A2E742D436172642D2D6665617475726564202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20233733373337333B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E';
wwv_flow_api.g_varchar2_table(278) := '742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6665617475726564202E742D436172642D69636F6E202E742D49636F6E207B0A2020626F726465722D7261646975733A2031303070783B0A2020636F6C6F723A20234646463B';
wwv_flow_api.g_varchar2_table(279) := '0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0A2E742D436172642D2D6665617475726564202E742D436172642D62';
wwv_flow_api.g_varchar2_table(280) := '6F6479207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C61';
wwv_flow_api.g_varchar2_table(281) := '7373696343616C656E6461722D646179436F6C756D6E207B0A20206261636B67726F756E642D636F6C6F723A20233735373537353B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465722D636F6C6F723A2023376437643764';
wwv_flow_api.g_varchar2_table(282) := '3B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D436C617373696343616C656E6461722D646179207B0A2020626F726465722D636F6C6F723A20233764376437643B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D';
wwv_flow_api.g_varchar2_table(283) := '696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0A20206F7061636974793A202E353B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0A2E742D436C617373696343616C';
wwv_flow_api.g_varchar2_table(284) := '656E6461722D6461792E69732D696E616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233733373337333B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C';
wwv_flow_api.g_varchar2_table(285) := '656E6461722D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D436C617373696343616C656E6461722D64617465207B0A2020636F6C6F723A20236266';
wwv_flow_api.g_varchar2_table(286) := '626662663B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(287) := '3A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D436C61737369';
wwv_flow_api.g_varchar2_table(288) := '6343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B';
wwv_flow_api.g_varchar2_table(289) := '0A20206261636B67726F756E642D636F6C6F723A20233735373537353B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0A2E742D436C617373696343';
wwv_flow_api.g_varchar2_table(290) := '616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C6173';
wwv_flow_api.g_varchar2_table(291) := '73696343616C656E6461722D6461794576656E747320612C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(292) := '6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0A2E742D436C6173';
wwv_flow_api.g_varchar2_table(293) := '73696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0A20206261636B67726F756E642D636F6C6F723A20236239623962393B0A7D0A2E742D436C617373696343616C656E64';
wwv_flow_api.g_varchar2_table(294) := '61722D6C697374207B0A2020626F726465722D636F6C6F723A20233764376437643B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020';
wwv_flow_api.g_varchar2_table(295) := '626F726465722D636F6C6F723A20233764376437643B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0A20206261636B67726F756E642D636F6C6F723A20233735373537353B0A2020636F6C6F723A20236439643964';
wwv_flow_api.g_varchar2_table(296) := '393B0A7D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E2C0A2E742D436F6D6D656E74732D75736572496D67207B0A';
wwv_flow_api.g_varchar2_table(297) := '2020626F726465722D7261646975733A20313030253B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233736373637363B0A7D0A2E742D436F6D6D656E74732D696E666F207B0A2020';
wwv_flow_api.g_varchar2_table(298) := '636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F207B0A202062';
wwv_flow_api.g_varchar2_table(299) := '61636B67726F756E642D636F6C6F723A20233736373637363B0A2020626F726465722D7261646975733A2032707820327078203020303B0A2020626F726465722D636F6C6F723A20233930393039303B0A7D0A2E742D436F6D6D656E74732D2D63686174';
wwv_flow_api.g_varchar2_table(300) := '202E742D436F6D6D656E74732D696E666F3A6166746572207B0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0A2020626F726465722D72696768742D636F6C6F723A20233736373637363B0A7D0A2E';
wwv_flow_api.g_varchar2_table(301) := '742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0A2020626F726465722D72696768742D636F';
wwv_flow_api.g_varchar2_table(302) := '6C6F723A20233930393039303B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0A20206261636B67726F756E642D636F6C6F723A20233736373637363B0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(303) := '3A2030203020327078203270783B0A2020626F726465722D636F6C6F723A20233930393039303B0A7D0A2E742D436F6E66696750616E656C2D61626F7574207B0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(304) := '723A20233536353635363B0A7D0A2E742D436F6E66696750616E656C2D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020636F6C6F723A20234646';
wwv_flow_api.g_varchar2_table(305) := '463B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564';
wwv_flow_api.g_varchar2_table(306) := '207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A7D0A2E742D436F6E66696750616E656C2D73657474696E672C0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20236663666366633B0A';
wwv_flow_api.g_varchar2_table(307) := '7D0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D436F6E6669';
wwv_flow_api.g_varchar2_table(308) := '6750616E656C2D617474724C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(309) := '723A20233331333133313B0A7D0A0A2E742D4469616C6F67526567696F6E2D626F6479207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E742823373037303730203330252C2023373037303730292C202D';
wwv_flow_api.g_varchar2_table(310) := '7765626B69742D6C696E6561722D6772616469656E7428233730373037302C20233730373037302037302529203020313030252C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267';
wwv_flow_api.g_varchar2_table(311) := '626128302C20302C20302C203029292C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261636B67726F756E643A202D6F2D6C69';
wwv_flow_api.g_varchar2_table(312) := '6E6561722D6772616469656E742823373037303730203330252C2023373037303730292C202D6F2D6C696E6561722D6772616469656E7428233730373037302C20233730373037302037302529203020313030252C202D6F2D6C696E6561722D67726164';
wwv_flow_api.g_varchar2_table(313) := '69656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3035';
wwv_flow_api.g_varchar2_table(314) := '29293B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823373037303730203330252C2023373037303730292C206C696E6561722D6772616469656E7428233730373037302C20233730373037302037302529203020313030';
wwv_flow_api.g_varchar2_table(315) := '252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C';
wwv_flow_api.g_varchar2_table(316) := '20302C20302C20302E30352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A0A2E742D466F6F7465722C0A2E742D466F6F7465722061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(317) := '742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D6669656C642C0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461';
wwv_flow_api.g_varchar2_table(318) := '696E657220696E7075745B747970653D2274657874225D2C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E796573';
wwv_flow_api.g_varchar2_table(319) := '5F6E6F2C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0A2E742D466F726D2D696E707574436F';
wwv_flow_api.g_varchar2_table(320) := '6E7461696E65722074657874617265612E74657874617265612C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E64697370';
wwv_flow_api.g_varchar2_table(321) := '6C61795F6F6E6C792C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D2C0A2E742D466F726D2D74';
wwv_flow_api.g_varchar2_table(322) := '657874617265612C0A2E752D54462D6974656D2D2D746578742C0A2E752D54462D6974656D2D2D74657874617265612C0A2E752D54462D6974656D2D2D646174657069636B65722C0A2E752D54462D6974656D2D2D73656C656374207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(323) := '65722D7261646975733A203270783B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A2020626F726465722D636F6C6F723A20233936393639363B0A7D0A2E742D466F726D2D6669';
wwv_flow_api.g_varchar2_table(324) := '656C643A666F6375732C0A2E742D466F726D2D73656C6563743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461';
wwv_flow_api.g_varchar2_table(325) := '696E65722073656C6563742E73656C6563746C6973743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E70';
wwv_flow_api.g_varchar2_table(326) := '75742E746578745F6669656C643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E7465';
wwv_flow_api.g_varchar2_table(327) := '7874617265613A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C';
wwv_flow_api.g_varchar2_table(328) := '793A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F637573';
wwv_flow_api.g_varchar2_table(329) := '2C0A2E742D466F726D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D746578743A666F6375732C0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D646174657069636B6572';
wwv_flow_api.g_varchar2_table(330) := '3A666F6375732C0A2E752D54462D6974656D2D2D73656C6563743A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233936393639362021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20233339333933392021';
wwv_flow_api.g_varchar2_table(331) := '696D706F7274616E743B0A7D0A2E742D466F726D2D6669656C643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D73656C6563743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(332) := '20696E7075745B747970653D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375733A3A2D6D732D76616C75652C0A2E742D';
wwv_flow_api.g_varchar2_table(333) := '466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F6375733A3A2D';
wwv_flow_api.g_varchar2_table(334) := '6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E7465';
wwv_flow_api.g_varchar2_table(335) := '7874617265613A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E74';
wwv_flow_api.g_varchar2_table(336) := '61696E6572207370616E2E646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D76616C75652C0A2E';
wwv_flow_api.g_varchar2_table(337) := '742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974';
wwv_flow_api.g_varchar2_table(338) := '656D2D2D746578743A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D6D732D';
wwv_flow_api.g_varchar2_table(339) := '76616C75652C0A2E752D54462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0A2020636F6C6F723A20236666666666663B0A20200A7D0A2E742D466F726D2D6669656C643A686F7665722C0A2E742D466F726D2D73656C';
wwv_flow_api.g_varchar2_table(340) := '6563743A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C697374';
wwv_flow_api.g_varchar2_table(341) := '3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F7665722C0A2E';
wwv_flow_api.g_varchar2_table(342) := '742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(343) := '696E707574436F6E7461696E657220696E7075742E646174657069636B65723A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0A2E742D466F726D2D696E707574';
wwv_flow_api.g_varchar2_table(344) := '436F6E7461696E657220696E7075742E706F7075705F6C6F763A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A686F7665722C0A2E742D466F726D2D74657874617265613A686F76';
wwv_flow_api.g_varchar2_table(345) := '65722C0A2E752D54462D6974656D2D2D746578743A686F7665722C0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0A2E752D54462D6974656D2D2D7365';
wwv_flow_api.g_varchar2_table(346) := '6C6563743A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233861386138613B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365686F6C64657220';
wwv_flow_api.g_varchar2_table(347) := '7B0A2020636F6C6F723A20236666666666663B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(348) := '6666663B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20236666666666663B0A20206F706163';
wwv_flow_api.g_varchar2_table(349) := '6974793A202E35353B0A7D0A2E742D466F726D20696E7075742E66696C65207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0A2020626F';
wwv_flow_api.g_varchar2_table(350) := '726465722D636F6C6F723A207472616E73706172656E743B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E65722073';
wwv_flow_api.g_varchar2_table(351) := '656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79';
wwv_flow_api.g_varchar2_table(352) := '207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D726164696F4C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C';
wwv_flow_api.g_varchar2_table(353) := '0A2E742D466F726D2D636865636B626F784C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0A2E742D466F726D2D6C6162656C207B0A2020636F6C6F723A202366326632';
wwv_flow_api.g_varchar2_table(354) := '66323B0A7D0A2E742D466F726D2D6572726F72207B0A2020636F6C6F723A20234539323032303B0A7D0A2E742D466F726D2D706F737454657874207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D466F726D2D2D73656172636820696E70';
wwv_flow_api.g_varchar2_table(355) := '75742E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B7479';
wwv_flow_api.g_varchar2_table(356) := '70653D746578745D2E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20233534353435343B0A2020626F726465722D636F6C6F723A20233534353435343B0A7D0A2E742D4865726F526567696F6E2D';
wwv_flow_api.g_varchar2_table(357) := '666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233936393639362021696D706F7274616E743B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(358) := '6C6F723A20233339333933392021696D706F7274616E743B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D7765626B69742D696E7075742D706C61';
wwv_flow_api.g_varchar2_table(359) := '6365686F6C646572207B0A2020636F6C6F723A20236666666666663B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C';
wwv_flow_api.g_varchar2_table(360) := '643A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A20236666666666663B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D';
wwv_flow_api.g_varchar2_table(361) := '2D7365617263684669656C643A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20236666666666663B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075';
wwv_flow_api.g_varchar2_table(362) := '742E686173446174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0A2020626F726465722D746F702D72696768742D7261646975733A20303B0A2020626F726465722D626F74';
wwv_flow_api.g_varchar2_table(363) := '746F6D2D72696768742D7261646975733A20303B0A7D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0A2020626F726465722D746F702D6C6566';
wwv_flow_api.g_varchar2_table(364) := '742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A2020626F726465722D626F74746F6D2D72696768742D72';
wwv_flow_api.g_varchar2_table(365) := '61646975733A203270783B0A7D0A0A2E742D4865616465722D6272616E64696E67207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B2C0A2E742D486561646572202E74';
wwv_flow_api.g_varchar2_table(366) := '2D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976652C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(367) := '20236639663966393B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A686F7665722C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0A2E742D48656164';
wwv_flow_api.g_varchar2_table(368) := '6572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465723A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A7D0A2E742D4865616465722D6C6F676F2D6C696E';
wwv_flow_api.g_varchar2_table(369) := '6B3A666F6375732C0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202335663566356620696E7365742C20';
wwv_flow_api.g_varchar2_table(370) := '302030203170782032707820726762612839352C2039352C2039352C20302E3235292021696D706F7274616E743B0A7D0A2E742D4865616465722D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233133313331333B0A7D0A2E742D48';
wwv_flow_api.g_varchar2_table(371) := '6561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(372) := '2D7375624D656E75436F6C202E612D49636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0A202062';
wwv_flow_api.g_varchar2_table(373) := '6F726465722D746F702D77696474683A20303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(374) := '4865616465722D6E61762D6C697374207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20233361336133613B0A2020';
wwv_flow_api.g_varchar2_table(375) := '636F6C6F723A20236639663966393B0A7D0A2E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D4865726F526567696F6E2D69636F6E207B0A2020626F726465722D7261646975733A203470';
wwv_flow_api.g_varchar2_table(376) := '783B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D4865726F526567696F6E2D2D6665617475726564207B0A20206261636B67726F756E642D636F6C6F723A207472';
wwv_flow_api.g_varchar2_table(377) := '616E73706172656E743B0A7D0A2E742D4865726F526567696F6E2D2D66656174757265642C0A2E742D4865726F526567696F6E2D2D6665617475726564202E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(378) := '3B0A7D0A0A2E612D495252207B0A2020626F726465722D7261646975733A203270783B0A2020626F726465722D636F6C6F723A20233861386138613B0A7D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0A2020636F';
wwv_flow_api.g_varchar2_table(379) := '6C6F723A20236663666366633B0A7D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(380) := '2D746F702D636F6C6F723A20233761376137613B0A20206261636B67726F756E642D636F6C6F723A20233735373537353B0A7D0A2E612D4952522D66756C6C56696577207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D';
wwv_flow_api.g_varchar2_table(381) := '0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F78';
wwv_flow_api.g_varchar2_table(382) := '2D736861646F773A20302032707820347078207267626128302C20302C20302C20302E31293B0A7D0A2E612D4952522D746F6F6C626172207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428233537353735372C20233364';
wwv_flow_api.g_varchar2_table(383) := '33643364293B0A2020626F726465722D636F6C6F723A20233537353735373B0A7D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A2E612D5265';
wwv_flow_api.g_varchar2_table(384) := '706F72742D70657263656E744368617274207B0A20206261636B67726F756E642D636F6C6F723A20236239623962393B0A7D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0A20202D7765626B69742D626F726465722D746F702D72';
wwv_flow_api.g_varchar2_table(385) := '696768742D7261646975733A203070782021696D706F7274616E743B0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D726164';
wwv_flow_api.g_varchar2_table(386) := '6975732D746F7072696768743A20307078202021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0A2020626F726465722D746F702D72696768742D';
wwv_flow_api.g_varchar2_table(387) := '7261646975733A203070782021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A7D0A2E612D4952522D69636F6E566965775461626C652C0A2E612D495252';
wwv_flow_api.g_varchar2_table(388) := '2D6368617274566965772C0A2E612D4952522D7069766F74566965772C0A2E612D4952522D67726F75704279566965772C0A2E612D4952522D64657461696C56696577207B0A2020626F726465722D746F702D636F6C6F723A20233761376137613B0A7D';
wwv_flow_api.g_varchar2_table(389) := '0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20233766376637663B0A7D0A2E612D4952522D686561646572207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(390) := '3735373537353B0A2020626F726465722D746F703A2031707820736F6C696420233861386138613B0A2020626F782D736861646F773A20696E7365742031707820302030203020233861386138613B0A7D0A2E612D4952522D6865616465723A686F7665';
wwv_flow_api.g_varchar2_table(391) := '72207B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A7D0A2E612D4952522D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233133313331333B0A2020626F726465722D62';
wwv_flow_api.g_varchar2_table(392) := '6F74746F6D3A206E6F6E653B0A7D0A2E612D4952522D6865616465722E69732D6163746976652061207B0A2020636F6C6F723A20236239623962393B0A7D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572';
wwv_flow_api.g_varchar2_table(393) := '536F7274207B0A2020636F6C6F723A20236239623962393B0A7D0A2E612D4952522D6865616465722D2D67726F7570207B0A20206261636B67726F756E642D636F6C6F723A20233761376137613B0A7D0A2E612D4952522D7461626C6520747220746420';
wwv_flow_api.g_varchar2_table(394) := '7B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D4952522D7461626C65207B0A2020626F726465722D636F6C6C617073653A2073657061726174653B0A7D0A2E612D';
wwv_flow_api.g_varchar2_table(395) := '4952522D7461626C652074723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20233736373637363B0A7D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0A2020626F726465722D7261';
wwv_flow_api.g_varchar2_table(396) := '646975733A203270783B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F7773207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D746F703A2031707820736F6C696420233133313331333B0A20206261636B';
wwv_flow_api.g_varchar2_table(397) := '67726F756E643A20233263326332633B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F77207B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A2030202D3170782030202331333133313320696E73';
wwv_flow_api.g_varchar2_table(398) := '65743B0A7D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C642C0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F';
wwv_flow_api.g_varchar2_table(399) := '72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E643A20233133313331333B0A7D0A2E612D4952522D736F72745769646765742D726F77';
wwv_flow_api.g_varchar2_table(400) := '3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233133313331333B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2C0A626F6479202E612D4952522D62757474';
wwv_flow_api.g_varchar2_table(401) := '6F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A20206261636B67726F756E642D636F6C6F723A20233133';
wwv_flow_api.g_varchar2_table(402) := '313331333B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F7665722C0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E';
wwv_flow_api.g_varchar2_table(403) := '3A6163746976653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233263326332633B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0A2020626F726465722D626F74746F6D3A203170';
wwv_flow_api.g_varchar2_table(404) := '7820736F6C696420233133313331333B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0A2020626F726465722D72696768743A206E6F6E653B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F';
wwv_flow_api.g_varchar2_table(405) := '726465723A206E6F6E653B0A7D0A2E612D4952522D7461626C65207464207B0A2020626F726465722D6C6566743A2031707820736F6C696420233633363336333B0A2020626F726465722D746F703A2031707820736F6C696420233633363336333B0A7D';
wwv_flow_api.g_varchar2_table(406) := '0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A7D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A';
wwv_flow_api.g_varchar2_table(407) := '6265666F7265207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0A2020626F782D736861646F773A203020302030203270782023333933';
wwv_flow_api.g_varchar2_table(408) := '39333920696E7365743B0A7D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0A2020626F726465722D636F6C6F723A20233339333933393B0A2020626F782D736861646F773A20302030203020317078202333393339333920696E';
wwv_flow_api.g_varchar2_table(409) := '7365742C202D32707820302030202333393339333920696E7365742C2032707820302030202333393339333920696E7365742C2030203020327078203020726762612835372C2035372C2035372C20302E35293B0A7D0A2E612D4952522D73696E676C65';
wwv_flow_api.g_varchar2_table(410) := '526F772D6E616D652C0A2E612D4952522D73696E676C65526F772D76616C7565207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20233766376637663B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D4952522D73696E676C65';
wwv_flow_api.g_varchar2_table(411) := '526F772D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0A2020626163';
wwv_flow_api.g_varchar2_table(412) := '6B67726F756E642D636F6C6F723A20233738373837383B0A7D0A2E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20233738373837383B0A7D0A2E612D4952522D73696E676C65526F772D726F';
wwv_flow_api.g_varchar2_table(413) := '773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20233766376637663B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F';
wwv_flow_api.g_varchar2_table(414) := '6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0A2E612D4952522D636F6E74726F6C734C6162656C207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(415) := '6F756E642D636F6C6F723A20233730373037303B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D66';
wwv_flow_api.g_varchar2_table(416) := '68742D7468656164202E612D4952522D686561646572207B0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420233861386138613B0A20207D0A7D0A0A2E742D4C696E6B734C6973742D6974656D2C0A2E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(417) := '742D6C696E6B207B0A2020626F726465722D636F6C6F723A20233861386138613B0A7D0A2E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20233936393639363B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A686F76657220';
wwv_flow_api.g_varchar2_table(418) := '7B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020317078202333393339333920696E7365743B0A7D0A';
wwv_flow_api.g_varchar2_table(419) := '0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A20233936393639363B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D';
wwv_flow_api.g_varchar2_table(420) := '4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20233761376137613B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(421) := '6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20233834383438343B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(422) := '6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236230623062303B0A7D0A0A2E742D4C696E';
wwv_flow_api.g_varchar2_table(423) := '6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A207267626128323535';
wwv_flow_api.g_varchar2_table(424) := '2C203235352C203235352C20302E35293B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B';
wwv_flow_api.g_varchar2_table(425) := '0A2020636F6C6F723A20236638663866383B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(426) := '72676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(427) := '6E643A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128';
wwv_flow_api.g_varchar2_table(428) := '302C20302C20302C20302E30313529293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A20233339333933393B';
wwv_flow_api.g_varchar2_table(429) := '0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0A7D0A2E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(430) := '4C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0A2020626F726465722D7261646975733A203470783B0A7D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F';
wwv_flow_api.g_varchar2_table(431) := '6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0A2020636F6C6F723A20236562656265623B0A7D0A2E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(432) := '4C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20236562656265623B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F76657220';
wwv_flow_api.g_varchar2_table(433) := '2E742D4C696E6B734C6973742D69636F6E2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0A2E742D4C696E6B734C6973742D2D61';
wwv_flow_api.g_varchar2_table(434) := '6374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A2020636F6C6F723A20233339333933393B0A7D0A0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0A20';
wwv_flow_api.g_varchar2_table(435) := '206261636B67726F756E643A20233463643936343B0A2020636F6C6F723A2077686974653B0A7D0A626F6479202E742D4C6F67696E2D7469746C65207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4C6F67696E2D726567696F6E207B0A';
wwv_flow_api.g_varchar2_table(436) := '20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D4C6F67696E2D6C6F676F2E6661207B0A2020636F6C6F723A20233339333933393B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D7769';
wwv_flow_api.g_varchar2_table(437) := '6474683A20343830707829207B0A20202E742D50616765426F64792D2D6C6F67696E2C0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0A202020206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020';
wwv_flow_api.g_varchar2_table(438) := '7D0A7D0A0A2E742D4D656469614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20233936393639363B0A7D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0A202062';
wwv_flow_api.g_varchar2_table(439) := '6F726465722D72696768743A2031707820736F6C696420233936393639363B0A7D0A0A612E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233331333133313B0A7D0A612E742D4D656469614C6973742D6974656D5772';
wwv_flow_api.g_varchar2_table(440) := '61703A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233761376137613B0A2020636F6C6F723A20233331333133313B0A7D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(441) := '646F773A20302030203020317078202333393339333920696E7365743B0A7D0A2E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4D656469614C6973742D62616467652C0A2E742D4D';
wwv_flow_api.g_varchar2_table(442) := '656469614C6973742D64657363207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D4D656469614C6973742D69636F6E207B0A2020636F6C6F723A20233936393639363B0A7D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D65';
wwv_flow_api.g_varchar2_table(443) := '6469614C6973742D6974656D3A6265666F72652C0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20233861386138613B0A7D0A2E612D';
wwv_flow_api.g_varchar2_table(444) := '4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236335633563353B0A20206C696E652D6865696768743A20323070783B0A7D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0A20206469';
wwv_flow_api.g_varchar2_table(445) := '73706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A20206D617267696E2D6C6566743A202D34';
wwv_flow_api.g_varchar2_table(446) := '70783B0A7D0A2E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20233036303630363B0A2020626F726465722D72696768743A2031707820736F6C696420233230323032303B0A2020626F726465722D6C6566743A20317078';
wwv_flow_api.g_varchar2_table(447) := '20736F6C696420233230323032303B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(448) := '6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375';
wwv_flow_api.g_varchar2_table(449) := '624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E612D4D656E754261722D6974656D2E69732D6469736162';
wwv_flow_api.g_varchar2_table(450) := '6C6564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A2072676261283139372C203139372C203139372C20302E35293B0A7D0A2E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(451) := '6F723A20233230323032303B0A7D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0A7D0A0A2E612D4D656E752D636F6E74656E74207B0A2020626F72';
wwv_flow_api.g_varchar2_table(452) := '6465722D7261646975733A203270783B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0A20';
wwv_flow_api.g_varchar2_table(453) := '20626F726465722D636F6C6F723A20236466646664663B0A7D0A2E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D';
wwv_flow_api.g_varchar2_table(454) := '64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E';
wwv_flow_api.g_varchar2_table(455) := '612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E20';
wwv_flow_api.g_varchar2_table(456) := '2E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233739373937393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E612D4D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(457) := '74656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233036303630363B0A2020636F6C6F723A20236335633563353B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E';
wwv_flow_api.g_varchar2_table(458) := '202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C';
wwv_flow_api.g_varchar2_table(459) := '2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E64';
wwv_flow_api.g_varchar2_table(460) := '6564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C';
wwv_flow_api.g_varchar2_table(461) := '2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20236335633563353B0A7D0A2E612D4D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(462) := '6E752D616363656C207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E3735293B0A7D0A2E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283234382C203234382C2032';
wwv_flow_api.g_varchar2_table(463) := '34382C20302E3935293B0A2020626F726465722D636F6C6F723A20236466646664663B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A2E612D4D656E75426172207B0A20206261';
wwv_flow_api.g_varchar2_table(464) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E75426172207B0A20206261636B67726F756E642D636F6C6F723A20233036303630363B0A7D0A2E742D526567696F6E207B0A20200A';
wwv_flow_api.g_varchar2_table(465) := '7D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A20206C696E652D6865696768743A20323070783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E20';
wwv_flow_api.g_varchar2_table(466) := '2E612D4D656E752D7375624D656E75436F6C207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768';
wwv_flow_api.g_varchar2_table(467) := '743A203870783B0A20206D617267696E2D6C6566743A202D3470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20233633363336333B0A2020626F726465722D72696768743A203170';
wwv_flow_api.g_varchar2_table(468) := '7820736F6C696420233764376437643B0A2020626F726465722D6C6566743A2031707820736F6C696420233764376437643B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A';
wwv_flow_api.g_varchar2_table(469) := '66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E742D52';
wwv_flow_api.g_varchar2_table(470) := '6567696F6E202E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E';
wwv_flow_api.g_varchar2_table(471) := '2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0A2020';
wwv_flow_api.g_varchar2_table(472) := '636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A7D0A';
wwv_flow_api.g_varchar2_table(473) := '2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A20';
wwv_flow_api.g_varchar2_table(474) := '20626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D526567696F6E202E612D4D656E752D6974656D5365';
wwv_flow_api.g_varchar2_table(475) := '70202E612D4D656E752D68536570617261746F72207B0A2020626F726465722D636F6C6F723A20233537353735373B0A7D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(476) := '3936393639363B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20233364336433643B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(477) := '526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20236663';
wwv_flow_api.g_varchar2_table(478) := '666366633B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(479) := '723A20236264626462643B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E64656420';
wwv_flow_api.g_varchar2_table(480) := '7B0A20206261636B67726F756E642D636F6C6F723A20233633363336333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D65';
wwv_flow_api.g_varchar2_table(481) := '6E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7374617475';
wwv_flow_api.g_varchar2_table(482) := '73436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E';
wwv_flow_api.g_varchar2_table(483) := '75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63';
wwv_flow_api.g_varchar2_table(484) := '75736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D65';
wwv_flow_api.g_varchar2_table(485) := '6E752D616363656C207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0A2020636F6C6F723A2072676261283235322C203235322C203235322C20302E3735293B';
wwv_flow_api.g_varchar2_table(486) := '0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A20726762612836312C2036312C2036312C20302E3935293B0A2020626F726465722D636F6C6F723A20233537353735373B0A';
wwv_flow_api.g_varchar2_table(487) := '2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A0A2E742D486561646572207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D486561646572202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(488) := '2D6C6162656C207B0A2020636F6C6F723A20236563656365633B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F';
wwv_flow_api.g_varchar2_table(489) := '703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233263';
wwv_flow_api.g_varchar2_table(490) := '326332632021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272';
wwv_flow_api.g_varchar2_table(491) := '656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20233263326332632021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74';
wwv_flow_api.g_varchar2_table(492) := '202E612D4D656E754261722D6C6162656C2C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(493) := '236563656365632021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D486561646572202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(494) := '61722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233263326332632021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(495) := '2D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A2072676261283233362C203233362C203233362C20302E38293B0A2020626F726465722D636F6C6F723A20233339333933393B0A202062';
wwv_flow_api.g_varchar2_table(496) := '6F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49';
wwv_flow_api.g_varchar2_table(497) := '636F6E2C0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233533353335333B0A202062';
wwv_flow_api.g_varchar2_table(498) := '6F726465722D636F6C6F723A20233533353335333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E';
wwv_flow_api.g_varchar2_table(499) := '75436F6C202E612D49636F6E207B0A2020636F6C6F723A20233566356635663B0A2020626F726465722D636F6C6F723A20233566356635663B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E';
wwv_flow_api.g_varchar2_table(500) := '742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236563656365633B0A2020626F726465722D636F6C6F723A20236563656365633B0A20';
wwv_flow_api.g_varchar2_table(501) := '20636F6C6F723A20233263326332633B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(502) := '2D636F6C6F723A20233862386238623B0A2020626F726465722D636F6C6F723A20233862386238623B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77';
wwv_flow_api.g_varchar2_table(503) := '696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20233263326332633B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236563656365633B0A7D0A2E742D48656164';
wwv_flow_api.g_varchar2_table(504) := '6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A2072676261283233362C203233362C203233362C20302E3735293B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A';
wwv_flow_api.g_varchar2_table(505) := '2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233230323032302021696D706F7274616E743B0A7D0A2E742D426F6479207B0A20200A';
wwv_flow_api.g_varchar2_table(506) := '20200A20200A20200A20200A20200A7D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236638663866383B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D65';
wwv_flow_api.g_varchar2_table(507) := '6E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F';
wwv_flow_api.g_varchar2_table(508) := '766572207B0A20206261636B67726F756E642D636F6C6F723A20233533353335332021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D426F6479202E612D';
wwv_flow_api.g_varchar2_table(509) := '4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20233533353335332021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(510) := '61722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E75';
wwv_flow_api.g_varchar2_table(511) := '4261722D6C6162656C207B0A2020636F6C6F723A20236638663866382021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C';
wwv_flow_api.g_varchar2_table(512) := '0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233533353335332021696D706F7274616E743B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(513) := '426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A2072676261283234382C203234382C203234382C20302E38293B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(514) := '723A20233566356635663B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375';
wwv_flow_api.g_varchar2_table(515) := '624D656E75436F6C202E612D49636F6E2C0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(516) := '3739373937393B0A2020626F726465722D636F6C6F723A20233739373937393B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D65';
wwv_flow_api.g_varchar2_table(517) := '6E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20233836383638363B0A2020626F726465722D636F6C6F723A20233836383638363B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D';
wwv_flow_api.g_varchar2_table(518) := '2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A2020626F726465722D636F6C6F723A20236638';
wwv_flow_api.g_varchar2_table(519) := '663866383B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(520) := '726F756E642D636F6C6F723A20236231623162313B0A2020626F726465722D636F6C6F723A20236231623162313B0A2020636F6C6F723A20233230323032303B0A7D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0A2020626F726465';
wwv_flow_api.g_varchar2_table(521) := '722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20233533353335333B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(522) := '79202E612D4D656E752D616363656C207B0A2020636F6C6F723A2072676261283234382C203234382C203234382C20302E3735293B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D';
wwv_flow_api.g_varchar2_table(523) := '426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233436343634362021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(524) := '203E20756C207B0A20206261636B67726F756E642D636F6C6F723A20233861386138613B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20233533353335333B0A7D0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(525) := '2E612D4D656E754261722D6974656D2E69732D666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(526) := '4261722D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A';
wwv_flow_api.g_varchar2_table(527) := '20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(528) := '233861386138612021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63';
wwv_flow_api.g_varchar2_table(529) := '757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20233861386138612021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272';
wwv_flow_api.g_varchar2_table(530) := '656E74202E612D4D656E754261722D6C6162656C2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(531) := '723A20236666666666662021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D526567696F6E202E612D4D65';
wwv_flow_api.g_varchar2_table(532) := '6E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233861386138612021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(533) := '4261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E38293B0A2020626F726465722D636F6C6F723A20233936393639363B0A';
wwv_flow_api.g_varchar2_table(534) := '2020626F726465722D7261646975733A20313030253B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E';
wwv_flow_api.g_varchar2_table(535) := '612D49636F6E2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236230623062303B0A';
wwv_flow_api.g_varchar2_table(536) := '2020626F726465722D636F6C6F723A20236230623062303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D737562';
wwv_flow_api.g_varchar2_table(537) := '4D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20236264626462643B0A2020626F726465722D636F6C6F723A20236264626462643B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D637572';
wwv_flow_api.g_varchar2_table(538) := '72656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(539) := '3B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(540) := '756E642D636F6C6F723A20236538653865383B0A2020626F726465722D636F6C6F723A20236538653865383B0A2020636F6C6F723A20233537353735373B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465';
wwv_flow_api.g_varchar2_table(541) := '722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20233861386138613B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D52';
wwv_flow_api.g_varchar2_table(542) := '6567696F6E202E612D4D656E752D616363656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365';
wwv_flow_api.g_varchar2_table(543) := '642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233764376437642021696D706F7274616E743B0A7D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(544) := '2E612D4D656E75426172203E20756C207B0A20206261636B67726F756E642D636F6C6F723A20233861386138613B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A2023386138613861';
wwv_flow_api.g_varchar2_table(545) := '3B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E7420';
wwv_flow_api.g_varchar2_table(546) := '7B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20233263326332633B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D48';
wwv_flow_api.g_varchar2_table(547) := '65616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233230323032302021696D706F7274616E743B0A7D0A2E742D4865616465722D757365724D65';
wwv_flow_api.g_varchar2_table(548) := '6E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236563656365633B0A20202D7765626B69742D666F6E742D736D6F6F7468696E673A20616E7469616C69617365643B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(549) := '742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A20206261636B67726F756E642D636F6C6F723A20233036303630363B0A2020';
wwv_flow_api.g_varchar2_table(550) := '626F726465722D77696474683A20303B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D';
wwv_flow_api.g_varchar2_table(551) := '2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233230323032302021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F637573';
wwv_flow_api.g_varchar2_table(552) := '6564203E202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236335633563';
wwv_flow_api.g_varchar2_table(553) := '352021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(554) := '6E752D6974656D20612C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0A2020636F6C6F723A20236638663866382021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(555) := '3B0A7D0A0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233331333133313B0A2020636F6C6F723A20236631663166313B0A7D0A2E742D506F7075704C4F562D726573756C74';
wwv_flow_api.g_varchar2_table(556) := '735365742074723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29';
wwv_flow_api.g_varchar2_table(557) := '207464207B0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0A7D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D7265';
wwv_flow_api.g_varchar2_table(558) := '73756C74735365742D6C696E6B207B0A2020636F6C6F723A20233331333133313B0A7D0A2E742D506167652D2D706F7075704C4F56207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D506F7075704C4F562D61637469';
wwv_flow_api.g_varchar2_table(559) := '6F6E73207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64792D7469746C65';
wwv_flow_api.g_varchar2_table(560) := '202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20236639663966393B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(561) := '2D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D506F7075704C4F562D6C';
wwv_flow_api.g_varchar2_table(562) := '696E6B7320613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233462346234623B0A2020636F6C6F723A20236631663166313B0A7D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0A202063';
wwv_flow_api.g_varchar2_table(563) := '6F6C6F723A20236239623962393B0A7D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20236261626162613B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F56';
wwv_flow_api.g_varchar2_table(564) := '2D706167696E6174696F6E207B0A2020636F6C6F723A20236261626162613B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D70616769';
wwv_flow_api.g_varchar2_table(565) := '6E6174696F6E207B0A2020636F6C6F723A20236630663066303B0A7D0A0A2E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D426F6479202E6669656C64646174612062207B0A2020636F';
wwv_flow_api.g_varchar2_table(566) := '6C6F723A20236638663866383B0A7D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(567) := '3A20236639663966393B0A7D0A2E742D526567696F6E202E6669656C646461746120622C0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D6865';
wwv_flow_api.g_varchar2_table(568) := '61646572207B0A20206261636B67726F756E642D636F6C6F723A20233364336433643B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233537353735373B0A7D0A2E742D526567696F6E2D686561646572202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(569) := '2D7469746C652C0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0A2020';
wwv_flow_api.g_varchar2_table(570) := '6261636B67726F756E643A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D737461636B6564207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D737461636B656420';
wwv_flow_api.g_varchar2_table(571) := '3E202E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A2020626163';
wwv_flow_api.g_varchar2_table(572) := '6B67726F756E642D636F6C6F723A20233730373037303B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233861386138613B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(573) := '202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(574) := '67696F6E2D2D616363656E7431203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(575) := '726F756E642D636F6C6F723A20236666326435353B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666363037653B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E74';
wwv_flow_api.g_varchar2_table(576) := '2D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(577) := '616363656E7431203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(578) := '202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74322E742D52';
wwv_flow_api.g_varchar2_table(579) := '6567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A2020626F726465722D626F74746F6D3A2031707820736F6C69642023333339356666';
wwv_flow_api.g_varchar2_table(580) := '3B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E';
wwv_flow_api.g_varchar2_table(581) := '742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D61';
wwv_flow_api.g_varchar2_table(582) := '6363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E74';
wwv_flow_api.g_varchar2_table(583) := '33203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(584) := '20236666393530303B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666616133333B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C';
wwv_flow_api.g_varchar2_table(585) := '652C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7433203E202E74';
wwv_flow_api.g_varchar2_table(586) := '2D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(587) := '6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72';
wwv_flow_api.g_varchar2_table(588) := '646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233261633834353B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(589) := '6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(590) := '646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74342E742D526567';
wwv_flow_api.g_varchar2_table(591) := '696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F';
wwv_flow_api.g_varchar2_table(592) := '6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A2020';
wwv_flow_api.g_varchar2_table(593) := '626F726465722D626F74746F6D3A2031707820736F6C696420236138613861633B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(594) := '2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(595) := '6572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(596) := '6F723A20236666666666663B0A7D0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D72';
wwv_flow_api.g_varchar2_table(597) := '61646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2068322E742D526567696F6E2D7469746C65207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D526567696F6E2D626F6479207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(598) := '6666666666663B0A7D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D7363726F6C6C';
wwv_flow_api.g_varchar2_table(599) := '426F6479203E202E742D526567696F6E2D626F647957726170203E202E742D526567696F6E2D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823373037303730203330252C2072676261283131322C203131';
wwv_flow_api.g_varchar2_table(600) := '322C203131322C203029292C206C696E6561722D6772616469656E742872676261283131322C203131322C203131322C2030292C20233730373037302037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C';
wwv_flow_api.g_varchar2_table(601) := '20302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A2020626163';
wwv_flow_api.g_varchar2_table(602) := '6B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374';
wwv_flow_api.g_varchar2_table(603) := '696F6E73202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D73696465202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(604) := '6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2C0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E2D2D6E6F4247207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(605) := '756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(606) := '6361726F7573656C202E617065782D7264732D627574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(607) := '723A207267626128302C20302C20302C20302E3235293B0A2020636F6C6F723A20234646463B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A686F766572207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(608) := '6F6C6F723A207267626128302C20302C20302C20302E35293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976652C0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D72';
wwv_flow_api.g_varchar2_table(609) := '64732D627574746F6E3A6163746976653A666F637573207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D6E65';
wwv_flow_api.g_varchar2_table(610) := '78742D726567696F6E207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D70726576696F75732D726567696F6E207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(611) := '2D7261646975733A2030203270782032707820303B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361';
wwv_flow_api.g_varchar2_table(612) := '726F7573656C4C696E6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E6176497465';
wwv_flow_api.g_varchar2_table(613) := '6D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A2E742D526567696F6E2D2D6361726F757365';
wwv_flow_api.g_varchar2_table(614) := '6C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A2020626F726465722D7261646975733A20313030253B0A7D0A0A2E742D526570';
wwv_flow_api.g_varchar2_table(615) := '6F72742D63656C6C2C0A2E742D5265706F72742D636F6C48656164207B0A2020626F726465722D6C6566743A2031707820736F6C696420233861386138613B0A2020626F726465722D746F703A2031707820736F6C696420233861386138613B0A7D0A2E';
wwv_flow_api.g_varchar2_table(616) := '742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0A202062';
wwv_flow_api.g_varchar2_table(617) := '6F726465722D72696768743A2031707820736F6C696420233861386138613B0A7D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0A2020626F726465722D626F74746F6D3A2031';
wwv_flow_api.g_varchar2_table(618) := '707820736F6C696420233861386138613B0A7D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0A20206261636B67726F756E642D636F6C6F723A20233764376437643B0A2020626F726465722D626F';
wwv_flow_api.g_varchar2_table(619) := '74746F6D3A2031707820736F6C696420233861386138613B0A7D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0A2E742D5265706F';
wwv_flow_api.g_varchar2_table(620) := '72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A202337353735';
wwv_flow_api.g_varchar2_table(621) := '37352021696D706F7274616E743B0A7D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20206261';
wwv_flow_api.g_varchar2_table(622) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F';
wwv_flow_api.g_varchar2_table(623) := '72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A20233733373337333B0A7D0A0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F76';
wwv_flow_api.g_varchar2_table(624) := '6572207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D536F6369616C466F6F746572207B0A202070616464696E672D746F703A20343870783B0A20207061646469';
wwv_flow_api.g_varchar2_table(625) := '6E672D626F74746F6D3A20323470783B0A7D0A2E742D536F6369616C466F6F746572202E726F77207B0A202070616464696E672D746F703A203870783B0A7D0A2E742D536F6369616C466F6F746572202E636F6C207B0A202070616464696E672D626F74';
wwv_flow_api.g_varchar2_table(626) := '746F6D3A203870783B0A2020746578742D616C69676E3A2063656E7465723B0A20207472616E736974696F6E3A20616C6C202E32733B0A7D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0A20202D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(627) := '73666F726D3A207472616E736C61746559282D387078293B0A20202D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6F';
wwv_flow_api.g_varchar2_table(628) := '2D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20';
wwv_flow_api.g_varchar2_table(629) := '302C20302C20302E3035293B0A7D0A2E742D536F6369616C466F6F7465722061207B0A20207472616E736974696F6E3A20616C6C202E32733B0A2020646973706C61793A20626C6F636B3B0A2020746578742D6465636F726174696F6E3A206E6F6E653B';
wwv_flow_api.g_varchar2_table(630) := '0A2020746578742D616C69676E3A2063656E7465723B0A2020636F6C6F723A2072676261283234382C203234382C203234382C20302E38293B0A7D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0A2020646973706C61793A2062';
wwv_flow_api.g_varchar2_table(631) := '6C6F636B3B0A20206D617267696E3A2030206175746F3B0A2020636F6C6F723A2072676261283234382C203234382C203234382C20302E34293B0A7D0A2E742D536F6369616C466F6F7465722061202E6661207B0A2020666F6E742D73697A653A203238';
wwv_flow_api.g_varchar2_table(632) := '70783B0A202077696474683A20333270783B0A20206865696768743A20333270783B0A20206C696E652D6865696768743A20333270783B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A2E742D536F6369616C466F6F7465722061202E61';
wwv_flow_api.g_varchar2_table(633) := '2D49636F6E207B0A202077696474683A20333270783B0A20206865696768743A20333270783B0A20206C696E652D6865696768743A20333270783B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0A202066';
wwv_flow_api.g_varchar2_table(634) := '6F6E742D73697A653A20333270783B0A7D0A2E742D536F6369616C466F6F74657220613A686F7665722C0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0A2020636F6C6F723A20233331333133313B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(635) := '536561726368526573756C74732D64657363207B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A20236335633563353B0A7D0A2E742D536561726368526573756C74';
wwv_flow_api.g_varchar2_table(636) := '732D6D697363207B0A2020636F6C6F723A20236335633563353B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E742D53656172';
wwv_flow_api.g_varchar2_table(637) := '6368526573756C74732D64617465207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D537461747573';
wwv_flow_api.g_varchar2_table(638) := '4C6973742D626C6F636B486561646572207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233364336433643B0A7D0A2E742D5374617475734C6973742D68656164657254657874416C742C0A2E742D';
wwv_flow_api.g_varchar2_table(639) := '5374617475734C6973742D617474722C0A2E742D5374617475734C6973742D7465787444657363207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D5374617475734C6973742D6974656D5469746C65207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(640) := '666666663B0A7D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A203270783B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(641) := '6F756E642D636F6C6F723A20234646463B0A7D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A20';
wwv_flow_api.g_varchar2_table(642) := '20626F726465722D7261646975733A2032707820327078203020303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0A2020626F726465722D7261646975733A20323470783B0A';
wwv_flow_api.g_varchar2_table(643) := '20206261636B67726F756E642D636F6C6F723A20236666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C65746520';
wwv_flow_api.g_varchar2_table(644) := '2E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64';
wwv_flow_api.g_varchar2_table(645) := '616E676572202E742D5374617475734C6973742D6D61726B65722C0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B657220';
wwv_flow_api.g_varchar2_table(646) := '7B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D6172';
wwv_flow_api.g_varchar2_table(647) := '6B6572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C';
wwv_flow_api.g_varchar2_table(648) := '6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D537461';
wwv_flow_api.g_varchar2_table(649) := '7475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E74';
wwv_flow_api.g_varchar2_table(650) := '2D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A20234130413041303B0A7D0A0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B2C0A2E61706578';
wwv_flow_api.g_varchar2_table(651) := '2D726473202E617065782D7264732D73656C65637465642061207B0A2020626F782D736861646F773A2030202D3270782030202336633663366320696E7365743B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F63';
wwv_flow_api.g_varchar2_table(652) := '75732C0A2E617065782D72647320613A666F637573207B0A2020626F782D736861646F773A20302030203020327078202336633663366320696E7365743B0A7D0A2E742D546162732D2D70696C6C207B0A20206261636B67726F756E643A206C696E6561';
wwv_flow_api.g_varchar2_table(653) := '722D6772616469656E7428236638663866382C2023663466346634293B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A202362396239';
wwv_flow_api.g_varchar2_table(654) := '62393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20236261626162613B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D49636F6E207B';
wwv_flow_api.g_varchar2_table(655) := '0A2020636F6C6F723A20236261626162613B0A7D0A2E742D526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(656) := '723A20236630663066303B0A7D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E';
wwv_flow_api.g_varchar2_table(657) := '742D546162732D6C696E6B207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D52';
wwv_flow_api.g_varchar2_table(658) := '6567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(659) := '742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0A202062';
wwv_flow_api.g_varchar2_table(660) := '6F726465722D636F6C6F723A20233436393646433B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D546162732D2D';
wwv_flow_api.g_varchar2_table(661) := '70696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E742D546162732D6C696E6B207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D69';
wwv_flow_api.g_varchar2_table(662) := '74656D2E69732D616374697665202E742D546162732D6C696E6B207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(663) := '0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E617065782D7264732061207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F7665';
wwv_flow_api.g_varchar2_table(664) := '722C0A2E617065782D72647320613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A61637469';
wwv_flow_api.g_varchar2_table(665) := '76652C0A2E617065782D72647320613A616374697665207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A7D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D';
wwv_flow_api.g_varchar2_table(666) := '6C696E6B2C0A2E742D426F6479202E617065782D7264732061207B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(667) := '7469746C65202E617065782D72647320612C0A2E742D426F64792D696E666F202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D696E666F202E617065782D7264732061207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(668) := '39663966393B0A7D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D526567696F6E202E617065782D7264732061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E617065782D72';
wwv_flow_api.g_varchar2_table(669) := '64732D686F7665722E6C6566742061207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023336133613361203530252C2072676261283235352C203235352C203235352C203029203130';
wwv_flow_api.g_varchar2_table(670) := '3025293B0A20200A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023336133613361203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A7D0A2E617065';
wwv_flow_api.g_varchar2_table(671) := '782D7264732D686F7665722E72696768742061207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20233361336133612030252C2072676261283235352C203235352C203235352C203029';
wwv_flow_api.g_varchar2_table(672) := '2031252C202333613361336120353025293B0A20200A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20233361336133612030252C2072676261283235352C203235352C203235352C2030292031252C';
wwv_flow_api.g_varchar2_table(673) := '202333613361336120353025293B0A20200A7D0A0A2E612D546167436C6F75642D6C696E6B207B0A2020626F726465722D636F6C6F723A20233764376437643B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(674) := '20233735373537353B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0A2020636F6C';
wwv_flow_api.g_varchar2_table(675) := '6F723A20233266326632663B0A7D0A2E612D546167436C6F75642D6C696E6B207370616E207B0A20207472616E736974696F6E3A20636F6C6F72202E32733B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0A2020746578742D6465';
wwv_flow_api.g_varchar2_table(676) := '636F726174696F6E3A206E6F6E653B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020626F726465722D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(677) := '3A20302030203020327078202333393339333920696E7365743B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0A2020636F6C6F723A20236638663866383B0A7D0A2E612D546167436C6F75642D636F756E74207B0A20';
wwv_flow_api.g_varchar2_table(678) := '20636F6C6F723A20236666666666663B0A2020666F6E742D7765696768743A203230303B0A7D0A2E742D54696D656C696E65207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D54696D656C696E652D757365726E616D652C0A2E742D5469';
wwv_flow_api.g_varchar2_table(679) := '6D656C696E652D646174652C0A2E742D54696D656C696E652D64657363207B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D54696D656C696E652D77726170207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D54696D656C69';
wwv_flow_api.g_varchar2_table(680) := '6E652D74797065207B0A20206261636B67726F756E642D636F6C6F723A20233333333333333B0A2020636F6C6F723A20236663666366633B0A7D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(681) := '6C6F723A20233463643936343B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(682) := '4646463B0A7D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D777261703A';
wwv_flow_api.g_varchar2_table(683) := '666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202333393339333920696E7365743B0A7D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B';
wwv_flow_api.g_varchar2_table(684) := '0A20206261636B67726F756E642D636F6C6F723A20233133313331333B0A7D0A2E742D526567696F6E207B0A20200A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_api.g_varchar2_table(685) := '772E69732D666F6375736564207B0A2020626F782D736861646F773A20302030203020317078202338373837383720696E7365743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(686) := '566965772D726F772E69732D63757272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(687) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20233738373837383B0A7D';
wwv_flow_api.g_varchar2_table(688) := '0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D74';
wwv_flow_api.g_varchar2_table(689) := '6F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(690) := '6F723A20233730373037303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(691) := '3766376637662021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67';
wwv_flow_api.g_varchar2_table(692) := '676C652C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C20323535';
wwv_flow_api.g_varchar2_table(693) := '2C203235352C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A68';
wwv_flow_api.g_varchar2_table(694) := '6F7665722C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(695) := '662021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(696) := '2021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567';
wwv_flow_api.g_varchar2_table(697) := '696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(698) := '566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(699) := '2D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D';
wwv_flow_api.g_varchar2_table(700) := '2D746F70202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D526567696F6E202E612D5472';
wwv_flow_api.g_varchar2_table(701) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E61';
wwv_flow_api.g_varchar2_table(702) := '2D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(703) := '6C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C656374';
wwv_flow_api.g_varchar2_table(704) := '65642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(705) := '742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(706) := '67696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(707) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(708) := '65566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(709) := '76656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20233738373837383B0A7D0A2E742D547265654E6176202E612D5472656556';
wwv_flow_api.g_varchar2_table(710) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A20302030203020317078202334333433343320696E7365743B0A7D0A2E742D547265654E617620';
wwv_flow_api.g_varchar2_table(711) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(712) := '566965772D726F772E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563';
wwv_flow_api.g_varchar2_table(713) := '746564207B0A20206261636B67726F756E642D636F6C6F723A20233334333433343B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E';
wwv_flow_api.g_varchar2_table(714) := '742D2D746F702C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(715) := '65772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20233263326332633B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(716) := '6965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233363336333632021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_api.g_varchar2_table(717) := '612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E';
wwv_flow_api.g_varchar2_table(718) := '612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283233362C203233362C203233362C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54';
wwv_flow_api.g_varchar2_table(719) := '726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C';
wwv_flow_api.g_varchar2_table(720) := '65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236563656365632021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(721) := '2D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20236563656365632021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(722) := '2D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236432643264323B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66';
wwv_flow_api.g_varchar2_table(723) := '612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236432643264323B0A7D0A2E742D547265654E61';
wwv_flow_api.g_varchar2_table(724) := '76202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(725) := '202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E';
wwv_flow_api.g_varchar2_table(726) := '69732D686F766572202E612D49636F6E2C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E20';
wwv_flow_api.g_varchar2_table(727) := '7B0A2020636F6C6F723A20236563656365633B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A';
wwv_flow_api.g_varchar2_table(728) := '2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D74';
wwv_flow_api.g_varchar2_table(729) := '6F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69';
wwv_flow_api.g_varchar2_table(730) := '732D63757272656E742D2D746F70207B0A2020636F6C6F723A20236563656365633B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F';
wwv_flow_api.g_varchar2_table(731) := '6C6F723A2072676261283231302C203231302C203231302C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A20';
wwv_flow_api.g_varchar2_table(732) := '20636F6C6F723A20236432643264322021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A20';
wwv_flow_api.g_varchar2_table(733) := '6261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66';
wwv_flow_api.g_varchar2_table(734) := '612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A202365636563';
wwv_flow_api.g_varchar2_table(735) := '65633B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236563656365633B0A7D';
wwv_flow_api.g_varchar2_table(736) := '0A0A2E742D4469616C6F672D2D77697A617264207B0A2020626F726465723A20233861386138613B0A7D0A2E742D57697A617264207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(737) := '203270783B0A7D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C207B0A20206261636B67726F756E643A20233730373037';
wwv_flow_api.g_varchar2_table(738) := '303B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D57697A6172642D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823373037303730203430252C2072676261283131322C20313132';
wwv_flow_api.g_varchar2_table(739) := '2C203131322C203029292C206C696E6561722D6772616469656E742872676261283131322C203131322C203131322C2030292C20233730373037302036302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20';
wwv_flow_api.g_varchar2_table(740) := '302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B';
wwv_flow_api.g_varchar2_table(741) := '67726F756E642D636F6C6F723A20233730373037303B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D526567696F6E207B0A20206261636B67726F756E643A20233730373037303B0A7D0A2E742D57697A617264207B0A2020626F';
wwv_flow_api.g_varchar2_table(742) := '726465722D636F6C6F723A20233861386138613B0A7D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233735373537353B0A2020626F726465722D636F6C6F723A20233832';
wwv_flow_api.g_varchar2_table(743) := '383238323B0A7D0A2E742D57697A61726453746570732D777261703A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20233861386138613B0A7D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570';
wwv_flow_api.g_varchar2_table(744) := '732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236133613361333B0A7D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0A2020';
wwv_flow_api.g_varchar2_table(745) := '6261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20234646463B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0A2020';
wwv_flow_api.g_varchar2_table(746) := '6261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A2E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D57697A61726453746570732D737465702E69732D6163746976';
wwv_flow_api.g_varchar2_table(747) := '65202E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A2020626F726465722D626F74746F6D2D';
wwv_flow_api.g_varchar2_table(748) := '72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A626F6479202E75692D6469616C6F67202E75692D';
wwv_flow_api.g_varchar2_table(749) := '6469616C6F672D7469746C65207B0A2020636F6C6F723A20236638663866383B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0A2020626F726465722D7261646975733A2031303025';
wwv_flow_api.g_varchar2_table(750) := '3B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0A2020626F726465722D746F702D636F6C6F723A20234630463046303B0A7D0A0A626F6479202E75692D7769646765742D636F6E74656E7420';
wwv_flow_api.g_varchar2_table(751) := '7B0A2020626F726465722D636F6C6F723A20233834383438343B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E75692D7769646765742D636F6E74656E7420';
wwv_flow_api.g_varchar2_table(752) := '61207B0A2020636F6C6F723A20233331333133313B0A7D0A626F6479202E75692D7769646765742D686561646572207B0A2020626F726465722D636F6C6F723A20233834383438343B0A20206261636B67726F756E642D636F6C6F723A20233364336433';
wwv_flow_api.g_varchar2_table(753) := '643B0A2020636F6C6F723A20236663666366633B0A7D0A626F6479202E75692D7769646765742D6865616465722061207B0A2020636F6C6F723A20236663666366633B0A7D0A0A626F6479202E75692D73746174652D64656661756C742C0A626F647920';
wwv_flow_api.g_varchar2_table(754) := '2E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(755) := '20236230623062303B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E75692D73746174652D64656661756C7420612C0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0A626F6479202E75692D73746174';
wwv_flow_api.g_varchar2_table(756) := '652D64656661756C7420613A766973697465642C0A626F6479202E75692D73746174652D61637469766520612C0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0A626F6479202E75692D73746174652D61637469766520613A';
wwv_flow_api.g_varchar2_table(757) := '76697369746564207B0A2020636F6C6F723A20233331333133313B0A7D0A626F6479202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0A626F6479202E75';
wwv_flow_api.g_varchar2_table(758) := '692D7769646765742D686561646572202E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236361636163613B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E75692D73746174652D666F';
wwv_flow_api.g_varchar2_table(759) := '6375732C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(760) := '20302030203020317078202333393339333920696E7365742C20302030203170782032707820726762612835372C2035372C2035372C20302E3235292021696D706F7274616E743B0A20206261636B67726F756E642D636F6C6F723A2023636163616361';
wwv_flow_api.g_varchar2_table(761) := '3B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(762) := '2020626F782D736861646F773A20302030203020317078202333393339333920696E7365742C20302030203170782032707820726762612835372C2035372C2035372C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D737461';
wwv_flow_api.g_varchar2_table(763) := '74652D686F76657220612C0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0A626F6479202E75692D73746174652D686F76657220613A766973697465';
wwv_flow_api.g_varchar2_table(764) := '642C0A626F6479202E75692D73746174652D666F63757320612C0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(765) := '2D666F63757320613A76697369746564207B0A2020636F6C6F723A20233331333133313B0A7D0A626F6479202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D61637469';
wwv_flow_api.g_varchar2_table(766) := '76652C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233937393739373B0A2020636F6C6F723A20233030303030303B0A7D0A0A626F6479';
wwv_flow_api.g_varchar2_table(767) := '202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D';
wwv_flow_api.g_varchar2_table(768) := '686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236239623962393B0A2020636F6C6F723A20233339333933393B0A7D0A626F6479202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769';
wwv_flow_api.g_varchar2_table(769) := '646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0A2020636F6C6F723A20233339333933393B';
wwv_flow_api.g_varchar2_table(770) := '0A7D0A626F6479202E75692D73746174652D6572726F722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D65';
wwv_flow_api.g_varchar2_table(771) := '72726F72207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D636F6E74';
wwv_flow_api.g_varchar2_table(772) := '656E74202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(773) := '2D6572726F722D746578742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D7465';
wwv_flow_api.g_varchar2_table(774) := '7874207B0A2020636F6C6F723A20236539306330303B0A7D0A0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0A626F6479202E75692D646174657069636B657220746420612E75692D';
wwv_flow_api.g_varchar2_table(775) := '73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D';
wwv_flow_api.g_varchar2_table(776) := '73746174652D64656661756C742E75692D73746174652D6163746976652C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(777) := '756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D6465';
wwv_flow_api.g_varchar2_table(778) := '6661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73';
wwv_flow_api.g_varchar2_table(779) := '746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233339333933392021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E';
wwv_flow_api.g_varchar2_table(780) := '75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A202337643764';
wwv_flow_api.g_varchar2_table(781) := '37642021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0A626F6479202E75692D646174657069636B657220746420612E75692D737461';
wwv_flow_api.g_varchar2_table(782) := '74652D64656661756C743A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202333393339333920696E7365742C20302030203170782032707820726762612835372C2035372C20';
wwv_flow_api.g_varchar2_table(783) := '35372C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0A626F6479202E75692D6461';
wwv_flow_api.g_varchar2_table(784) := '74657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20233834383438343B0A7D0A626F6479202E75692D646174657069636B';
wwv_flow_api.g_varchar2_table(785) := '6572207468207B0A2020636F6C6F723A20236266626662663B0A7D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0A626F6479202E75692D646174657069636B6572202E75692D6461746570';
wwv_flow_api.g_varchar2_table(786) := '69636B65722D627574746F6E70616E6520627574746F6E2C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B6572';
wwv_flow_api.g_varchar2_table(787) := '2D70726576207B0A2020626F726465722D7261646975733A203270783B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A20206261636B67726F756E642D636F6C6F723A20233364336433643B0A';
wwv_flow_api.g_varchar2_table(788) := '2020626F726465722D626F74746F6D3A2031707820736F6C696420233537353735373B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20236663666366633B0A7D0A626F6479202E75';
wwv_flow_api.g_varchar2_table(789) := '692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0A2E742D4469616C6F672D70616765207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D44';
wwv_flow_api.g_varchar2_table(790) := '69616C6F672D2D77697A6172642E75692D6469616C6F672C0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0A2E742D4469616C6F672D2D77697A61726420626F6479202E7569';
wwv_flow_api.g_varchar2_table(791) := '2D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4469616C6F672D2D77697A6172642E75692D64';
wwv_flow_api.g_varchar2_table(792) := '69616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20236666666666663B0A7D0A0A626F6479202E75692D636F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(793) := '2D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F';
wwv_flow_api.g_varchar2_table(794) := '726E65722D746F702C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D636F72';
wwv_flow_api.g_varchar2_table(795) := '6E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(796) := '636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A626F64';
wwv_flow_api.g_varchar2_table(797) := '79202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(798) := '75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D63';
wwv_flow_api.g_varchar2_table(799) := '6F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D726164697573';
wwv_flow_api.g_varchar2_table(800) := '3A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E6572';
wwv_flow_api.g_varchar2_table(801) := '2D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65';
wwv_flow_api.g_varchar2_table(802) := '722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A2E61635F726573756C7473207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(803) := '3A2031707820736F6C696420233936393639363B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A2020636F6C6F723A20236666666666663B0A7D0A2E61635F6C6F6164696E67207B0A20206261636B67726F756E643A202366';
wwv_flow_api.g_varchar2_table(804) := '66666666662075726C28272E2E2F2E2E2F2E2E2F617065785F75692F696D672F6C65676163792F6C6F6164696E6731367831362E67696627292072696768742063656E746572206E6F2D7265706561743B0A7D0A2E61635F6F6464207B0A20206261636B';
wwv_flow_api.g_varchar2_table(805) := '67726F756E642D636F6C6F723A20233764376437643B0A7D0A626F6479202E61635F6F766572207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A626F6479202E612D4433';
wwv_flow_api.g_varchar2_table(806) := '4C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732D7469746C65207B0A202066696C6C3A20236666666666663B';
wwv_flow_api.g_varchar2_table(807) := '0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973202E7469636B20746578742C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B20';
wwv_flow_api.g_varchar2_table(808) := '74657874207B0A202066696C6C3A20236630663066303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D44334C696E65';
wwv_flow_api.g_varchar2_table(809) := '43686172742D61786973206C696E652C0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D6178697320706174682C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869';
wwv_flow_api.g_varchar2_table(810) := '732070617468207B0A20207374726F6B653A20233861386138613B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732D7469746C65207B0A202066696C6C3A20236666666666663B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(811) := '2E612D44334261724368617274202E612D443342617243686172742D67726964206C696E652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B0A20207374726F6B653A20233861386138613B0A7D0A';
wwv_flow_api.g_varchar2_table(812) := '626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732070617468207B0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(813) := '6133613361333B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973202E7469636B2074657874207B0A202066696C6C3A20236630663066303B0A7D0A626F6479202E612D4433546F6F6C746970207B0A';
wwv_flow_api.g_varchar2_table(814) := '20206261636B67726F756E642D636F6C6F723A20236630663066303B0A2020636F6C6F723A20233730373037302021696D706F7274616E743B0A7D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0A2020626F726465722D746F70';
wwv_flow_api.g_varchar2_table(815) := '3A20236436643664363B0A7D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D65787465726E616C2D626F7264657273207B0A2020626F726465722D77696474683A20303B0A7D0A626F6479202E612D';
wwv_flow_api.g_varchar2_table(816) := '443343686172744C6567656E642D6974656D2C0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0A20206261';
wwv_flow_api.g_varchar2_table(817) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D77696474683A20302021696D706F7274616E743B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0A2020636F';
wwv_flow_api.g_varchar2_table(818) := '6C6F723A20236439643964393B0A7D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0A2020';
wwv_flow_api.g_varchar2_table(819) := '626F726465722D7261646975733A20313030253B0A2020626F726465722D72696768742D77696474683A20303B0A7D0A2E742D426F6479207B0A20200A20200A20200A7D0A2E742D426F6479202E612D4D696E6943616C207B0A2020626F726465723A20';
wwv_flow_api.g_varchar2_table(820) := '31707820736F6C696420233533353335333B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0A20';
wwv_flow_api.g_varchar2_table(821) := '20636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20236239623962393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0A2020626F72';
wwv_flow_api.g_varchar2_table(822) := '6465722D636F6C6F723A20233366336633663B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(823) := '6E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(824) := '6E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A202333653365';
wwv_flow_api.g_varchar2_table(825) := '33653B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20233433343334333B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A7D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(826) := '6F6E202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420233861386138613B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(827) := '2D526567696F6E202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20236630663066303B0A7D0A';
wwv_flow_api.g_varchar2_table(828) := '2E742D526567696F6E202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20233736373637363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D';
wwv_flow_api.g_varchar2_table(829) := '746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E6973';
wwv_flow_api.g_varchar2_table(830) := '2D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E';
wwv_flow_api.g_varchar2_table(831) := '69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20233735373537353B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(832) := '3761376137613B0A7D0A2E742D426F64792D616374696F6E73207B0A20200A20200A20200A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420233436343634363B0A202062';
wwv_flow_api.g_varchar2_table(833) := '6F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20236562656265';
wwv_flow_api.g_varchar2_table(834) := '623B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20236163616361633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0A202062';
wwv_flow_api.g_varchar2_table(835) := '6F726465722D636F6C6F723A20233332333233323B0A2020636F6C6F723A20236562656265623B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A';
wwv_flow_api.g_varchar2_table(836) := '20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C';
wwv_flow_api.g_varchar2_table(837) := '2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B';
wwv_flow_api.g_varchar2_table(838) := '0A20206261636B67726F756E642D636F6C6F723A20233331333133313B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A2023333633363336';
wwv_flow_api.g_varchar2_table(839) := '3B0A7D0A2E742D426F64792D696E666F207B0A20200A20200A20200A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420233534353435343B0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(840) := '3A203270783B0A20206261636B67726F756E642D636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D426F64792D696E';
wwv_flow_api.g_varchar2_table(841) := '666F202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20236261626162613B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20233430343034303B';
wwv_flow_api.g_varchar2_table(842) := '0A2020636F6C6F723A20236639663966393B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A2023333933';
wwv_flow_api.g_varchar2_table(843) := '3933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(844) := '20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20233366336633663B0A';
wwv_flow_api.g_varchar2_table(845) := '7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20233434343434343B0A7D0A0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C69';
wwv_flow_api.g_varchar2_table(846) := '73742D7469746C65207B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F64792D696E666F202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20236639663966393B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(847) := '67696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0A2E742D427574746F6E526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(848) := '7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F637573202E612D44657461696C6564436F6E74656E744C6973742D686561646572207B0A2020626F782D736861646F773A2030203020302031707820233230';
wwv_flow_api.g_varchar2_table(849) := '3230323020696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(850) := '6F756E642D636F6C6F723A20233730373037303B0A2020626F782D736861646F773A20302030203020317078202333393339333920696E7365743B0A2020636F6C6F723A20233339333933393B0A7D0A626F6479202E612D44657461696C6564436F6E74';
wwv_flow_api.g_varchar2_table(851) := '656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(852) := '3A20236638663866383B0A2020626F782D736861646F773A20302030203020317078202332303230323020696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0A2020626163';
wwv_flow_api.g_varchar2_table(853) := '6B67726F756E642D636F6C6F723A20233764376437643B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D69636F6E207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A626F';
wwv_flow_api.g_varchar2_table(854) := '6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(855) := '6F756E643A20236638663866383B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A686F766572207B0A202063';
wwv_flow_api.g_varchar2_table(856) := '6F6C6F723A20233230323032303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0A2020636F6C6F723A20233230323032303B0A7D0A626F6479202E612D44657461696C6564436F6E';
wwv_flow_api.g_varchar2_table(857) := '74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20';
wwv_flow_api.g_varchar2_table(858) := '206261636B67726F756E642D636F6C6F723A20233036303630363B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(859) := '20236638663866383B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20233663366336633B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(860) := '202E612D44657461696C6564436F6E74656E744C6973742D626F64792D686561646572207B0A20206261636B67726F756E643A20236638663866383B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D';
wwv_flow_api.g_varchar2_table(861) := '6C6162656C207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20233036303630363B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(862) := '2E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(863) := '6F6C6F723A2023373037303730207472616E73706172656E743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C656443';
wwv_flow_api.g_varchar2_table(864) := '6F6E74656E744C6973742D626F64793A6265666F7265207B0A2020626F726465722D636F6C6F723A2023663866386638207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B0A20';
wwv_flow_api.g_varchar2_table(865) := '202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E';
wwv_flow_api.g_varchar2_table(866) := '74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A';
wwv_flow_api.g_varchar2_table(867) := '2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0A2020626F726465722D636F6C6F723A2023303630';
wwv_flow_api.g_varchar2_table(868) := '363036207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0A2020626F726465722D636F6C6F723A2023303630363036207472';
wwv_flow_api.g_varchar2_table(869) := '616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A6166746572207B0A2020626F726465722D636F6C6F723A2023656165616561207472';
wwv_flow_api.g_varchar2_table(870) := '616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0A2020626F726465722D636F6C6F723A2023303630363036207472616E73706172656E';
wwv_flow_api.g_varchar2_table(871) := '743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0A2020626F726465722D636F6C6F723A2023303630363036207472616E73706172656E743B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(872) := '202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742023663866386638207472616E73706172656E74207472';
wwv_flow_api.g_varchar2_table(873) := '616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E7420233036303630';
wwv_flow_api.g_varchar2_table(874) := '36207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6265666F7265207B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(875) := '7472616E73706172656E74207472616E73706172656E74207472616E73706172656E742072676261283235352C203235352C203235352C20302E35293B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172';
wwv_flow_api.g_varchar2_table(876) := '726F772E72696768743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420233036303630363B0A7D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(877) := '646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(878) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(879) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F76657220';
wwv_flow_api.g_varchar2_table(880) := '7B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(881) := '6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(882) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(883) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E';
wwv_flow_api.g_varchar2_table(884) := '7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(885) := '2D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329206120';
wwv_flow_api.g_varchar2_table(886) := '7B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329';
wwv_flow_api.g_varchar2_table(887) := '20612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(888) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(889) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(890) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(891) := '646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(892) := '682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(893) := '4C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(894) := '6467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(895) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334';
wwv_flow_api.g_varchar2_table(896) := '616164633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(897) := '236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C';
wwv_flow_api.g_varchar2_table(898) := '6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(899) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(900) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(901) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078';
wwv_flow_api.g_varchar2_table(902) := '20302030202363636133303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829';
wwv_flow_api.g_varchar2_table(903) := '207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(904) := '74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(905) := '6D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(906) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(907) := '79202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A';
wwv_flow_api.g_varchar2_table(908) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F';
wwv_flow_api.g_varchar2_table(909) := '766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(910) := '6467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(911) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(912) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020233831';
wwv_flow_api.g_varchar2_table(913) := '3766653020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261';
wwv_flow_api.g_varchar2_table(914) := '636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(915) := '6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(916) := '6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(917) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(918) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(919) := '79202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F7665';
wwv_flow_api.g_varchar2_table(920) := '72207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(921) := '654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(922) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(923) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663935';
wwv_flow_api.g_varchar2_table(924) := '303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B';
wwv_flow_api.g_varchar2_table(925) := '67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(926) := '203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(927) := '696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(928) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(929) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(930) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F76657220';
wwv_flow_api.g_varchar2_table(931) := '7B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(932) := '6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(933) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(934) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023333161396462';
wwv_flow_api.g_varchar2_table(935) := '20696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(936) := '6F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_api.g_varchar2_table(937) := '37292061207B0A2020636F6C6F723A20233333333333333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(938) := '64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E';
wwv_flow_api.g_varchar2_table(939) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(940) := '67654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A20233335363137353B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(941) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0A';
wwv_flow_api.g_varchar2_table(942) := '2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(943) := '742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(944) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(945) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236666393238632069';
wwv_flow_api.g_varchar2_table(946) := '6E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(947) := '6E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029';
wwv_flow_api.g_varchar2_table(948) := '2061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(949) := '2032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(950) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(951) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(952) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A2020';
wwv_flow_api.g_varchar2_table(953) := '626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(954) := '6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(955) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(956) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E73';
wwv_flow_api.g_varchar2_table(957) := '65743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(958) := '2D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061';
wwv_flow_api.g_varchar2_table(959) := '207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(960) := '332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(961) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(962) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(963) := '67654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F';
wwv_flow_api.g_varchar2_table(964) := '782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(965) := '656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(966) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(967) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E736574';
wwv_flow_api.g_varchar2_table(968) := '3B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(969) := '6F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B';
wwv_flow_api.g_varchar2_table(970) := '0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629';
wwv_flow_api.g_varchar2_table(971) := '20612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(972) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(973) := '2D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(974) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D';
wwv_flow_api.g_varchar2_table(975) := '736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(976) := '3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(977) := '616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(978) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A';
wwv_flow_api.g_varchar2_table(979) := '7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(980) := '6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A20';
wwv_flow_api.g_varchar2_table(981) := '20636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061';
wwv_flow_api.g_varchar2_table(982) := '2E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C';
wwv_flow_api.g_varchar2_table(983) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(984) := '646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(985) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(986) := '61646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(987) := '656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666313434303B0A2020636F6C6F723A20236666313434303B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(988) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(989) := '75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(990) := '76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(991) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030366565363B0A2020636F6C6F723A20233030';
wwv_flow_api.g_varchar2_table(992) := '366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C';
wwv_flow_api.g_varchar2_table(993) := '6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(994) := '682D6368696C6428203229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(995) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(996) := '6F723A20236536383630303B0A2020636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(997) := '6D3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(998) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(999) := '66393530303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D4261646765';
wwv_flow_api.g_varchar2_table(1000) := '4C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233337643535323B0A2020636F6C6F723A20233337643535323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1001) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1002) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233037316630';
wwv_flow_api.g_varchar2_table(1003) := '623B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1004) := '656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233831383138373B0A2020636F6C6F723A20233831383138373B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1005) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1006) := '75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1007) := '76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1008) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233234396564323B0A2020636F6C6F723A20233234';
wwv_flow_api.g_varchar2_table(1009) := '396564323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1010) := '6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1011) := '682D6368696C6428203629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1012) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1013) := '6F723A20236536623830303B0A2020636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1014) := '6D3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1015) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1016) := '66636330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D4261646765';
wwv_flow_api.g_varchar2_table(1017) := '4C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431633066393B0A2020636F6C6F723A20233431633066393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1018) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1019) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333935';
wwv_flow_api.g_varchar2_table(1020) := '323B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1021) := '656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666323331373B0A2020636F6C6F723A20236666323331373B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1022) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1023) := '75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1024) := '76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1025) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233434343164313B0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(1026) := '34343164313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467';
wwv_flow_api.g_varchar2_table(1027) := '654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1028) := '6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1029) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C7565207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1030) := '2D636F6C6F723A20236666336536323B0A2020636F6C6F723A20236666336536323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1031) := '2D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1032) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1033) := '6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E';
wwv_flow_api.g_varchar2_table(1034) := '742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233139383766663B0A2020636F6C6F723A20233139383766663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1035) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1036) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1037) := '723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1038) := '67654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666613031393B0A2020636F6C6F723A20236666613031393B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(1039) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D77726170202E742D4261';
wwv_flow_api.g_varchar2_table(1040) := '6467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E';
wwv_flow_api.g_varchar2_table(1041) := '742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(1042) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233562646337313B';
wwv_flow_api.g_varchar2_table(1043) := '0A2020636F6C6F723A20233562646337313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1044) := '20313429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1045) := '67654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233338346333633B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A62';
wwv_flow_api.g_varchar2_table(1046) := '6F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C75';
wwv_flow_api.g_varchar2_table(1047) := '65207B0A2020626F726465722D636F6C6F723A20233938393839633B0A2020636F6C6F723A20233938393839633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1048) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(1049) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261';
wwv_flow_api.g_varchar2_table(1050) := '636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1051) := '6368696C642820313629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233437623264663B0A2020636F6C6F723A20233437623264663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_api.g_varchar2_table(1052) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A62';
wwv_flow_api.g_varchar2_table(1053) := '6F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C75';
wwv_flow_api.g_varchar2_table(1054) := '652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1055) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666643131393B0A2020636F6C6F723A20236666643131';
wwv_flow_api.g_varchar2_table(1056) := '393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1057) := '742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1058) := '6368696C642820313729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1059) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1060) := '6F723A20233632636266613B0A2020636F6C6F723A20233632636266613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1061) := '6D3A6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1062) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233335363137353B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1063) := '233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D4261';
wwv_flow_api.g_varchar2_table(1064) := '6467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666346134303B0A2020636F6C6F723A20236666346134303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1065) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1066) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1067) := '6666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1068) := '73742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233635363364393B0A2020636F6C6F723A20233635363364393B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1069) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77726170202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1070) := '6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D4261';
wwv_flow_api.g_varchar2_table(1071) := '6467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(1072) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236462316133663B0A202063';
wwv_flow_api.g_varchar2_table(1073) := '6F6C6F723A20236462316133663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129';
wwv_flow_api.g_varchar2_table(1074) := '202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1075) := '73742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(1076) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C7565207B0A';
wwv_flow_api.g_varchar2_table(1077) := '2020626F726465722D636F6C6F723A20233030363263633B0A2020636F6C6F723A20233030363263633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1078) := '616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(1079) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1080) := '6F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1081) := '642820323329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363373730303B0A2020636F6C6F723A20236363373730303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1082) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F647920';
wwv_flow_api.g_varchar2_table(1083) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565206120';
wwv_flow_api.g_varchar2_table(1084) := '7B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1085) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233361623434663B0A2020636F6C6F723A20233361623434663B0A7D';
wwv_flow_api.g_varchar2_table(1086) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(1087) := '6170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1088) := '642820323429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233036316330613B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1089) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1090) := '233733373337373B0A2020636F6C6F723A20233733373337373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1091) := '682D6368696C642820323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1092) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A2023383038';
wwv_flow_api.g_varchar2_table(1093) := '3038343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1094) := '6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233261383962313B0A2020636F6C6F723A20233261383962313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1095) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1096) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A202365366536';
wwv_flow_api.g_varchar2_table(1097) := '65363B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1098) := '74656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363613330303B0A2020636F6C6F723A20236363613330303B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1099) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1100) := '76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1101) := '6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1102) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233362616264643B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1103) := '3A20233362616264643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D';
wwv_flow_api.g_varchar2_table(1104) := '42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1105) := '74656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333434613B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1106) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C7565207B0A2020626F';
wwv_flow_api.g_varchar2_table(1107) := '726465722D636F6C6F723A20236464323531623B0A2020636F6C6F723A20236464323531623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1108) := '4C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1109) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1110) := '2D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_api.g_varchar2_table(1111) := '3029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431343062353B0A2020636F6C6F723A20233431343062353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_api.g_varchar2_table(1112) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1113) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C75652061207B0A2020';
wwv_flow_api.g_varchar2_table(1114) := '636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A';
wwv_flow_api.g_varchar2_table(1115) := '20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(1116) := '66663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(1117) := '2D38707820302030202366663630376520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1118) := '3030376166663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1119) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365';
wwv_flow_api.g_varchar2_table(1120) := '743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1121) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1122) := '3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1123) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1124) := '6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D4261';
wwv_flow_api.g_varchar2_table(1125) := '6467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1126) := '6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529206120';
wwv_flow_api.g_varchar2_table(1127) := '7B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0A';
wwv_flow_api.g_varchar2_table(1128) := '2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0A2020626163';
wwv_flow_api.g_varchar2_table(1129) := '6B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1130) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_api.g_varchar2_table(1131) := '302030202335666263653420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330';
wwv_flow_api.g_varchar2_table(1132) := '303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1133) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A';
wwv_flow_api.g_varchar2_table(1134) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1135) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1136) := '6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_api.g_varchar2_table(1137) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1138) := '6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1139) := '73742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1140) := '68696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A20';
wwv_flow_api.g_varchar2_table(1141) := '20636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0A2020';
wwv_flow_api.g_varchar2_table(1142) := '626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1143) := '67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1144) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078';
wwv_flow_api.g_varchar2_table(1145) := '20302030202366663861613020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A2023333339';
wwv_flow_api.g_varchar2_table(1146) := '3566663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1147) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E736574';
wwv_flow_api.g_varchar2_table(1148) := '3B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1149) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1150) := '6D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1151) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1152) := '73742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061';
wwv_flow_api.g_varchar2_table(1153) := '2E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1154) := '6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1155) := '203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(1156) := '686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136';
wwv_flow_api.g_varchar2_table(1157) := '29207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1158) := '236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(1159) := '6F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1160) := '6F6C6F723A20236666643633333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1161) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236666';
wwv_flow_api.g_varchar2_table(1162) := '6363303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1163) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A20233335363137353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1164) := '67654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A2E742D43';
wwv_flow_api.g_varchar2_table(1165) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1166) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1167) := '696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1168) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1169) := '6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D4261646765';
wwv_flow_api.g_varchar2_table(1170) := '4C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1171) := '2D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B';
wwv_flow_api.g_varchar2_table(1172) := '0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A';
wwv_flow_api.g_varchar2_table(1173) := '2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261';
wwv_flow_api.g_varchar2_table(1174) := '636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536653665363B';
wwv_flow_api.g_varchar2_table(1175) := '0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38';
wwv_flow_api.g_varchar2_table(1176) := '707820302030202331613837666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(1177) := '36383630303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1178) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E73';
wwv_flow_api.g_varchar2_table(1179) := '65743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1180) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1181) := '74656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1182) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1183) := '4C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529';
wwv_flow_api.g_varchar2_table(1184) := '20612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1185) := '742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1186) := '6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(1187) := '703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1188) := '323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1189) := '3A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1190) := '61646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1191) := '2D636F6C6F723A20233531623465313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B0A7D0A2E742D4361';
wwv_flow_api.g_varchar2_table(1192) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023';
wwv_flow_api.g_varchar2_table(1193) := '37636337653920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D';
wwv_flow_api.g_varchar2_table(1194) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1195) := '616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1196) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1197) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1198) := '6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A2E752D436F6C6F7242472D2D31207B0A20206261';
wwv_flow_api.g_varchar2_table(1199) := '636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7246472D2D31207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7242472D2D32207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1200) := '3030376166663B0A7D0A2E752D436F6C6F7246472D2D32207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7242472D2D33207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1201) := '7246472D2D33207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7242472D2D34207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7246472D2D34207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1202) := '20233463643936343B0A7D0A2E752D436F6C6F7242472D2D35207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F7246472D2D35207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1203) := '6C6F7242472D2D36207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7246472D2D36207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7242472D2D37207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1204) := '67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7246472D2D37207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7242472D2D38207B0A20206261636B67726F756E642D636F6C6F723A20233561';
wwv_flow_api.g_varchar2_table(1205) := '633866613B0A7D0A2E752D436F6C6F7246472D2D38207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7242472D2D39207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7246';
wwv_flow_api.g_varchar2_table(1206) := '472D2D39207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7242472D2D3130207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7246472D2D3130207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1207) := '20233538353664363B0A7D0A2E752D436F6C6F7242472D2D3131207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7246472D2D3131207B0A2020636F6C6F723A20236666353737373B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1208) := '436F6C6F7242472D2D3132207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7246472D2D3132207B0A2020636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7242472D2D3133207B0A20';
wwv_flow_api.g_varchar2_table(1209) := '206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7246472D2D3133207B0A2020636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7242472D2D3134207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1210) := '6F723A20233730653138333B0A7D0A2E752D436F6C6F7246472D2D3134207B0A2020636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7242472D2D3135207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A';
wwv_flow_api.g_varchar2_table(1211) := '2E752D436F6C6F7246472D2D3135207B0A2020636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7242472D2D3136207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7246472D2D313620';
wwv_flow_api.g_varchar2_table(1212) := '7B0A2020636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7242472D2D3137207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7246472D2D3137207B0A2020636F6C6F723A2023666664';
wwv_flow_api.g_varchar2_table(1213) := '3633333B0A7D0A2E752D436F6C6F7242472D2D3138207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7246472D2D3138207B0A2020636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1214) := '42472D2D3139207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7246472D2D3139207B0A2020636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7242472D2D3230207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1215) := '67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7246472D2D3230207B0A2020636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7242472D2D3231207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1216) := '6536323934643B0A7D0A2E752D436F6C6F7246472D2D3231207B0A2020636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7242472D2D3232207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1217) := '6C6F7246472D2D3232207B0A2020636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7242472D2D3233207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7246472D2D3233207B0A202063';
wwv_flow_api.g_varchar2_table(1218) := '6F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7242472D2D3234207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7246472D2D3234207B0A2020636F6C6F723A20233434633335613B0A';
wwv_flow_api.g_varchar2_table(1219) := '7D0A2E752D436F6C6F7242472D2D3235207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7246472D2D3235207B0A2020636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7242472D2D32';
wwv_flow_api.g_varchar2_table(1220) := '36207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7246472D2D3236207B0A2020636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7242472D2D3237207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1221) := '642D636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7246472D2D3237207B0A2020636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7242472D2D3238207B0A20206261636B67726F756E642D636F6C6F723A20233531623465';
wwv_flow_api.g_varchar2_table(1222) := '313B0A7D0A2E752D436F6C6F7246472D2D3238207B0A2020636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7242472D2D3239207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F724647';
wwv_flow_api.g_varchar2_table(1223) := '2D2D3239207B0A2020636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7242472D2D3330207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E752D436F6C6F7246472D2D3330207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1224) := '20233466346463313B0A7D0A0A2E752D436F6C6F722D312D42472D2D747874207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666326435';
wwv_flow_api.g_varchar2_table(1225) := '353B0A7D0A2E752D436F6C6F722D312D42472D2D66696C6C207B0A202066696C6C3A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D6272207B0A20207374726F6B653A20236666326435353B0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1226) := '20236666326435353B0A7D0A2E752D436F6C6F722D312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1227) := '3B0A7D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1228) := '236666666666663B0A7D0A2E752D436F6C6F722D322D42472D2D747874207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B';
wwv_flow_api.g_varchar2_table(1229) := '0A7D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0A202066696C6C3A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6272207B0A20207374726F6B653A20233030376166663B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1230) := '3030376166663B0A7D0A2E752D436F6C6F722D322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(1231) := '7D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1232) := '66666666663B0A7D0A2E752D436F6C6F722D332D42472D2D747874207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D';
wwv_flow_api.g_varchar2_table(1233) := '0A2E752D436F6C6F722D332D42472D2D66696C6C207B0A202066696C6C3A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6272207B0A20207374726F6B653A20236666393530303B0A2020626F726465722D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1234) := '393530303B0A7D0A2E752D436F6C6F722D332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A';
wwv_flow_api.g_varchar2_table(1235) := '2E752D436F6C6F722D332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1236) := '6666663B0A7D0A2E752D436F6C6F722D342D42472D2D747874207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1237) := '752D436F6C6F722D342D42472D2D66696C6C207B0A202066696C6C3A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6272207B0A20207374726F6B653A20233463643936343B0A2020626F726465722D636F6C6F723A202334636439';
wwv_flow_api.g_varchar2_table(1238) := '36343B0A7D0A2E752D436F6C6F722D342D46472D2D747874207B0A2020636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233037316630623B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1239) := '2D436F6C6F722D342D46472D2D66696C6C207B0A202066696C6C3A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6272207B0A20207374726F6B653A20233037316630623B0A2020626F726465722D636F6C6F723A20233037316630';
wwv_flow_api.g_varchar2_table(1240) := '623B0A7D0A2E752D436F6C6F722D352D42472D2D747874207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1241) := '436F6C6F722D352D42472D2D66696C6C207B0A202066696C6C3A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6272207B0A20207374726F6B653A20233865386539333B0A2020626F726465722D636F6C6F723A2023386538653933';
wwv_flow_api.g_varchar2_table(1242) := '3B0A7D0A2E752D436F6C6F722D352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1243) := '6F6C6F722D352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1244) := '0A7D0A2E752D436F6C6F722D362D42472D2D747874207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1245) := '6C6F722D362D42472D2D66696C6C207B0A202066696C6C3A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6272207B0A20207374726F6B653A20233334616164633B0A2020626F726465722D636F6C6F723A20233334616164633B0A';
wwv_flow_api.g_varchar2_table(1246) := '7D0A2E752D436F6C6F722D362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1247) := '6F722D362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1248) := '0A2E752D436F6C6F722D372D42472D2D747874207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1249) := '722D372D42472D2D66696C6C207B0A202066696C6C3A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6272207B0A20207374726F6B653A20236666636330303B0A2020626F726465722D636F6C6F723A20236666636330303B0A7D0A';
wwv_flow_api.g_varchar2_table(1250) := '2E752D436F6C6F722D372D46472D2D747874207B0A2020636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1251) := '2D372D46472D2D66696C6C207B0A202066696C6C3A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6272207B0A20207374726F6B653A20233030303030303B0A2020626F726465722D636F6C6F723A20233030303030303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1252) := '752D436F6C6F722D382D42472D2D747874207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1253) := '382D42472D2D66696C6C207B0A202066696C6C3A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6272207B0A20207374726F6B653A20233561633866613B0A2020626F726465722D636F6C6F723A20233561633866613B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1254) := '2D436F6C6F722D382D46472D2D747874207B0A2020636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D38';
wwv_flow_api.g_varchar2_table(1255) := '2D46472D2D66696C6C207B0A202066696C6C3A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6272207B0A20207374726F6B653A20233032333935323B0A2020626F726465722D636F6C6F723A20233032333935323B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1256) := '436F6C6F722D392D42472D2D747874207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D';
wwv_flow_api.g_varchar2_table(1257) := '42472D2D66696C6C207B0A202066696C6C3A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6272207B0A20207374726F6B653A20236666336233303B0A2020626F726465722D636F6C6F723A20236666336233303B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1258) := '6F6C6F722D392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46';
wwv_flow_api.g_varchar2_table(1259) := '472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1260) := '6C6F722D31302D42472D2D747874207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D3130';
wwv_flow_api.g_varchar2_table(1261) := '2D42472D2D66696C6C207B0A202066696C6C3A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6272207B0A20207374726F6B653A20233538353664363B0A2020626F726465722D636F6C6F723A20233538353664363B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1262) := '2D436F6C6F722D31302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1263) := '2D31302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1264) := '0A2E752D436F6C6F722D31312D42472D2D747874207B0A2020636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236639303032663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1265) := '6C6F722D31312D42472D2D66696C6C207B0A202066696C6C3A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6272207B0A20207374726F6B653A20236639303032663B0A2020626F726465722D636F6C6F723A2023663930303266';
wwv_flow_api.g_varchar2_table(1266) := '3B0A7D0A2E752D436F6C6F722D31312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1267) := '2D436F6C6F722D31312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1268) := '6666663B0A7D0A2E752D436F6C6F722D31322D42472D2D747874207B0A2020636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030363263633B0A7D';
wwv_flow_api.g_varchar2_table(1269) := '0A2E752D436F6C6F722D31322D42472D2D66696C6C207B0A202066696C6C3A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6272207B0A20207374726F6B653A20233030363263633B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1270) := '3030363263633B0A7D0A2E752D436F6C6F722D31322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1271) := '3B0A7D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1272) := '3A20236666666666663B0A7D0A2E752D436F6C6F722D31332D42472D2D747874207B0A2020636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023636337';
wwv_flow_api.g_varchar2_table(1273) := '3730303B0A7D0A2E752D436F6C6F722D31332D42472D2D66696C6C207B0A202066696C6C3A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D6272207B0A20207374726F6B653A20236363373730303B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1274) := '6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1275) := '6666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1276) := '2D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31342D42472D2D747874207B0A2020636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1277) := '3A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0A202066696C6C3A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6272207B0A20207374726F6B653A20233261633834353B0A2020626F72';
wwv_flow_api.g_varchar2_table(1278) := '6465722D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D46472D2D747874207B0A2020636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6267207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1279) := '6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0A202066696C6C3A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6272207B0A20207374726F6B653A20233130343931393B0A2020';
wwv_flow_api.g_varchar2_table(1280) := '626F726465722D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31352D42472D2D747874207B0A2020636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6267207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1281) := '2D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D66696C6C207B0A202066696C6C3A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6272207B0A20207374726F6B653A20233734373437613B';
wwv_flow_api.g_varchar2_table(1282) := '0A2020626F726465722D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6267207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1283) := '756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6272207B0A20207374726F6B653A202366666666';
wwv_flow_api.g_varchar2_table(1284) := '66663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D42472D2D747874207B0A2020636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6267207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1285) := '67726F756E642D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D66696C6C207B0A202066696C6C3A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6272207B0A20207374726F6B653A202332';
wwv_flow_api.g_varchar2_table(1286) := '31386562643B0A2020626F726465722D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6267207B0A202062';
wwv_flow_api.g_varchar2_table(1287) := '61636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6272207B0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1288) := '20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31372D42472D2D747874207B0A2020636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6267207B0A';
wwv_flow_api.g_varchar2_table(1289) := '20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D66696C6C207B0A202066696C6C3A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6272207B0A20207374726F';
wwv_flow_api.g_varchar2_table(1290) := '6B653A20236363613330303B0A2020626F726465722D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D46472D2D747874207B0A2020636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6267';
wwv_flow_api.g_varchar2_table(1291) := '207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D66696C6C207B0A202066696C6C3A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6272207B0A202073';
wwv_flow_api.g_varchar2_table(1292) := '74726F6B653A20233161316131613B0A2020626F726465722D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31382D42472D2D747874207B0A2020636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D';
wwv_flow_api.g_varchar2_table(1293) := '2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D66696C6C207B0A202066696C6C3A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6272207B0A';
wwv_flow_api.g_varchar2_table(1294) := '20207374726F6B653A20233238623766393B0A2020626F726465722D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D46472D2D747874207B0A2020636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D';
wwv_flow_api.g_varchar2_table(1295) := '46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D66696C6C207B0A202066696C6C3A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6272';
wwv_flow_api.g_varchar2_table(1296) := '207B0A20207374726F6B653A20233034356338343B0A2020626F726465722D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31392D42472D2D747874207B0A2020636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1297) := '31392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D66696C6C207B0A202066696C6C3A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D';
wwv_flow_api.g_varchar2_table(1298) := '2D6272207B0A20207374726F6B653A20236663306430303B0A2020626F726465722D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1299) := '6F722D31392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31392D';
wwv_flow_api.g_varchar2_table(1300) := '46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D42472D2D747874207B0A2020636F6C6F723A20233333333163383B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1301) := '436F6C6F722D32302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D66696C6C207B0A202066696C6C3A20233333333163383B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1302) := '32302D42472D2D6272207B0A20207374726F6B653A20233333333163383B0A2020626F726465722D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A';
wwv_flow_api.g_varchar2_table(1303) := '2E752D436F6C6F722D32302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1304) := '6F722D32302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D42472D2D747874207B0A2020636F6C6F723A20236666393361383B';
wwv_flow_api.g_varchar2_table(1305) := '0A7D0A2E752D436F6C6F722D32312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D66696C6C207B0A202066696C6C3A20236666393361383B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1306) := '436F6C6F722D32312D42472D2D6272207B0A20207374726F6B653A20236666393361383B0A2020626F726465722D636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D46472D2D747874207B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(1307) := '66663B0A7D0A2E752D436F6C6F722D32312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A';
wwv_flow_api.g_varchar2_table(1308) := '2E752D436F6C6F722D32312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D42472D2D747874207B0A2020636F6C6F723A202336';
wwv_flow_api.g_varchar2_table(1309) := '36616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D66696C6C207B0A202066696C6C3A20233636616666663B';
wwv_flow_api.g_varchar2_table(1310) := '0A7D0A2E752D436F6C6F722D32322D42472D2D6272207B0A20207374726F6B653A20233636616666663B0A2020626F726465722D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D46472D2D747874207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1311) := '20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D66696C6C207B0A202066696C6C3A202366666666';
wwv_flow_api.g_varchar2_table(1312) := '66663B0A7D0A2E752D436F6C6F722D32322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D42472D2D747874207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1313) := '6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D66696C6C207B0A202066696C6C3A202366';
wwv_flow_api.g_varchar2_table(1314) := '66626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6272207B0A20207374726F6B653A20236666626636363B0A2020626F726465722D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D46472D2D747874207B0A2020';
wwv_flow_api.g_varchar2_table(1315) := '636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1316) := '20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32342D42472D2D747874207B';
wwv_flow_api.g_varchar2_table(1317) := '0A2020636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D66696C6C207B0A20206669';
wwv_flow_api.g_varchar2_table(1318) := '6C6C3A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6272207B0A20207374726F6B653A20236130656261643B0A2020626F726465722D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D46472D2D7478';
wwv_flow_api.g_varchar2_table(1319) := '74207B0A2020636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D66696C6C207B0A20';
wwv_flow_api.g_varchar2_table(1320) := '2066696C6C3A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6272207B0A20207374726F6B653A20233139373332383B0A2020626F726465722D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32352D42472D';
wwv_flow_api.g_varchar2_table(1321) := '2D747874207B0A2020636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D66696C6C20';
wwv_flow_api.g_varchar2_table(1322) := '7B0A202066696C6C3A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6272207B0A20207374726F6B653A20236332633263353B0A2020626F726465722D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D';
wwv_flow_api.g_varchar2_table(1323) := '46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6669';
wwv_flow_api.g_varchar2_table(1324) := '6C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1325) := '32362D42472D2D747874207B0A2020636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D';
wwv_flow_api.g_varchar2_table(1326) := '2D66696C6C207B0A202066696C6C3A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6272207B0A20207374726F6B653A20233862636565623B0A2020626F726465722D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1327) := '6F722D32362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D';
wwv_flow_api.g_varchar2_table(1328) := '46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1329) := '436F6C6F722D32372D42472D2D747874207B0A2020636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1330) := '32372D42472D2D66696C6C207B0A202066696C6C3A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6272207B0A20207374726F6B653A20236666653036363B0A2020626F726465722D636F6C6F723A20236666653036363B0A7D0A';
wwv_flow_api.g_varchar2_table(1331) := '2E752D436F6C6F722D32372D46472D2D747874207B0A2020636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1332) := '6F722D32372D46472D2D66696C6C207B0A202066696C6C3A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6272207B0A20207374726F6B653A20233333333333333B0A2020626F726465722D636F6C6F723A20233333333333333B';
wwv_flow_api.g_varchar2_table(1333) := '0A7D0A2E752D436F6C6F722D32382D42472D2D747874207B0A2020636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236264653966643B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1334) := '436F6C6F722D32382D42472D2D66696C6C207B0A202066696C6C3A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6272207B0A20207374726F6B653A20236264653966643B0A2020626F726465722D636F6C6F723A202362646539';
wwv_flow_api.g_varchar2_table(1335) := '66643B0A7D0A2E752D436F6C6F722D32382D46472D2D747874207B0A2020636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233035376562363B0A7D0A';
wwv_flow_api.g_varchar2_table(1336) := '2E752D436F6C6F722D32382D46472D2D66696C6C207B0A202066696C6C3A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6272207B0A20207374726F6B653A20233035376562363B0A2020626F726465722D636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(1337) := '35376562363B0A7D0A2E752D436F6C6F722D32392D42472D2D747874207B0A2020636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666396339363B';
wwv_flow_api.g_varchar2_table(1338) := '0A7D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0A202066696C6C3A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6272207B0A20207374726F6B653A20236666396339363B0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1339) := '20236666396339363B0A7D0A2E752D436F6C6F722D32392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(1340) := '66663B0A7D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1341) := '6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D42472D2D747874207B0A2020636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A202361';
wwv_flow_api.g_varchar2_table(1342) := '39613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0A202066696C6C3A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6272207B0A20207374726F6B653A20236139613865613B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1343) := '636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1344) := '20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F7264';
wwv_flow_api.g_varchar2_table(1345) := '65722D636F6C6F723A20236666666666663B0A7D0A2E752D666F6375736564207B0A2020626F782D736861646F773A2030203020302031707820236666326435352C2030203020317078203070782072676261283235352C2034352C2038352C20302E35';
wwv_flow_api.g_varchar2_table(1346) := '292021696D706F7274616E743B0A20206F75746C696E653A206E6F6E653B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(31829360130032786730)
,p_theme_id=>42
,p_file_name=>'31829215604625784413.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580622084620857739)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580622272035857740)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580622466586857740)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580623607189857742)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580623842788857742)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580624525930857743)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580624935685857743)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580625561341857744)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580626152408857744)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580626348683857744)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580627207812857745)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580628843749857746)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580630279991857748)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580633767209857751)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580633899918857752)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580634297078857752)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580634691976857752)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580635344047857753)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580635975334857755)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580636122011857755)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580637747653857756)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580638412996857757)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580638758320857758)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580639419897857759)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580639733233857759)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580640216207857760)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580640536417857760)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580640749726857760)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580641740826857761)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580643651354857763)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580644421299857764)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580645487787857764)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580646180305857765)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580646445307857765)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580647166072857765)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580647879002857766)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580650247191857768)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580651387315857769)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580652536119857772)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580653553388857796)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580653695185857796)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580653939276857796)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580654099051857796)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580654291208857797)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580654736136857797)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580655438907857797)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580655841828857798)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580656054053857799)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580656282711857799)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580656434624857799)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580656694107857799)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(89580657031345857799)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580621929805857738)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580622113402857739)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(89580622084620857739)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580622390000857740)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(89580622272035857740)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580622535422857740)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(89580622466586857740)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580622617940857740)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(89580622084620857739)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580622745312857741)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(89580622272035857740)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580622884884857741)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(89580622084620857739)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580622984066857741)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(89580622272035857740)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580623057052857741)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(89580622084620857739)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580623116446857741)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580621786043857736)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(89580622466586857740)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580623775001857742)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(89580623376930857742)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580623923783857742)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(89580623376930857742)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(89580623842788857742)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580624025072857742)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(89580623376930857742)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580624188311857742)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(89580623376930857742)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(89580623842788857742)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580624603847857743)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(89580624525930857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580624765726857743)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(89580624525930857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580624868017857743)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(89580624525930857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625010255857743)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625175226857744)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625274848857744)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625368416857744)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(89580624525930857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625438690857744)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625680059857744)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625743416857744)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625814927857744)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580625896485857744)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626071428857744)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626222676857744)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(89580626152408857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626487035857744)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(89580626348683857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626550201857745)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(89580626152408857744)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626656215857745)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626768458857745)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626829999857745)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580626915184857745)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(89580626348683857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580627089263857745)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580627109325857745)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580627295402857745)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(89580627207812857745)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580627477341857745)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(89580627207812857745)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580627538953857745)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580624217163857742)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580627896522857746)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628031068857746)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628177838857746)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628273419857746)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628329808857746)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628404051857746)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628505970857746)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628685162857746)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628764946857746)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628915679857746)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(89580628843749857746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580628998298857747)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(89580628843749857746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580629164047857747)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(89580626348683857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580629209642857747)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580629351330857747)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580629424935857748)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580629575167857748)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(89580626348683857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580629615691857748)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580627637157857745)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580630105121857748)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580629924679857748)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580630378447857748)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580629924679857748)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(89580630279991857748)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580630451074857748)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580629924679857748)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(89580630279991857748)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580630537423857748)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580629924679857748)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580630651269857748)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580629924679857748)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580630747418857748)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580629924679857748)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(89580630279991857748)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580630943330857749)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580630800163857748)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580631014405857749)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580630800163857748)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580631601956857749)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580631730550857749)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580631823810857749)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580631977815857749)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(89580624935685857743)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632053448857749)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632091578857750)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632248653857750)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632321057857750)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632460783857751)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(89580625561341857744)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632512582857751)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(89580626152408857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632685432857751)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(89580626348683857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632771099857751)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(89580626152408857744)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632847582857751)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580632973439857751)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580633047751857751)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580633135243857751)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(89580626348683857744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580633220056857751)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580633303520857751)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580631336710857749)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(89580623607189857742)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580633877560857752)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580633424599857751)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(89580633767209857751)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580634061692857752)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580633424599857751)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(89580633899918857752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580634147335857752)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580633424599857751)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580634253557857752)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580633424599857751)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(89580633899918857752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580634486734857752)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580633424599857751)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(89580634297078857752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580634517348857752)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580633424599857751)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(89580634297078857752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580634868076857752)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(89580634635457857752)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(89580634691976857752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580634919103857752)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(89580634635457857752)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580635083315857753)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(89580634635457857752)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(89580634691976857752)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580635425615857753)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(89580635158953857753)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(89580635344047857753)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580635577298857753)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580635158953857753)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(89580635344047857753)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580635620455857753)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(89580635158953857753)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636084803857755)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(89580635975334857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636288496857755)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636379075857755)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(89580635975334857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636402219857755)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636510029857755)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(89580635975334857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636621932857755)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636709253857756)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636791511857756)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(89580635975334857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580636954958857756)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(89580635975334857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637010147857756)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637091463857756)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637250441857756)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637383984857756)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637432035857756)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580635798826857755)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637603965857756)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637811444857756)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(89580637747653857756)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580637897518857757)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638023462857757)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(89580637747653857756)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638143393857757)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638255584857757)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(89580637747653857756)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638366280857757)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638564007857757)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(89580638412996857757)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638635260857757)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(89580638412996857757)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638886518857758)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(89580638758320857758)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580638990051857758)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(89580638758320857758)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580639086074857758)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(89580638412996857757)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580639178118857758)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580639232412857758)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(89580637747653857756)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580639353549857759)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580639582849857759)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580637569359857756)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(89580639419897857759)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580639878483857759)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580639613469857759)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(89580639733233857759)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580639958636857759)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580639613469857759)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(89580639733233857759)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580640299795857760)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(89580640216207857760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580640426522857760)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(89580640216207857760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580640686410857760)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(89580640536417857760)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580640802286857760)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(89580640749726857760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580640932165857760)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(89580640749726857760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580641055472857760)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(89580640749726857760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580641124148857760)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(89580640536417857760)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580641262482857761)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580641321176857761)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580640167472857760)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(89580640749726857760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580641541337857761)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(89580641414584857761)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(89580638412996857757)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580641808416857761)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580641947574857761)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642034175857761)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642175422857761)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642217486857761)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642376031857761)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642447023857761)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642556061857762)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(89580641597352857761)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642758752857762)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642851869857762)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580642985688857762)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643062030857762)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643179227857762)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(89580636122011857755)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643279689857762)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643315045857762)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643453365857762)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(89580642614249857762)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(89580641740826857761)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643734697857763)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643876537857763)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580643984325857763)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644085390857764)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644120187857764)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644222097857764)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644322608857764)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644579149857764)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(89580644421299857764)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644638666857764)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(89580644421299857764)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644786176857764)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644866792857764)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(89580644421299857764)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580644892553857764)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645067711857764)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(89580644421299857764)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645146034857764)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(89580643550352857762)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(89580644421299857764)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645366153857764)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645494186857764)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(89580645487787857764)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645673211857765)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645722125857765)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(89580645487787857764)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645875568857765)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580645962991857765)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(89580645487787857764)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646019788857765)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646259170857765)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(89580646180305857765)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646333339857765)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(89580646180305857765)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646539304857765)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(89580646445307857765)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646670543857765)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(89580646445307857765)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646773273857765)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(89580646180305857765)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646848350857765)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580646916223857765)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(89580645487787857764)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580647032932857765)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580647224277857766)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580645240597857764)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(89580647166072857765)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580647449495857766)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580647294983857766)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(89580646180305857765)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580647583164857766)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580647294983857766)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580647642562857766)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580647294983857766)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580647778040857766)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580647294983857766)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580647915954857766)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580647294983857766)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(89580647879002857766)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648032353857766)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580647294983857766)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(89580647879002857766)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648263073857766)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648322873857766)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648394786857766)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648515350857766)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648591683857766)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648742311857766)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648822187857767)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580648903143857767)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(89580648117028857766)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580649134511857767)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(89580649036610857767)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580649243688857767)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580649036610857767)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580649301148857767)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580649036610857767)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580649465317857767)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580649036610857767)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580649984358857768)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580649883426857768)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(89580646445307857765)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580649999072857768)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(89580649883426857768)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(89580643651354857763)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580650171097857768)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580649883426857768)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(89580646445307857765)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580650318521857768)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580649883426857768)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(89580650247191857768)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580650427162857768)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580649883426857768)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(89580646180305857765)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580650586724857768)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580649883426857768)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(89580646180305857765)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580650594134857768)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(89580649883426857768)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(89580650247191857768)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580650878619857769)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(89580650730902857768)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580650918430857769)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(89580650730902857768)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580651001514857769)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(89580650730902857768)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580651113603857769)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(89580650730902857768)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580651485529857769)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(89580651250385857769)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(89580651387315857769)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580651556085857769)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(89580651250385857769)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(89580651387315857769)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580651640327857769)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(89580651250385857769)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(89580651387315857769)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580652628281857772)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(89580652434233857772)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(89580652536119857772)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580652781321857772)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(89580652434233857772)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(89580652536119857772)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580653596314857796)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(89580653553388857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580653801649857796)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(89580653695185857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580654054969857796)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(89580653939276857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580654210199857796)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(89580654099051857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580654393054857797)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(89580654291208857797)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580654548484857797)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(89580653695185857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580654614054857797)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(89580653939276857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580654873787857797)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(89580654736136857797)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580654933650857797)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(89580654736136857797)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655090137857797)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(89580654736136857797)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655183404857797)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(89580653553388857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655220501857797)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(89580654291208857797)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655294090857797)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(89580654099051857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655546427857797)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(89580655438907857797)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655633709857798)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(89580653553388857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655790429857798)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(89580653553388857796)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580655953349857798)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(89580655841828857798)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580656155622857799)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(89580656054053857799)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580656342112857799)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(89580656282711857799)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580656550350857799)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(89580656434624857799)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580656604206857799)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(89580656434624857799)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580656829469857799)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(89580656694107857799)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580656902327857799)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(89580656054053857799)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580657185489857800)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(89580657031345857799)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580657262653857800)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(89580657320574857800)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(89580657031345857799)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(89608875690446694271)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(89580657756612857805)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(89580657570936857800)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:18:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(89580615173552857727)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(89580649773142857768)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(89580657427572857800)
,p_nav_bar_list_template_id=>wwv_flow_api.id(89580649653257857767)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185527'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729042328095173124)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(60238767178482299773)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_PERSONJSON''',
'',
'--select				',
'--jt1.first_name	first_name,			',
'--jt2.last_name	last_name',
'--from	apex_collections	t,',
'--json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'--json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2',
'--where	t.collection_name	=	''P2_PERSONJSON''	',
'',
'--select				',
'--jt2.sal	sal',
'--from	apex_collections	t,',
'--json_table(t.clob001,	''$.SAL[*]''	COLUMNS	rid	for	ordinality,	sal	number	path	''$'')	jt2',
'--where	t.collection_name	=	''P2_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60239449796149450324)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60239400545292444453)
,p_plug_name=>'Person'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7',
'where	t.collection_name	=	''P2_PERSONJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(60239400659594444453)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29830773734913338901
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60239400975553444456)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60239401332724444457)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60239993585826166169)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60239994316045166174)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60240004965137166176)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60240005625600166177)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60240006386603166177)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'US Citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(60239402200339444933)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'298307753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60238758427378299761)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60239400545292444453)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60238758825786299762)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042422815173125)
,p_name=>'P2_LASTNAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042599844173126)
,p_name=>'P2_DB_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042645885173127)
,p_name=>'P2_USER_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042734883173128)
,p_name=>'P2_PASS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042819505173129)
,p_name=>'P2_MODE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042912921173130)
,p_name=>'P2_MODEL_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729043064465173131)
,p_name=>'P2_RETURNDIMENSIONS_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729043161543173132)
,p_name=>'P2_RETURNFOR_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729043245706173133)
,p_name=>'P2_QUERY_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31729042328095173124)
,p_item_default=>'"from person retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60238759251690299762)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'59172036190322391033:59172036377331391039'
,p_attribute_01=>wwv_flow_api.id(89580663302012496591)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PERSONJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Employee Create'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428184157'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30408950750276166970)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30408951165544166972)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(30408951566632166974)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408952395497166978)
,p_name=>'P3_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'OracleNoSQL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408953146245166982)
,p_name=>'P3_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'WDBE3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408953959336166983)
,p_name=>'P3_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'localhost:7071'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408954757934166984)
,p_name=>'P3_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'native_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408955549674166985)
,p_name=>'P3_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'E3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408956345644166985)
,p_name=>'P3_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408957148916166986)
,p_name=>'P3_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'SIM_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408957923950166987)
,p_name=>'P3_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Employee ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408958717987166988)
,p_name=>'P3_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408959562956166988)
,p_name=>'P3_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Salary Exception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408960377098166991)
,p_name=>'P3_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Person ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408961129833166992)
,p_name=>'P3_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408961903395166993)
,p_name=>'P3_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408962730062166994)
,p_name=>'P3_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Home Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408963541015166994)
,p_name=>'P3_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408964315932166996)
,p_name=>'P3_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'Home Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408965151496166997)
,p_name=>'P3_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_prompt=>'US Citizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30408965900637166998)
,p_name=>'P3_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(30408950750276166970)
,p_source=>'''insert employee(employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := '''
||'homephone'', us-citizen := ''uscitizen'');'''
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30408951925827166975)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'60242866640965832062:60242866883776832066'
,p_attribute_01=>wwv_flow_api.id(60242866883776832066)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P3_EMPLOYEE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Employee Table'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185546'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31729040403641173105)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(60375291656150379257)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P5_EMPLOYEEJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60375292079166379258)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60375292499909379261)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P5_EMPLOYEEJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(60375292882222379264)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29966665957541273712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375292975939379267)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375293332376379269)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375293777508379272)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375294194467379273)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375294565281379274)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375294945708379275)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375295358217379276)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'US Citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375295724936379277)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375296144058379278)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(60375296607251379279)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(60375296953792379280)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'299666701'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60375297729885379284)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60375292499909379261)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60375305865892379297)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729040506273173106)
,p_name=>'P5_DB_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729040610548173107)
,p_name=>'P5_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729040755900173108)
,p_name=>'P5_PASS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729040881613173109)
,p_name=>'P5_MODE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729040995597173110)
,p_name=>'P5_MODEL_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041025124173111)
,p_name=>'P5_RETURNDIMENSIONS_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041125512173112)
,p_name=>'P5_RETURNFOR_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041261602173113)
,p_name=>'P5_EMPLOYEEID_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041327582173114)
,p_name=>'P5_SALARY_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041493433173115)
,p_name=>'P5_SALARYEXCEPTION_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041592685173116)
,p_name=>'P5_PERSONID_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041614521173117)
,p_name=>'P5_FIRSTNAME_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041755776173118)
,p_name=>'P5_LASTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041858085173119)
,p_name=>'P5_HOMEADDRESS_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729041900844173120)
,p_name=>'P5_ZIPCODE_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042004355173121)
,p_name=>'P5_HOMEPHONE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042190525173122)
,p_name=>'P5_USCITIZEN_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729042209188173123)
,p_name=>'P5_QUERY_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31729040403641173105)
,p_item_default=>'"from employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(60375298205361379287)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(60242866883776832066)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Department Table New'
,p_page_mode=>'NORMAL'
,p_step_title=>'Department Table New'
,p_step_sub_title=>'Department Table New'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428182118'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31839558898721381355)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P8_DEPARTMENTJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31839559231674381357)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31839559653934381360)
,p_plug_name=>'Departments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select		',
'jt1.dept_no dept_no,',
'jt2.dept_name dept_name',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.dept_no[*]'' COLUMNS rid for ordinality, dept_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt2',
'where	t.collection_name	=	''P8_DEPARTMENTJSON'' and ',
'jt1.rid = jt2.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31839560042590381362)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31839560042590381362
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31532560741732472938)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Dept no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31532560880898472939)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Dept name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31839564192386381379)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318395642'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'DEPT_NO:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31839565460554381384)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31839564686306381381)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31839559653934381360)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31839590796657381409)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729044476225173145)
,p_name=>'P8_DEPARTMENT_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31729044538847173146)
,p_name=>'P8_NEW'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839565829958381384)
,p_name=>'P8_DB_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839566267547381386)
,p_name=>'P8_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839566661003381387)
,p_name=>'P8_PASS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839567041649381388)
,p_name=>'P8_MODE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839567480802381388)
,p_name=>'P8_MODEL_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839567845621381389)
,p_name=>'P8_RETURNDIMENSIONS_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839578248046381389)
,p_name=>'P8_RETURNFOR_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839578677132381390)
,p_name=>'P8_EMPLOYEEID_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839579003220381390)
,p_name=>'P8_SALARY_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839579489453381390)
,p_name=>'P8_SALARYEXCEPTION_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839579802567381391)
,p_name=>'P8_PERSONID_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839580232836381392)
,p_name=>'P8_FIRSTNAME_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839580615872381392)
,p_name=>'P8_LASTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839581087740381392)
,p_name=>'P8_HOMEADDRESS_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839581480561381393)
,p_name=>'P8_ZIPCODE_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839581898025381393)
,p_name=>'P8_HOMEPHONE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839582215369381394)
,p_name=>'P8_USCITIZEN_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839582684920381394)
,p_name=>'P8_QUERY_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31839565460554381384)
,p_item_default=>'"from department retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31839583012693381400)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31836388835259700304)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P8_DEPARTMENTJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Manager Table New'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager Table New'
,p_step_sub_title=>'Manager Table New'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185624'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31839689415096391922)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P9_MANAGERJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31839689866075391923)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31839690188098391926)
,p_plug_name=>'Managers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception,',
'jt11.bonus bonus',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where	t.collection_name	=	''P9_MANAGERJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31839690506620391932)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31839690506620391932
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839690634997391933)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839691014230391934)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839691411577391935)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839691839272391936)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839692233754391937)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839692602400391938)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839693033148391939)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'US Citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839693481357391940)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839693837128391941)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31839694219013391942)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31532560626243472937)
,p_db_column_name=>'BONUS'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31839694634381391943)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318396947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31839695962480391947)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31839695118485391945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31839690188098391926)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31839711237507391971)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31532560538590472936)
,p_name=>'P9_BONUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839696345469391948)
,p_name=>'P9_DB_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839696793074391949)
,p_name=>'P9_USER_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839697182194391950)
,p_name=>'P9_PASS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839697568070391950)
,p_name=>'P9_MODE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839697977617391951)
,p_name=>'P9_MODEL_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839698361005391951)
,p_name=>'P9_RETURNDIMENSIONS_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839698762004391952)
,p_name=>'P9_RETURNFOR_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839699129550391952)
,p_name=>'P9_EMPLOYEEID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839699550093391953)
,p_name=>'P9_SALARY_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839699922841391955)
,p_name=>'P9_SALARYEXCEPTION_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839700332444391955)
,p_name=>'P9_PERSONID_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839700705648391956)
,p_name=>'P9_FIRSTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839701166982391956)
,p_name=>'P9_LASTNAME_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839701541252391957)
,p_name=>'P9_HOMEADDRESS_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839701937694391957)
,p_name=>'P9_ZIPCODE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839702390780391957)
,p_name=>'P9_HOMEPHONE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839702751236391958)
,p_name=>'P9_USCITIZEN_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839703138923391958)
,p_name=>'P9_QUERY_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31839695962480391947)
,p_item_default=>'"from manager retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31839703503445391961)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31837279321104771379)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_MANAGERJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Project Table New'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Table New'
,p_step_sub_title=>'Project Table New'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428005931'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31841728966826651343)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P11_PROJECTJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31841729312800651344)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31841729743590651345)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select		',
'jt1.project_no project_no,',
'jt2.project_title project_title',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2',
'where	t.collection_name	=	''P11_PROJECTJSON'' and ',
'jt1.rid = jt2.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31841730173250651346)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31841730173250651346
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31532560977231472940)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'M'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31532561001239472941)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31841731046547651350)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318417311'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31841732364079651354)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31841731552851651353)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31841729743590651345)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31841731969690651354)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31841729743590651345)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Create Project'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31841762477626651380)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31532561181845472942)
,p_name=>'P11_PROJECT_TITLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31532561256392472943)
,p_name=>'P11_PROJECT_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841732795639651355)
,p_name=>'P11_DB_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841733140699651358)
,p_name=>'P11_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841733551960651359)
,p_name=>'P11_PASS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841733949700651359)
,p_name=>'P11_MODE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841734318174651360)
,p_name=>'P11_MODEL_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841734744329651360)
,p_name=>'P11_RETURNDIMENSIONS_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841735172308651361)
,p_name=>'P11_RETURNFOR_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841735548619651361)
,p_name=>'P11_EMPLOYEEID_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841735938475651362)
,p_name=>'P11_SALARYEXCEPTION_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841736315594651362)
,p_name=>'P11_PERSONID_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841736766059651363)
,p_name=>'P11_FIRSTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841737171460651363)
,p_name=>'P11_LASTNAME_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841737537713651364)
,p_name=>'P11_HOMEADDRESS_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841737937933651364)
,p_name=>'P11_ZIPCODE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841748370269651365)
,p_name=>'P11_SALARY_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841748780059651365)
,p_name=>'P11_HOMEPHONE_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841749118328651366)
,p_name=>'P11_USCITIZEN_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841749522872651366)
,p_name=>'P11_QUERY_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_item_default=>'"from project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841749994692651367)
,p_name=>'P11_NEW'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31841750351105651369)
,p_name=>'P11_DEPARTMENT_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(31841732364079651354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841750708235651370)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31836909789090751989)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P11_PROJECTJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Department Create'
,p_page_mode=>'NORMAL'
,p_step_title=>'Department Create'
,p_step_sub_title=>'Department Create'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428180237'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31848203388315946918)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31848203785648946919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31848269888707946938)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848204160584946920)
,p_name=>'P12_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'OracleNoSQL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848204559311946921)
,p_name=>'P12_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'WDBE3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848204931407946921)
,p_name=>'P12_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'localhost:7071'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848205375946946922)
,p_name=>'P12_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'native_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848205729934946922)
,p_name=>'P12_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'E3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848206109018946923)
,p_name=>'P12_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848206578762946923)
,p_name=>'P12_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'SIM_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848206964359946923)
,p_name=>'P12_DEPT_NO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_prompt=>'Department Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848207387423946924)
,p_name=>'P12_DEPT_NAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_prompt=>'Department Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848260986596946929)
,p_name=>'P12_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31848203388315946918)
,p_source=>'''INSERT Department( dept-no:= ''deptno'' ,dept-name := ''deptname'');'''
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31848262119634946931)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31836388835259700304)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P12_EMPLOYEE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Manager Create'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee Create'
,p_step_sub_title=>'Employee Create'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428180259'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31848271513132949590)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31848271939423949590)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31848288050442949609)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842044089434329423)
,p_name=>'P14_BONUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848272307675949591)
,p_name=>'P14_DB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'OracleNoSQL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848272719218949592)
,p_name=>'P14_USER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'WDBE3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848273130277949592)
,p_name=>'P14_PASS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'localhost:7071'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848273561882949593)
,p_name=>'P14_MODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'native_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848273922145949593)
,p_name=>'P14_MODEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'E3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848274395583949593)
,p_name=>'P14_RETURNDIMENSIONS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848274797582949595)
,p_name=>'P14_RETURNFOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'SIM_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848275114563949595)
,p_name=>'P14_EMPLOYEEID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848275509179949596)
,p_name=>'P14_SALARY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848275909547949596)
,p_name=>'P14_SALARYEXCEPTION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848276362912949597)
,p_name=>'P14_PERSONID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848276740665949597)
,p_name=>'P14_FIRSTNAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848277127729949598)
,p_name=>'P14_LASTNAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848277583436949598)
,p_name=>'P14_HOMEADDRESS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848277918441949598)
,p_name=>'P14_ZIPCODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848278347779949599)
,p_name=>'P14_HOMEPHONE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848278739684949600)
,p_name=>'P14_USCITIZEN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848279190068949600)
,p_name=>'P14_QUERY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31848271513132949590)
,p_source=>'''INSERT Manager ( person-id := ''personid'' , first-name := ''firstname'' , last-name := ''lastname'' , home_address:= ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'' , us-citizen := ''uscitizen'' ,employee-id:= ''employeeid'',salary:= ''salary'' '
||', salary-exception := ''salaryexception'', bonus:= ''bonus'' );'''
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31848280362811949602)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31837279321104771379)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P14_EMPLOYEE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Project Create'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Create'
,p_step_sub_title=>'Project Create'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428180319'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31848890931190694924)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31848891348663694925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31848915418922694949)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842045135085329434)
,p_name=>'P16_PROJECTNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_prompt=>'Project No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842045218082329435)
,p_name=>'P16_PROJECTTITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_prompt=>'Project Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848892186759694926)
,p_name=>'P16_DB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'OracleNoSQL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848892557121694926)
,p_name=>'P16_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'WDBE3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848892966088694927)
,p_name=>'P16_PASS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'localhost:7071'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848893327249694927)
,p_name=>'P16_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'native_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848893761815694928)
,p_name=>'P16_MODEL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'E3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848894188398694928)
,p_name=>'P16_RETURNDIMENSIONS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848894593521694929)
,p_name=>'P16_RETURNFOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'SIM_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848898984915694934)
,p_name=>'P16_QUERY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(31848890931190694924)
,p_source=>'''INSERT Project( project-no:= ''projectno'' ,project-title := ''projecttitle'');'''
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31848900150843694936)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31836909789090751989)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P16_PROJECT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Log In'
,p_page_mode=>'NORMAL'
,p_step_title=>'Log In'
,p_step_sub_title=>'Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428164721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31849039568019101854)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--leftLabels:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(89580631154198857749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P18_PERSON_LIST'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31849039964831101855)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31849039568019101854)
,p_button_name=>'Login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log in'
,p_button_position=>'BODY'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31849041280731101858)
,p_branch_name=>'redirect'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31849039964831101855)
,p_branch_sequence=>10
,p_branch_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_branch_condition=>'P18_PERSON_LIST'
,p_branch_condition_text=>'President:Manager:Interim Manager:Employee:Project Employee'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31849040328627101856)
,p_name=>'P18_PERSON_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31849039568019101854)
,p_prompt=>'Type of Person'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Person,Employee,Manager,Interim Manager,President,Previous Employee,Project Employee'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(89580652085028857770)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31849040728664101856)
,p_name=>'P18_PERSON'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31849039568019101854)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'View Previous Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Previous Projects'
,p_step_sub_title=>'View Previous Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185321'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31865836900602855179)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P19_PREVIOUSPROJECT'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31865837303433855182)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31865837707519855186)
,p_plug_name=>'Previous Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_name	project_name,			',
'jt3.end_date_month	end_date_month,			',
'jt4.end_date_day	end_date_day,			',
'jt5.end_date_year	end_date_year,			',
'jt6.est_person_hours	est_person_hours',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_name[*]'' COLUMNS rid for ordinality, project_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.end_date_month[*]'' COLUMNS rid for ordinality, end_date_month varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.end_date_day[*]'' COLUMNS rid for ordinality, end_date_day varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.end_date_year[*]'' COLUMNS rid for ordinality, end_date_year varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.est_person_hours[*]'' COLUMNS rid for ordinality, est_person_hours varchar path ''$'') jt6',
'where	t.collection_name	=	''P19_PREVIOUSPROJECT''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31865838122906855186)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31865838122906855186
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870165502252309248)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'AE'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870165606045309249)
,p_db_column_name=>'PROJECT_NAME'
,p_display_order=>20
,p_column_identifier=>'AF'
,p_column_label=>'Project name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870165770533309250)
,p_db_column_name=>'END_DATE_MONTH'
,p_display_order=>30
,p_column_identifier=>'AG'
,p_column_label=>'End date month'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31911432047635794501)
,p_db_column_name=>'END_DATE_DAY'
,p_display_order=>40
,p_column_identifier=>'AH'
,p_column_label=>'End date day'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31911432165204794502)
,p_db_column_name=>'END_DATE_YEAR'
,p_display_order=>50
,p_column_identifier=>'AI'
,p_column_label=>'End date year'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31911432223271794503)
,p_db_column_name=>'EST_PERSON_HOURS'
,p_display_order=>60
,p_column_identifier=>'AJ'
,p_column_label=>'Est person hours'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31865838917246855191)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318658390'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_NAME:END_DATE_MONTH:END_DATE_DAY:END_DATE_YEAR:EST_PERSON_HOURS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31865840254204855194)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31865839481452855193)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31865837707519855186)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31865865111837855227)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848255358217575527)
,p_name=>'P19_ENDDATEMONTH'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848255417339575528)
,p_name=>'P19_ESTPERSONHOURS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31848255511312575529)
,p_name=>'P19_ENDDATEYEAR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865840680568855195)
,p_name=>'P19_DB_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865841053910855197)
,p_name=>'P19_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865841466073855197)
,p_name=>'P19_PASS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865841842729855198)
,p_name=>'P19_PROJECT_TITLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865842232240855198)
,p_name=>'P19_MODE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865842619239855198)
,p_name=>'P19_PROJECT_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865843029535855199)
,p_name=>'P19_MODEL_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865843441364855199)
,p_name=>'P19_RETURNDIMENSIONS_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865843837705855200)
,p_name=>'P19_RETURNFOR_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865844239799855200)
,p_name=>'P19_EMPLOYEEID_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865844685558855200)
,p_name=>'P19_SALARYEXCEPTION_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865845032381855201)
,p_name=>'P19_PERSONID_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865845409573855201)
,p_name=>'P19_FIRSTNAME_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865845862750855202)
,p_name=>'P19_LASTNAME_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865846215349855203)
,p_name=>'P19_HOMEADDRESS_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865846632670855203)
,p_name=>'P19_ZIPCODE_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865847002286855204)
,p_name=>'P19_SALARY_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865847463910855204)
,p_name=>'P19_HOMEPHONE_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865847816752855204)
,p_name=>'P19_USCITIZEN_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865848253252855205)
,p_name=>'P19_QUERY_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_item_default=>'"from previous-project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865848633045855205)
,p_name=>'P19_ENDDATEDAY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865849096227855206)
,p_name=>'P19_DEPARTMENT_NAME'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(31865840254204855194)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31865849485760855210)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31837979536342842098)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P19_PREVIOUSPROJECT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'View Current Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Current Projects'
,p_step_sub_title=>'View Current Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185435'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31868348357949106389)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P20_CURRENTPROJECTJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31868348722853106392)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31868349131723106394)
,p_plug_name=>'Current Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select		',
'jt1.project_no project_no,',
'jt2.project_title project_title,',
'jt3.project_active project_active',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar path ''$'') jt3',
'where	t.collection_name	=	''P20_CURRENTPROJECTJSON'' and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31868349547799106395)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31868349547799106395
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868349666271106398)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'M'
,p_column_label=>'Project Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868350006964106398)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868536178860495801)
,p_db_column_name=>'PROJECT_ACTIVE'
,p_display_order=>30
,p_column_identifier=>'O'
,p_column_label=>'Project Active'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31868350475088106399)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318683505'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE:PROJECT_ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31868351728218106404)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31868350950014106402)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31868349131723106394)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31868376759818106437)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868352113832106407)
,p_name=>'P20_DB_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868352621487106409)
,p_name=>'P20_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868353005258106409)
,p_name=>'P20_PASS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868353477361106410)
,p_name=>'P20_PROJECT_TITLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868353832209106410)
,p_name=>'P20_MODE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868354232162106411)
,p_name=>'P20_PROJECT_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868354652453106411)
,p_name=>'P20_MODEL_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868355068222106411)
,p_name=>'P20_RETURNDIMENSIONS_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868355477977106412)
,p_name=>'P20_RETURNFOR_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868355882341106413)
,p_name=>'P20_EMPLOYEEID_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868356296642106414)
,p_name=>'P20_SALARYEXCEPTION_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868356647501106414)
,p_name=>'P20_PERSONID_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868357055284106415)
,p_name=>'P20_FIRSTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868357461930106415)
,p_name=>'P20_LASTNAME_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868357881247106416)
,p_name=>'P20_HOMEADDRESS_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868358255899106416)
,p_name=>'P20_ZIPCODE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868358638764106416)
,p_name=>'P20_SALARY_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868359031678106417)
,p_name=>'P20_HOMEPHONE_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868359480455106417)
,p_name=>'P20_USCITIZEN_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868359857728106417)
,p_name=>'P20_QUERY_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_item_default=>'"from current-project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868360214595106418)
,p_name=>'P20_PROJECT_ACTIVE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868360680708106419)
,p_name=>'P20_DEPARTMENT_NAME'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(31868351728218106404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31868361068522106422)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31837431757932172314)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P20_CURRENTPROJECTJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'View President'
,p_page_mode=>'NORMAL'
,p_step_title=>'View President'
,p_step_sub_title=>'View President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185722'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31869167746908192033)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P21_PRESIDENTJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31869168194180192035)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31869168526361192036)
,p_plug_name=>'Presidents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception,',
'jt11.bonus bonus',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where	t.collection_name	=	''P21_PRESIDENTJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31869168971197192037)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31869168971197192037
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869169070337192038)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869169367586192039)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869169729857192039)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869170171378192040)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869170551674192041)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869170957813192042)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869171362177192042)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'US Citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869171702671192043)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869172134986192044)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869172580134192044)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869172978585192045)
,p_db_column_name=>'BONUS'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31869173350901192046)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318691734'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31869174658851192048)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31869173897505192047)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31869168526361192036)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31869197959461192073)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869175040257192048)
,p_name=>'P21_BONUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869175456006192049)
,p_name=>'P21_DB_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869175874841192050)
,p_name=>'P21_USER_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869176287445192050)
,p_name=>'P21_PASS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869176639384192050)
,p_name=>'P21_MODE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869177044301192051)
,p_name=>'P21_MODEL_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869177438913192052)
,p_name=>'P21_RETURNDIMENSIONS_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869177804354192053)
,p_name=>'P21_RETURNFOR_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869178292950192053)
,p_name=>'P21_EMPLOYEEID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869178614649192054)
,p_name=>'P21_SALARY_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869179032505192054)
,p_name=>'P21_SALARYEXCEPTION_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869179443940192054)
,p_name=>'P21_PERSONID_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869179833131192055)
,p_name=>'P21_FIRSTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869180296764192055)
,p_name=>'P21_LASTNAME_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869180679857192056)
,p_name=>'P21_HOMEADDRESS_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869181052220192058)
,p_name=>'P21_ZIPCODE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869181406600192058)
,p_name=>'P21_HOMEPHONE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869181877243192058)
,p_name=>'P21_USCITIZEN_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869182206665192059)
,p_name=>'P21_QUERY_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31869174658851192048)
,p_item_default=>'"from president retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31869182696478192060)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31837653458560186587)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P21_PRESIDENTJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'View Project Employees'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Project Employees'
,p_step_sub_title=>'View Project Employees'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185900'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31869766825461645793)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P22_PROJECTEMPLOYEEJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31869767206893645796)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31869767615829645797)
,p_plug_name=>'Project Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P22_PROJECTEMPLOYEEJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31869848015025645802)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31869848015025645802
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869848160243645803)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869848564837645805)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869848915849645810)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869849323990645812)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869849776519645813)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869850105603645814)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869850587359645815)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'US Citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869850948518645816)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869851316385645817)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31869851713025645818)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31869852138872645819)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318698522'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31869853485169645823)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31869852646658645821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31869767615829645797)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31869868685132645849)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869853865937645823)
,p_name=>'P22_DB_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869854224409645824)
,p_name=>'P22_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869854612014645824)
,p_name=>'P22_PASS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869855096933645825)
,p_name=>'P22_MODE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869855489423645825)
,p_name=>'P22_MODEL_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869855832691645826)
,p_name=>'P22_RETURNDIMENSIONS_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869856264479645826)
,p_name=>'P22_RETURNFOR_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869856622760645826)
,p_name=>'P22_EMPLOYEEID_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869857028636645827)
,p_name=>'P22_SALARY_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869857410588645827)
,p_name=>'P22_SALARYEXCEPTION_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869857830102645828)
,p_name=>'P22_PERSONID_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869858139856645828)
,p_name=>'P22_FIRSTNAME_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869858548163645829)
,p_name=>'P22_LASTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869858910068645829)
,p_name=>'P22_HOMEADDRESS_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869859394110645829)
,p_name=>'P22_ZIPCODE_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869859741244645830)
,p_name=>'P22_HOMEPHONE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869860125297645830)
,p_name=>'P22_USCITIZEN_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869860504183645831)
,p_name=>'P22_QUERY_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31869853485169645823)
,p_item_default=>'"from project-employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31869860939308645838)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31836616976198101731)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P22_PROJECTEMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'View Interim Managers'
,p_page_mode=>'NORMAL'
,p_step_title=>'View Interim Managers'
,p_step_sub_title=>'View Interim Managers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428185918'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31871617758248820495)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(89580631336710857749)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P23_INTERIMMANAGERJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(89580640167472857760)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31871658120946820496)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31871658546387820497)
,p_plug_name=>'Interim Managers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89580630800163857748)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception,',
'jt11.bonus bonus',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where	t.collection_name	=	''P23_INTERIMMANAGERJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31871658909239820501)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31871658909239820501
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871659049278820502)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871659346844820503)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871659791795820504)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871660181350820505)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871660587582820506)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871660938089820507)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871661345705820508)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'US Citizen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871661791545820508)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871662112336820509)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871662528511820510)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871662921518820512)
,p_db_column_name=>'BONUS'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31871663353151820513)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318716634'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31871664644380820518)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31871663886793820516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31871658546387820497)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31871687970432820542)
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871665069011820518)
,p_name=>'P23_BONUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871665456812820519)
,p_name=>'P23_DB_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'DB'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871665823762820519)
,p_name=>'P23_USER_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'WDBE3'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871666257090820520)
,p_name=>'P23_PASS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'localhost:7071'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871666682226820521)
,p_name=>'P23_MODE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871667014940820522)
,p_name=>'P23_MODEL_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'E3'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871667454113820522)
,p_name=>'P23_RETURNDIMENSIONS_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'False'
,p_prompt=>'returnDimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871667859115820522)
,p_name=>'P23_RETURNFOR_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'SIM_JSON'
,p_prompt=>'returnFor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871668233957820523)
,p_name=>'P23_EMPLOYEEID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871668688731820523)
,p_name=>'P23_SALARY_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871669029184820524)
,p_name=>'P23_SALARYEXCEPTION_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871669456666820524)
,p_name=>'P23_PERSONID_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871669816955820524)
,p_name=>'P23_FIRSTNAME_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871670248333820525)
,p_name=>'P23_LASTNAME_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871670666734820525)
,p_name=>'P23_HOMEADDRESS_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871671046292820526)
,p_name=>'P23_ZIPCODE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871671420336820526)
,p_name=>'P23_HOMEPHONE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871671862120820526)
,p_name=>'P23_USCITIZEN_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871672273216820527)
,p_name=>'P23_QUERY_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(31871664644380820518)
,p_item_default=>'"from interim-manager retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31871672624300820528)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(31838523305907275227)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P23_INTERIMMANAGERJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(89580657570936857800)
,p_name=>'Person Create'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person Create'
,p_step_sub_title=>'Person Create'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'IBRUTON64@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428184617'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31905050870541054206)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89580631336710857749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31905051241718054208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(89580652346231857771)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31905067322209054235)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905051653996054210)
,p_name=>'P25_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'OracleNoSQL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905052071633054213)
,p_name=>'P25_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'WDBE3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905052473003054214)
,p_name=>'P25_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'localhost:7071'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905052873186054214)
,p_name=>'P25_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'native_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905053234730054215)
,p_name=>'P25_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'E3'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905053601410054215)
,p_name=>'P25_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905054046217054215)
,p_name=>'P25_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'SIM_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905055637777054217)
,p_name=>'P25_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_prompt=>'Person ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905056095505054217)
,p_name=>'P25_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905056462969054218)
,p_name=>'P25_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905056821845054218)
,p_name=>'P25_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_prompt=>'Home Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905057257857054218)
,p_name=>'P25_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905057668000054219)
,p_name=>'P25_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_prompt=>'Home Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905058076240054221)
,p_name=>'P25_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_prompt=>'US Citizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(89580651853855857770)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31905058493211054221)
,p_name=>'P25_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31905050870541054206)
,p_source=>'''insert person(person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'');'''
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31905059644538054227)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_attribute_01=>wwv_flow_api.id(89580663302012496591)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P25_PERSONJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/webservices/department
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31836388623229700302)
,p_name=>'Department'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31836388835259700304)
,p_ws_id=>wwv_flow_api.id(31836388623229700302)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836389116619700305)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729043567856173136)
,p_parameter_id=>wwv_flow_api.id(31836389116619700305)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044793908173148)
,p_parameter_id=>wwv_flow_api.id(31836389116619700305)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841751530408651371)
,p_parameter_id=>wwv_flow_api.id(31836389116619700305)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865851874175855213)
,p_parameter_id=>wwv_flow_api.id(31836389116619700305)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868363469152106425)
,p_parameter_id=>wwv_flow_api.id(31836389116619700305)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836389410583700306)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044357390173144)
,p_parameter_id=>wwv_flow_api.id(31836389410583700306)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841761960436651379)
,p_parameter_id=>wwv_flow_api.id(31836389410583700306)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848253211015575506)
,p_parameter_id=>wwv_flow_api.id(31836389410583700306)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865851085025855213)
,p_parameter_id=>wwv_flow_api.id(31836389410583700306)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868362673412106424)
,p_parameter_id=>wwv_flow_api.id(31836389410583700306)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836389742789700306)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044073788173141)
,p_parameter_id=>wwv_flow_api.id(31836389742789700306)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841760725213651378)
,p_parameter_id=>wwv_flow_api.id(31836389742789700306)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848252917782575503)
,p_parameter_id=>wwv_flow_api.id(31836389742789700306)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865849869098855211)
,p_parameter_id=>wwv_flow_api.id(31836389742789700306)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868361446394106423)
,p_parameter_id=>wwv_flow_api.id(31836389742789700306)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836390019349700306)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729043814859173139)
,p_parameter_id=>wwv_flow_api.id(31836390019349700306)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841752795654651372)
,p_parameter_id=>wwv_flow_api.id(31836390019349700306)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848252771188575501)
,p_parameter_id=>wwv_flow_api.id(31836390019349700306)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865853050906855214)
,p_parameter_id=>wwv_flow_api.id(31836390019349700306)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868364650570106426)
,p_parameter_id=>wwv_flow_api.id(31836390019349700306)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836390392533700306)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729043931893173140)
,p_parameter_id=>wwv_flow_api.id(31836390392533700306)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841753156915651372)
,p_parameter_id=>wwv_flow_api.id(31836390392533700306)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848252876487575502)
,p_parameter_id=>wwv_flow_api.id(31836390392533700306)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865853433018855214)
,p_parameter_id=>wwv_flow_api.id(31836390392533700306)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868365038541106426)
,p_parameter_id=>wwv_flow_api.id(31836390392533700306)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836390617780700306)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044137682173142)
,p_parameter_id=>wwv_flow_api.id(31836390617780700306)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841761196408651379)
,p_parameter_id=>wwv_flow_api.id(31836390617780700306)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848253085519575504)
,p_parameter_id=>wwv_flow_api.id(31836390617780700306)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865850254703855212)
,p_parameter_id=>wwv_flow_api.id(31836390617780700306)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868361800776106424)
,p_parameter_id=>wwv_flow_api.id(31836390617780700306)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836390941328700307)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044213056173143)
,p_parameter_id=>wwv_flow_api.id(31836390941328700307)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841761507992651379)
,p_parameter_id=>wwv_flow_api.id(31836390941328700307)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848253101214575505)
,p_parameter_id=>wwv_flow_api.id(31836390941328700307)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865850677795855212)
,p_parameter_id=>wwv_flow_api.id(31836390941328700307)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868362231951106424)
,p_parameter_id=>wwv_flow_api.id(31836390941328700307)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836391270645700307)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'deptno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729043750839173138)
,p_parameter_id=>wwv_flow_api.id(31836391270645700307)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044973784173150)
,p_parameter_id=>wwv_flow_api.id(31836391270645700307)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DEPT_NO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841752314292651372)
,p_parameter_id=>wwv_flow_api.id(31836391270645700307)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865852613889855214)
,p_parameter_id=>wwv_flow_api.id(31836391270645700307)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868364248795106425)
,p_parameter_id=>wwv_flow_api.id(31836391270645700307)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836391533750700307)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'deptname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729043691323173137)
,p_parameter_id=>wwv_flow_api.id(31836391533750700307)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044851286173149)
,p_parameter_id=>wwv_flow_api.id(31836391533750700307)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DEPT_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841751903721651371)
,p_parameter_id=>wwv_flow_api.id(31836391533750700307)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865852294284855213)
,p_parameter_id=>wwv_flow_api.id(31836391533750700307)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868363831128106425)
,p_parameter_id=>wwv_flow_api.id(31836391533750700307)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DEPARTMENT_NAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836391844415700309)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729043406160173135)
,p_parameter_id=>wwv_flow_api.id(31836391844415700309)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31729044609762173147)
,p_parameter_id=>wwv_flow_api.id(31836391844415700309)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841751139269651371)
,p_parameter_id=>wwv_flow_api.id(31836391844415700309)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865851449876855213)
,p_parameter_id=>wwv_flow_api.id(31836391844415700309)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868363044006106425)
,p_parameter_id=>wwv_flow_api.id(31836391844415700309)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836392100038700309)
,p_ws_opers_id=>wwv_flow_api.id(31836388835259700304)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/project_employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31836616785188101729)
,p_name=>'Project-Employee'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31836616976198101731)
,p_ws_id=>wwv_flow_api.id(31836616785188101729)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836617297134101735)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868539729531495837)
,p_parameter_id=>wwv_flow_api.id(31836617297134101735)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836617551014101736)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870160901396309202)
,p_parameter_id=>wwv_flow_api.id(31836617551014101736)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836617801750101737)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540543104495845)
,p_parameter_id=>wwv_flow_api.id(31836617801750101737)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836668160264101737)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540314467495843)
,p_parameter_id=>wwv_flow_api.id(31836668160264101737)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836668473254101737)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540798438495847)
,p_parameter_id=>wwv_flow_api.id(31836668473254101737)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836668744594101737)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540811044495848)
,p_parameter_id=>wwv_flow_api.id(31836668744594101737)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836669072283101738)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540433700495844)
,p_parameter_id=>wwv_flow_api.id(31836669072283101738)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836669391228101738)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540695696495846)
,p_parameter_id=>wwv_flow_api.id(31836669391228101738)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PERSONID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836669624022101738)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870160861647309201)
,p_parameter_id=>wwv_flow_api.id(31836669624022101738)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USCITIZEN_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836669968980101739)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868539986238495839)
,p_parameter_id=>wwv_flow_api.id(31836669968980101739)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_FIRSTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836670279711101739)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540176111495841)
,p_parameter_id=>wwv_flow_api.id(31836670279711101739)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_HOMEPHONE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836670525656101739)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540215755495842)
,p_parameter_id=>wwv_flow_api.id(31836670525656101739)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_LASTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836670835563101739)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540020807495840)
,p_parameter_id=>wwv_flow_api.id(31836670835563101739)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836671158079101739)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161027472309203)
,p_parameter_id=>wwv_flow_api.id(31836671158079101739)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_ZIPCODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836671431745101740)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868540954797495849)
,p_parameter_id=>wwv_flow_api.id(31836671431745101740)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_SALARY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836671700590101740)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868539896368495838)
,p_parameter_id=>wwv_flow_api.id(31836671700590101740)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836672053631101740)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868541068184495850)
,p_parameter_id=>wwv_flow_api.id(31836672053631101740)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836672360290101742)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868539642836495836)
,p_parameter_id=>wwv_flow_api.id(31836672360290101742)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836672629483101742)
,p_ws_opers_id=>wwv_flow_api.id(31836616976198101731)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31836909545495751988)
,p_name=>'Project'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31836909789090751989)
,p_ws_id=>wwv_flow_api.id(31836909545495751988)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836910022492751989)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532561486854472945)
,p_parameter_id=>wwv_flow_api.id(31836910022492751989)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044201946329425)
,p_parameter_id=>wwv_flow_api.id(31836910022492751989)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865861405733855223)
,p_parameter_id=>wwv_flow_api.id(31836910022492751989)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868373023085106433)
,p_parameter_id=>wwv_flow_api.id(31836910022492751989)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836910327731751990)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042024998329403)
,p_parameter_id=>wwv_flow_api.id(31836910327731751990)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842045010664329433)
,p_parameter_id=>wwv_flow_api.id(31836910327731751990)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865864666794855226)
,p_parameter_id=>wwv_flow_api.id(31836910327731751990)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868376271703106436)
,p_parameter_id=>wwv_flow_api.id(31836910327731751990)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836910607257751990)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532561749571472948)
,p_parameter_id=>wwv_flow_api.id(31836910607257751990)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044594079329428)
,p_parameter_id=>wwv_flow_api.id(31836910607257751990)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865862629264855224)
,p_parameter_id=>wwv_flow_api.id(31836910607257751990)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868374210284106434)
,p_parameter_id=>wwv_flow_api.id(31836910607257751990)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836910909498751990)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532561545124472946)
,p_parameter_id=>wwv_flow_api.id(31836910909498751990)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044324602329426)
,p_parameter_id=>wwv_flow_api.id(31836910909498751990)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865861801061855224)
,p_parameter_id=>wwv_flow_api.id(31836910909498751990)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868373442250106433)
,p_parameter_id=>wwv_flow_api.id(31836910909498751990)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836911238897751990)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532561627971472947)
,p_parameter_id=>wwv_flow_api.id(31836911238897751990)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044462561329427)
,p_parameter_id=>wwv_flow_api.id(31836911238897751990)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865862294877855224)
,p_parameter_id=>wwv_flow_api.id(31836911238897751990)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868373838915106434)
,p_parameter_id=>wwv_flow_api.id(31836911238897751990)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836911591377751990)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842041876869329401)
,p_parameter_id=>wwv_flow_api.id(31836911591377751990)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044812786329431)
,p_parameter_id=>wwv_flow_api.id(31836911591377751990)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865863864644855225)
,p_parameter_id=>wwv_flow_api.id(31836911591377751990)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868375422740106436)
,p_parameter_id=>wwv_flow_api.id(31836911591377751990)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836911807084751991)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842041984606329402)
,p_parameter_id=>wwv_flow_api.id(31836911807084751991)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044992326329432)
,p_parameter_id=>wwv_flow_api.id(31836911807084751991)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865864230677855225)
,p_parameter_id=>wwv_flow_api.id(31836911807084751991)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868375800168106436)
,p_parameter_id=>wwv_flow_api.id(31836911807084751991)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836912142956751991)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532561826452472949)
,p_parameter_id=>wwv_flow_api.id(31836912142956751991)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PROJECT_NO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044674375329429)
,p_parameter_id=>wwv_flow_api.id(31836912142956751991)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865863049439855224)
,p_parameter_id=>wwv_flow_api.id(31836912142956751991)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PROJECT_NO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868374621535106434)
,p_parameter_id=>wwv_flow_api.id(31836912142956751991)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PROJECT_NO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836912499975751991)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532561902665472950)
,p_parameter_id=>wwv_flow_api.id(31836912499975751991)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PROJECT_TITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044769915329430)
,p_parameter_id=>wwv_flow_api.id(31836912499975751991)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865863463847855225)
,p_parameter_id=>wwv_flow_api.id(31836912499975751991)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PROJECT_TITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868375062091106435)
,p_parameter_id=>wwv_flow_api.id(31836912499975751991)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PROJECT_TITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836912795739751991)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532561378918472944)
,p_parameter_id=>wwv_flow_api.id(31836912795739751991)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842044104210329424)
,p_parameter_id=>wwv_flow_api.id(31836912795739751991)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865861010874855223)
,p_parameter_id=>wwv_flow_api.id(31836912795739751991)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868372681612106433)
,p_parameter_id=>wwv_flow_api.id(31836912795739751991)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31836913072656751992)
,p_ws_opers_id=>wwv_flow_api.id(31836909789090751989)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/manager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31837279173208771379)
,p_name=>'Manager'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31837279321104771379)
,p_ws_id=>wwv_flow_api.id(31837279173208771379)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837279688554771381)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532558835723472919)
,p_parameter_id=>wwv_flow_api.id(31837279688554771381)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042394737329406)
,p_parameter_id=>wwv_flow_api.id(31837279688554771381)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848901331806694937)
,p_parameter_id=>wwv_flow_api.id(31837279688554771381)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869190669097192067)
,p_parameter_id=>wwv_flow_api.id(31837279688554771381)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871680661145820535)
,p_parameter_id=>wwv_flow_api.id(31837279688554771381)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837280043681771382)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532560386899472934)
,p_parameter_id=>wwv_flow_api.id(31837280043681771382)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043828735329421)
,p_parameter_id=>wwv_flow_api.id(31837280043681771382)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848907398526694942)
,p_parameter_id=>wwv_flow_api.id(31837280043681771382)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869196697549192072)
,p_parameter_id=>wwv_flow_api.id(31837280043681771382)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871686698756820541)
,p_parameter_id=>wwv_flow_api.id(31837280043681771382)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837280331253771382)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559676804472927)
,p_parameter_id=>wwv_flow_api.id(31837280331253771382)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043125226329414)
,p_parameter_id=>wwv_flow_api.id(31837280331253771382)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848904580025694940)
,p_parameter_id=>wwv_flow_api.id(31837280331253771382)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869193898661192069)
,p_parameter_id=>wwv_flow_api.id(31837280331253771382)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871683817614820539)
,p_parameter_id=>wwv_flow_api.id(31837280331253771382)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837280614600771383)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559492209472925)
,p_parameter_id=>wwv_flow_api.id(31837280614600771383)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042919930329412)
,p_parameter_id=>wwv_flow_api.id(31837280614600771383)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848903758740694939)
,p_parameter_id=>wwv_flow_api.id(31837280614600771383)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869193017414192069)
,p_parameter_id=>wwv_flow_api.id(31837280614600771383)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871683050286820537)
,p_parameter_id=>wwv_flow_api.id(31837280614600771383)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837280946973771383)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559582298472926)
,p_parameter_id=>wwv_flow_api.id(31837280946973771383)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043090230329413)
,p_parameter_id=>wwv_flow_api.id(31837280946973771383)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848904169797694940)
,p_parameter_id=>wwv_flow_api.id(31837280946973771383)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869193475980192069)
,p_parameter_id=>wwv_flow_api.id(31837280946973771383)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871683484390820538)
,p_parameter_id=>wwv_flow_api.id(31837280946973771383)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837281252653771385)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559841251472929)
,p_parameter_id=>wwv_flow_api.id(31837281252653771385)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043307648329416)
,p_parameter_id=>wwv_flow_api.id(31837281252653771385)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848905335591694941)
,p_parameter_id=>wwv_flow_api.id(31837281252653771385)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869194644965192070)
,p_parameter_id=>wwv_flow_api.id(31837281252653771385)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871684678459820539)
,p_parameter_id=>wwv_flow_api.id(31837281252653771385)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837281556340771385)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559917626472930)
,p_parameter_id=>wwv_flow_api.id(31837281556340771385)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043467854329417)
,p_parameter_id=>wwv_flow_api.id(31837281556340771385)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848905709791694941)
,p_parameter_id=>wwv_flow_api.id(31837281556340771385)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869195051967192070)
,p_parameter_id=>wwv_flow_api.id(31837281556340771385)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871685022112820540)
,p_parameter_id=>wwv_flow_api.id(31837281556340771385)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837281858533771385)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559787391472928)
,p_parameter_id=>wwv_flow_api.id(31837281858533771385)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043271149329415)
,p_parameter_id=>wwv_flow_api.id(31837281858533771385)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848904915909694940)
,p_parameter_id=>wwv_flow_api.id(31837281858533771385)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869194244678192070)
,p_parameter_id=>wwv_flow_api.id(31837281858533771385)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871684210575820539)
,p_parameter_id=>wwv_flow_api.id(31837281858533771385)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PERSONID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837282167427771386)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559037625472921)
,p_parameter_id=>wwv_flow_api.id(31837282167427771386)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042536867329408)
,p_parameter_id=>wwv_flow_api.id(31837282167427771386)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848902150682694938)
,p_parameter_id=>wwv_flow_api.id(31837282167427771386)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869191481048192068)
,p_parameter_id=>wwv_flow_api.id(31837282167427771386)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871681438627820536)
,p_parameter_id=>wwv_flow_api.id(31837282167427771386)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_FIRSTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837282480217771386)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559334887472924)
,p_parameter_id=>wwv_flow_api.id(31837282480217771386)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042868169329411)
,p_parameter_id=>wwv_flow_api.id(31837282480217771386)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848903321042694939)
,p_parameter_id=>wwv_flow_api.id(31837282480217771386)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869192637034192069)
,p_parameter_id=>wwv_flow_api.id(31837282480217771386)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871682667622820537)
,p_parameter_id=>wwv_flow_api.id(31837282480217771386)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_LASTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837282763629771386)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559144057472922)
,p_parameter_id=>wwv_flow_api.id(31837282763629771386)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042616468329409)
,p_parameter_id=>wwv_flow_api.id(31837282763629771386)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848902567425694938)
,p_parameter_id=>wwv_flow_api.id(31837282763629771386)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869191843097192068)
,p_parameter_id=>wwv_flow_api.id(31837282763629771386)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871681841676820536)
,p_parameter_id=>wwv_flow_api.id(31837282763629771386)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837283019130771386)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532560476993472935)
,p_parameter_id=>wwv_flow_api.id(31837283019130771386)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043951404329422)
,p_parameter_id=>wwv_flow_api.id(31837283019130771386)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848907797525694942)
,p_parameter_id=>wwv_flow_api.id(31837283019130771386)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869197059106192072)
,p_parameter_id=>wwv_flow_api.id(31837283019130771386)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871687043253820541)
,p_parameter_id=>wwv_flow_api.id(31837283019130771386)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ZIPCODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837283339501771386)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532559246436472923)
,p_parameter_id=>wwv_flow_api.id(31837283339501771386)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042743718329410)
,p_parameter_id=>wwv_flow_api.id(31837283339501771386)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848902963136694939)
,p_parameter_id=>wwv_flow_api.id(31837283339501771386)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869192234901192068)
,p_parameter_id=>wwv_flow_api.id(31837283339501771386)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871682265777820537)
,p_parameter_id=>wwv_flow_api.id(31837283339501771386)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEPHONE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837283628074771387)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532560253761472933)
,p_parameter_id=>wwv_flow_api.id(31837283628074771387)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043742784329420)
,p_parameter_id=>wwv_flow_api.id(31837283628074771387)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848906988712694942)
,p_parameter_id=>wwv_flow_api.id(31837283628074771387)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869196231258192072)
,p_parameter_id=>wwv_flow_api.id(31837283628074771387)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871686220941820541)
,p_parameter_id=>wwv_flow_api.id(31837283628074771387)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USCITIZEN_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837283924684771387)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532558967017472920)
,p_parameter_id=>wwv_flow_api.id(31837283924684771387)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042414798329407)
,p_parameter_id=>wwv_flow_api.id(31837283924684771387)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848901797052694938)
,p_parameter_id=>wwv_flow_api.id(31837283924684771387)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869191086837192067)
,p_parameter_id=>wwv_flow_api.id(31837283924684771387)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871681097981820536)
,p_parameter_id=>wwv_flow_api.id(31837283924684771387)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837284295080771387)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532560021211472931)
,p_parameter_id=>wwv_flow_api.id(31837284295080771387)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043540239329418)
,p_parameter_id=>wwv_flow_api.id(31837284295080771387)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848906139006694941)
,p_parameter_id=>wwv_flow_api.id(31837284295080771387)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869195481539192071)
,p_parameter_id=>wwv_flow_api.id(31837284295080771387)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871685432751820540)
,p_parameter_id=>wwv_flow_api.id(31837284295080771387)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837284502338771387)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532560130382472932)
,p_parameter_id=>wwv_flow_api.id(31837284502338771387)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842043692576329419)
,p_parameter_id=>wwv_flow_api.id(31837284502338771387)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848906511697694941)
,p_parameter_id=>wwv_flow_api.id(31837284502338771387)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869195881588192071)
,p_parameter_id=>wwv_flow_api.id(31837284502338771387)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871685847606820540)
,p_parameter_id=>wwv_flow_api.id(31837284502338771387)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837284848739771388)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532558777387472918)
,p_parameter_id=>wwv_flow_api.id(31837284848739771388)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042237485329405)
,p_parameter_id=>wwv_flow_api.id(31837284848739771388)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848900983226694937)
,p_parameter_id=>wwv_flow_api.id(31837284848739771388)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869190216283192067)
,p_parameter_id=>wwv_flow_api.id(31837284848739771388)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871680205470820535)
,p_parameter_id=>wwv_flow_api.id(31837284848739771388)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837285127042771389)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31532558697312472917)
,p_parameter_id=>wwv_flow_api.id(31837285127042771389)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842042140533329404)
,p_parameter_id=>wwv_flow_api.id(31837285127042771389)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848900538234694937)
,p_parameter_id=>wwv_flow_api.id(31837285127042771389)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869197487302192072)
,p_parameter_id=>wwv_flow_api.id(31837285127042771389)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871687463975820542)
,p_parameter_id=>wwv_flow_api.id(31837285127042771389)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837285435930771389)
,p_ws_opers_id=>wwv_flow_api.id(31837279321104771379)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/current_project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31837431544405172313)
,p_name=>'Current-Project'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31837431757932172314)
,p_ws_id=>wwv_flow_api.id(31837431544405172313)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837432089003172316)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536374543495803)
,p_parameter_id=>wwv_flow_api.id(31837432089003172316)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837432304968172316)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537250831495812)
,p_parameter_id=>wwv_flow_api.id(31837432304968172316)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837432603886172317)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536663242495806)
,p_parameter_id=>wwv_flow_api.id(31837432603886172317)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837432918149172317)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536428380495804)
,p_parameter_id=>wwv_flow_api.id(31837432918149172317)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837433243053172317)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536522006495805)
,p_parameter_id=>wwv_flow_api.id(31837433243053172317)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837433518737172317)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537091995495810)
,p_parameter_id=>wwv_flow_api.id(31837433518737172317)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837433835127172317)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537147396495811)
,p_parameter_id=>wwv_flow_api.id(31837433835127172317)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837434175708172318)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'projectactive'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536745530495807)
,p_parameter_id=>wwv_flow_api.id(31837434175708172318)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PROJECT_ACTIVE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837434435521172318)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536825504495808)
,p_parameter_id=>wwv_flow_api.id(31837434435521172318)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PROJECT_NO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837434712903172318)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536930843495809)
,p_parameter_id=>wwv_flow_api.id(31837434712903172318)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PROJECT_TITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837435058694172319)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868536228717495802)
,p_parameter_id=>wwv_flow_api.id(31837435058694172319)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837435350480172319)
,p_ws_opers_id=>wwv_flow_api.id(31837431757932172314)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/president
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31837653260797186586)
,p_name=>'President'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31837653458560186587)
,p_ws_id=>wwv_flow_api.id(31837653260797186586)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837653717105186589)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537614925495816)
,p_parameter_id=>wwv_flow_api.id(31837653717105186589)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837654000232186589)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868539141034495831)
,p_parameter_id=>wwv_flow_api.id(31837654000232186589)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837654387196186590)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538439195495824)
,p_parameter_id=>wwv_flow_api.id(31837654387196186590)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837654624870186590)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538256587495822)
,p_parameter_id=>wwv_flow_api.id(31837654624870186590)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837654901697186590)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538383757495823)
,p_parameter_id=>wwv_flow_api.id(31837654901697186590)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837655256155186590)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538789414495827)
,p_parameter_id=>wwv_flow_api.id(31837655256155186590)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837655513621186591)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537771039495817)
,p_parameter_id=>wwv_flow_api.id(31837655513621186591)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837655896795186591)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538952231495829)
,p_parameter_id=>wwv_flow_api.id(31837655896795186591)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837656124153186591)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537512701495815)
,p_parameter_id=>wwv_flow_api.id(31837656124153186591)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837656464733186591)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538060590495820)
,p_parameter_id=>wwv_flow_api.id(31837656464733186591)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEPHONE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837656714135186592)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538639547495826)
,p_parameter_id=>wwv_flow_api.id(31837656714135186592)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837657017119186592)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868539079739495830)
,p_parameter_id=>wwv_flow_api.id(31837657017119186592)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USCITIZEN_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837657394676186592)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538574986495825)
,p_parameter_id=>wwv_flow_api.id(31837657394676186592)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PERSONID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837657672344186593)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538158257495821)
,p_parameter_id=>wwv_flow_api.id(31837657672344186593)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_LASTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837657987355186593)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537985575495819)
,p_parameter_id=>wwv_flow_api.id(31837657987355186593)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837658294030186593)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537835436495818)
,p_parameter_id=>wwv_flow_api.id(31837658294030186593)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_FIRSTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837658567215186593)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868539284703495832)
,p_parameter_id=>wwv_flow_api.id(31837658567215186593)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_ZIPCODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837658821889186594)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868538806193495828)
,p_parameter_id=>wwv_flow_api.id(31837658821889186594)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SALARY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837659177845186595)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868537439681495814)
,p_parameter_id=>wwv_flow_api.id(31837659177845186595)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837659400197186595)
,p_ws_opers_id=>wwv_flow_api.id(31837653458560186587)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/previous_project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31837979202152842097)
,p_name=>'Previous-Project'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31837979536342842098)
,p_ws_id=>wwv_flow_api.id(31837979202152842097)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837980099368842099)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254083374575514)
,p_parameter_id=>wwv_flow_api.id(31837980099368842099)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837980399864842100)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848255244807575526)
,p_parameter_id=>wwv_flow_api.id(31837980399864842100)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837980796950842100)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254779401575521)
,p_parameter_id=>wwv_flow_api.id(31837980796950842100)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837981001948842100)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254526291575519)
,p_parameter_id=>wwv_flow_api.id(31837981001948842100)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837981337187842101)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254617446575520)
,p_parameter_id=>wwv_flow_api.id(31837981337187842101)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837981798661842101)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848255034821575524)
,p_parameter_id=>wwv_flow_api.id(31837981798661842101)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837982111561842103)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848255121613575525)
,p_parameter_id=>wwv_flow_api.id(31837982111561842103)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837982422403842104)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254834649575522)
,p_parameter_id=>wwv_flow_api.id(31837982422403842104)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PROJECT_NO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837982734224842105)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254907383575523)
,p_parameter_id=>wwv_flow_api.id(31837982734224842105)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PROJECT_TITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837983068852842105)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'enddatemonth'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254208018575516)
,p_parameter_id=>wwv_flow_api.id(31837983068852842105)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ENDDATEMONTH'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837983331057842105)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'enddateday'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254162355575515)
,p_parameter_id=>wwv_flow_api.id(31837983331057842105)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ENDDATEDAY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837983689921842106)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'enddateyear'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254393224575517)
,p_parameter_id=>wwv_flow_api.id(31837983689921842106)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ENDDATEYEAR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837983984118842107)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'estpersonhours'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848254454741575518)
,p_parameter_id=>wwv_flow_api.id(31837983984118842107)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ESTPERSONHOURS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837984218510842107)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848253904642575513)
,p_parameter_id=>wwv_flow_api.id(31837984218510842107)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31837984538258842107)
,p_ws_opers_id=>wwv_flow_api.id(31837979536342842098)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/previous_employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31838041005576847082)
,p_name=>'Previous-Employee'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31838041274331847082)
,p_ws_id=>wwv_flow_api.id(31838041005576847082)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838041505964847083)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838041851239847084)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838042130253847084)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838042459508847084)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838042784437847084)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838043098014847085)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838043315842847085)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838043658005847085)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838043997570847085)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838044277502847085)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838044592970847086)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838044816986847086)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838045125439847086)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838045482525847086)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838045742632847087)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838046055551847087)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'isfired'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838046325393847087)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838046666273847087)
,p_ws_opers_id=>wwv_flow_api.id(31838041274331847082)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/interim_manager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31838523197149275226)
,p_name=>'Interim-Manager'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31838523305907275227)
,p_ws_id=>wwv_flow_api.id(31838523197149275226)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838523671772275229)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161311925309206)
,p_parameter_id=>wwv_flow_api.id(31838523671772275229)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838523907638275229)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162908049309222)
,p_parameter_id=>wwv_flow_api.id(31838523907638275229)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838524252630275229)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162151709309214)
,p_parameter_id=>wwv_flow_api.id(31838524252630275229)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838524595112275230)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161903847309212)
,p_parameter_id=>wwv_flow_api.id(31838524595112275230)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838524897025275230)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162045704309213)
,p_parameter_id=>wwv_flow_api.id(31838524897025275230)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838525148355275230)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162327475309216)
,p_parameter_id=>wwv_flow_api.id(31838525148355275230)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838525467925275230)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162464973309217)
,p_parameter_id=>wwv_flow_api.id(31838525467925275230)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838525744149275231)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162555856309218)
,p_parameter_id=>wwv_flow_api.id(31838525744149275231)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838526012898275231)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162845004309221)
,p_parameter_id=>wwv_flow_api.id(31838526012898275231)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USCITIZEN_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838526355028275231)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162649867309219)
,p_parameter_id=>wwv_flow_api.id(31838526355028275231)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838526672788275231)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162296136309215)
,p_parameter_id=>wwv_flow_api.id(31838526672788275231)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PERSONID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838526937622275231)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161582462309208)
,p_parameter_id=>wwv_flow_api.id(31838526937622275231)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_FIRSTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838527211681275232)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161890366309211)
,p_parameter_id=>wwv_flow_api.id(31838527211681275232)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_LASTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838527531156275233)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163062708309223)
,p_parameter_id=>wwv_flow_api.id(31838527531156275233)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ZIPCODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838527824040275233)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161602878309209)
,p_parameter_id=>wwv_flow_api.id(31838527824040275233)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838528163552275233)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161705710309210)
,p_parameter_id=>wwv_flow_api.id(31838528163552275233)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEPHONE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838528410220275234)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161465705309207)
,p_parameter_id=>wwv_flow_api.id(31838528410220275234)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838528710973275234)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870162716242309220)
,p_parameter_id=>wwv_flow_api.id(31838528710973275234)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838529061798275234)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161228656309205)
,p_parameter_id=>wwv_flow_api.id(31838529061798275234)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838529331323275234)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870161101683309204)
,p_parameter_id=>wwv_flow_api.id(31838529331323275234)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31838529691038275235)
,p_ws_opers_id=>wwv_flow_api.id(31838523305907275227)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(60242866640965832062)
,p_name=>'Employee'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(60242866883776832066)
,p_ws_id=>wwv_flow_api.id(60242866640965832062)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242867191270832070)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408966318937166999)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839583422472381401)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839703954083391963)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841753504522651373)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848269367849946937)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848287511280949608)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848914910800694949)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865853867678855215)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868365435947106426)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869183057840192060)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869861316288645840)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871673026544820529)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905066829224054234)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375305324703379295)
,p_parameter_id=>wwv_flow_api.id(60242867191270832070)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242867487133832071)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242957875196843036)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408952756623166980)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839583879185381402)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839704365933391964)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841753999421651373)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848262517362946932)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848280729634949603)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848908158219694943)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865854215411855215)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868365881744106427)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869183485843192061)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869861720020645840)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871673440806820530)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905060033453054228)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375298620355379288)
,p_parameter_id=>wwv_flow_api.id(60242957875196843036)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242958154580843037)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408953585206166983)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839584254457381403)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839704786782391964)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841754316595651373)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848262963284946933)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848281111932949603)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848908565525694943)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865854628147855215)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868366283284106427)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869183825548192061)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869862148824645841)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871673868890820530)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905060491048054229)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375298927239379290)
,p_parameter_id=>wwv_flow_api.id(60242958154580843037)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242958451235843037)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408954307220166984)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839584635007381403)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839705142085391964)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841754708692651374)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848263336884946933)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848281505549949603)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848908928373694943)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865855022205855217)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868366699042106427)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869184297528192061)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869862559907645841)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871674271461820531)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905060899221054229)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375299355080379290)
,p_parameter_id=>wwv_flow_api.id(60242958451235843037)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242958730689843037)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408955113116166985)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839585054810381403)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839705591817391965)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841755114049651374)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848263769125946933)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848281922982949603)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848909336109694943)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865855427840855218)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868367095536106428)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869184646939192062)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869862961014645841)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871674635856820531)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905061213863054229)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375299798321379290)
,p_parameter_id=>wwv_flow_api.id(60242958730689843037)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242959041185843038)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408955953426166985)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839585470090381404)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839705981530391965)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841755534189651374)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848264146490946933)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848282327716949604)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848909712504694944)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865855864568855219)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868367485459106428)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869185073238192062)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869863343008645842)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871675096550820531)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905061630230054230)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375300222375379290)
,p_parameter_id=>wwv_flow_api.id(60242959041185843038)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242959420091843038)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408956788278166986)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839585869106381404)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839706334160391965)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841755983422651374)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848264577892946934)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848282776314949604)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848910196663694944)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865856231025855219)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868367858963106429)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869185423247192062)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869863768084645842)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871675402242820532)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905062051860054230)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375300577061379291)
,p_parameter_id=>wwv_flow_api.id(60242959420091843038)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60242959658965843038)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408957582871166987)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839586222449381404)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839706758269391966)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841756347068651375)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848264992996946934)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848283146637949604)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848910515788694945)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865856617725855219)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868368205589106429)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869185824650192063)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869864146085645842)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871675870450820532)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905062445936054230)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375301010182379291)
,p_parameter_id=>wwv_flow_api.id(60242959658965843038)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243219843879499683)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408958313188166987)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839586608305381405)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839707146526391966)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841756794252651375)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848265302951946934)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848283561791949604)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848910972136694945)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865857001006855220)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_EMPLOYEEID_1'
);
end;
/
begin
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868368654954106429)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869186216663192064)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869864548343645843)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871676293880820532)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905062891616054231)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375301326598379292)
,p_parameter_id=>wwv_flow_api.id(60243219843879499683)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_EMPLOYEEID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243606531059928777)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408959135946166988)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839587050751381405)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839707598762391966)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841757140562651375)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848265787836946935)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848283966932949605)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848911352418694945)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865857497944855220)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868369006864106430)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869186677203192064)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869864952739645844)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871676656302820533)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARY_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905063212345054231)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375301766152379293)
,p_parameter_id=>wwv_flow_api.id(60243606531059928777)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARY_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243606869836928777)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408959952934166991)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839587411967381405)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839707994682391966)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841757525865651376)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848266116819946935)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848284305034949605)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848911727833694946)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865857893632855221)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868369432364106430)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869187015461192064)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869865318293645844)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871677071695820533)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905063607878054231)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375302179370379293)
,p_parameter_id=>wwv_flow_api.id(60243606869836928777)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARYEXCEPTION_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243607209449928778)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408960771259166992)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839587887635381406)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839708382640391967)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841757923828651376)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848266566554946935)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848284796092949605)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848912170844694946)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865858289878855221)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868369874825106430)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869187463928192065)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869865708737645845)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871677450757820533)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PERSONID_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905064019246054231)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375302585262379293)
,p_parameter_id=>wwv_flow_api.id(60243607209449928778)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PERSONID_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243607479030928778)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408961533958166993)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839588266711381406)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839708745792391967)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841758345594651376)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848266931278946935)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848285100922949606)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848912505254694946)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865858655032855221)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868370218099106431)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869187829522192065)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869866151070645845)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871677814220820533)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_FIRSTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905064452036054232)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375302930914379294)
,p_parameter_id=>wwv_flow_api.id(60243607479030928778)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_FIRSTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243607742777928778)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408962331507166993)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839588624903381406)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839709109940391967)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841758749691651377)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848267379446946936)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848285547741949607)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848912980297694947)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865859050035855222)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868370651990106431)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869188239033192065)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869866545504645846)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871678256268820534)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_LASTNAME_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905064830283054232)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375303362725379294)
,p_parameter_id=>wwv_flow_api.id(60243607742777928778)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_LASTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243608043107928778)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408963191140166994)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839589008547381407)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839709590663391969)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841759168939651377)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848267783459946936)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848285908242949607)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848913306811694947)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865859477748855222)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868371099590106431)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869188643778192066)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869866973481645846)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871678626944820534)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905065270558054232)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375303769496379294)
,p_parameter_id=>wwv_flow_api.id(60243608043107928778)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEADDRESS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243608396130928779)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408963938290166995)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839589464206381407)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839709955533391969)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841759531478651377)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848268120079946936)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848286361724949607)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848913740098694948)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865859853702855222)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868371460358106432)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869189033772192066)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869867395723645846)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871679053758820534)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ZIPCODE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905065689399054233)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375304159565379294)
,p_parameter_id=>wwv_flow_api.id(60243608396130928779)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_ZIPCODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243608650140928779)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408964760606166996)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839589817852381407)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839710337192391970)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841759971800651378)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848268592102946937)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848286700138949608)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848914143785694948)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865860257724855223)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868371809676106432)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869189437717192066)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869867749610645848)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871679443269820535)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEPHONE_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905066023650054233)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375304565053379295)
,p_parameter_id=>wwv_flow_api.id(60243608650140928779)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEPHONE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60243609021459928780)
,p_ws_opers_id=>wwv_flow_api.id(60242866883776832066)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(30408965504169166998)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(30408951925827166975)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839590241254381408)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31839583012693381400)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31839710746370391970)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31839703503445391961)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN_1'
);
end;
/
begin
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841760337796651378)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31841750708235651370)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848268950095946937)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31848262119634946931)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848287178883949608)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31848280362811949602)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31848914501367694948)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31848900150843694936)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865860646485855223)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31865849485760855210)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868372202028106433)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31868361068522106422)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869189885401192066)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31869182696478192060)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869868162032645848)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31869860939308645838)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871679880224820535)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31871672624300820528)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USCITIZEN_1'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31905066420139054233)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60375304977545379295)
,p_parameter_id=>wwv_flow_api.id(60243609021459928780)
,p_process_id=>wwv_flow_api.id(60375298205361379287)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USCITIZEN_1'
);
end;
/
prompt --application/shared_components/logic/webservices/person
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(89580663115003496585)
,p_name=>'Person'
,p_url=>'aevum.cs.utexas.edu:7070/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(89580663302012496591)
,p_ws_id=>wwv_flow_api.id(89580663115003496585)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31723186392301188475)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163953346309232)
,p_parameter_id=>wwv_flow_api.id(31723186392301188475)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31723592889856241341)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163498484309227)
,p_parameter_id=>wwv_flow_api.id(31723592889856241341)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31723613497796618128)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870164264263309235)
,p_parameter_id=>wwv_flow_api.id(31723613497796618128)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(60135278173625091912)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163505958309228)
,p_parameter_id=>wwv_flow_api.id(60135278173625091912)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238760045678299765)
,p_parameter_id=>wwv_flow_api.id(60135278173625091912)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_LASTNAME_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580663682284496594)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580666707423515625)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163348706309226)
,p_parameter_id=>wwv_flow_api.id(89580666707423515625)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238760880873299766)
,p_parameter_id=>wwv_flow_api.id(89580666707423515625)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580667000945515625)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870164363928309236)
,p_parameter_id=>wwv_flow_api.id(89580667000945515625)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238761656736299767)
,p_parameter_id=>wwv_flow_api.id(89580667000945515625)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580667384227515626)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163858229309231)
,p_parameter_id=>wwv_flow_api.id(89580667384227515626)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238762447874299768)
,p_parameter_id=>wwv_flow_api.id(89580667384227515626)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580667690790515626)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163635869309229)
,p_parameter_id=>wwv_flow_api.id(89580667690790515626)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238763319685299768)
,p_parameter_id=>wwv_flow_api.id(89580667690790515626)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580667920812515626)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163739347309230)
,p_parameter_id=>wwv_flow_api.id(89580667920812515626)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238764030325299769)
,p_parameter_id=>wwv_flow_api.id(89580667920812515626)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580668209861515627)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870164081441309233)
,p_parameter_id=>wwv_flow_api.id(89580668209861515627)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238764850743299770)
,p_parameter_id=>wwv_flow_api.id(89580668209861515627)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580668505688515627)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870164154170309234)
,p_parameter_id=>wwv_flow_api.id(89580668505688515627)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238765684007299771)
,p_parameter_id=>wwv_flow_api.id(89580668505688515627)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR_1'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(89580687007570894145)
,p_ws_opers_id=>wwv_flow_api.id(89580663302012496591)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870163282064309225)
,p_parameter_id=>wwv_flow_api.id(89580687007570894145)
,p_process_id=>wwv_flow_api.id(31905059644538054227)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(60238766442964299771)
,p_parameter_id=>wwv_flow_api.id(89580687007570894145)
,p_process_id=>wwv_flow_api.id(60238759251690299762)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY_1'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
