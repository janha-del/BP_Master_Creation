*&---------------------------------------------------------------------*
*& Report ZBP_UPLOAD
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBP_UPLOAD.

TABLES: but000,kna1,lfa1,pa0006,pa0002.

TYPES: BEGIN OF ty_file_bp,
         serial      TYPE char10,                     " Serial of type Integers
*         role1      TYPE bu_partnerrole,
*         role2      TYPE bu_partnerrole,
*         role3      TYPE bu_partnerrole,
*         role4      TYPE bu_partnerrole,
         partn_cat   TYPE bapibus1006_head-partn_cat, " Business Partner Category
         bpartner    TYPE bapibus1006_head-bpartner,   "Business Partner Number
         lifnr       TYPE lifnr,                       "SAU - INS
         partn_grp   TYPE bapibus1006_head-partn_grp, " Business Partner Grouping
         ktokk       TYPE ktokk,                      " Supplier Account Group
         title       TYPE ad_titletx,                 " Title text
         name1       TYPE bu_nameor1,                 " Name 1 of organization
         name2       TYPE bu_nameor1,                 " Name 2 of organization
         name3       TYPE bu_nameor1,                 " Name 3 of organization
         name4       TYPE bu_nameor1,                 " Name 4 of organization
         sterm1      TYPE bu_sort1,                   "Search Term 1
         sterm2      TYPE bu_sort2,                   "Search Term 2
         street      TYPE ad_street,                  " Street
         house_no    TYPE ad_hsnm1,                   "House No
         str_suppl1  TYPE ad_strspp1,                 "Street 2
         str_suppl2  TYPE ad_strspp2,                 "Street 3
         str_suppl3  TYPE ad_strspp3,                 "Street 4
         location    TYPE ad_lctn,                    "Street 5
         district    TYPE ad_city2,                   "District
         postl_cod1  TYPE ad_pstcd1,                  "City Postal Code
         city        TYPE ad_city1,                   "City
         country     TYPE land1,                      "Country
         region      TYPE regio,                      "Region
         langu       TYPE spras,                      "Language
         tel_number  TYPE ad_tlnmbr,                  " Telephone no.: dialling code+number
         mob_number  TYPE ad_tlnmbr,                  " Telephone no.: dialling code+number
         mob_number2 TYPE ad_tlnmbr,                 " Telephone no.: dialling code+number
         smtp_addr   TYPE ad_smtpadr,                 " E-Mail Address
         smtp_addr2  TYPE ad_smtpadr,                " E-Mail Address2
         fax         TYPE ad_fxnmbr1,                " First fax no.: dialling code+number
         tranzone    TYPE lzone,                     " Transportation zone - ADDRESS-POSTAL
         istype      TYPE bu_istype,                 " Industry System
         indsector   TYPE bu_ind_sector,             "Industry
         isdef       TYPE bu_isdef,                   "Industry is Standard for BP in Industry System
         taxtype     TYPE bptaxtype,
         taxnumber   TYPE bptaxnum,
         taxtyp2     TYPE bptaxtype,
         taxnumb2    TYPE bptaxnum,
         taxtyp3     TYPE bptaxtype,
         taxnumb3    TYPE bptaxnum,
         pernr       TYPE ad_persnum,
         werks       TYPE werks_d,
*COMPANY_DATA
         bukrs       TYPE lfb1-bukrs, " Company Code
         akont       TYPE akont,      "Recon Account
*         vzskz      TYPE vzskz,            "Commented SAU
         mindk       TYPE mindk,      "New - EID "Minority Indicators
         cerdt       TYPE char08,     "cerdt,      "New - EID "Certification date
         zuawa       TYPE dzuawa,     "Sort Key
         cdi         TYPE reprf,      "Check Flag for Double Invoices or Credit Memos "SAU-INS-doubt
         zterm       TYPE dzterm,     "Payment Terms
         fdgrv       TYPE fdgrv,      "Planning Group
         altkn       TYPE altkn,      "Previous Master Record Number
         togru       TYPE togru,      "New - EID Tolerance Group
         zwels       TYPE dzwels,     "List of Respected Payment Methods
         hbkid       TYPE hbkid,      "Short key for a house bank
         taxtype1    TYPE j_1afitp_d,
         stcd1       TYPE  stcd1,
         taxtype2    TYPE j_1atoid,
         stcd2       TYPE  stcd2,
         bank_id     TYPE bu_bkvid,
         banks       TYPE  banks,    "Bank country key
         bankl       TYPE  bankl,    "Bank number
         bankn       TYPE  bankn,    "Bank account number
         ctrl_key    TYPE  bkont,
         bkref       TYPE  bkref,    "Reference specifications for bank details
         koinh       TYPE  bu_koinh, "Account Holder Name
         iban        TYPE  iban,     "IBAN (International Bank Account Number)Name of Bank Account -doubt
         banks2      TYPE  banks,    "Bank country key
         bankl2      TYPE  bankl,    "Bank number
         bankn2      TYPE  bankn,    "Bank account number
         bkref2      TYPE  bkref,    "Reference specifications for bank details
         koinh2      TYPE  koinh_fi, "Account Holder Name
         iban2       TYPE  iban,     "IBAN (International Bank Account Number)Name of Bank Account -doubt
         witht       TYPE witht,     "Indicator for Withholding Tax Type
         wt_subjct   TYPE wt_subjct, "Indicator: Subject to Withholding Tax?
         qsrec       TYPE wt_qsrec,  "Type of Recipient
         wt_wtstcd   TYPE wt_wtstcd, "Withholding tax identification number
         wt_withcd   TYPE wt_withcd, "Withholding Tax Code
         witht2      TYPE witht,     "Indicator for Withholding Tax Type
         wt_subjct2  TYPE wt_subjct, "Indicator: Subject to Withholding Tax?
         qsrec2      TYPE wt_qsrec,  "Type of Recipient
         wt_wtstcd2  TYPE wt_wtstcd, "Withholding tax identification number
         wt_withcd2  TYPE wt_withcd, "Withholding Tax Code
*         panno       TYPE char10,    "doubt
*         j_1ipanref  TYPE char10,    "doubt
         reprf       TYPE reprf,     "Check Double invoice
         intad       TYPE intad,
         busab       TYPE busab,
         kverm       TYPE kverm,     "New - EID - Accounting MEMO
         qland       TYPE qland,     "Withholding Tax Country Key
         kunnr       TYPE kunnr,     "CENTRAL_DATA
         konzs       TYPE konzs,     "CENTRAL_DATA
*         j_1iexcd    TYPE char20,     "doubt
*         j_1iexrn    TYPE char20,     "doubt
*         j_1iexrg    TYPE char20,     "doubt
*         j_1iexdi    TYPE char20,     "doubt
*         j_1iexco    TYPE char20,     "doubt
*         j_1ivtyp    TYPE char20,     "doubt
*         j_1iexcive  TYPE char20,     "doubt
         j_1icstno   TYPE char20,     "doubt
         j_1ilstno   TYPE char20,     "doubt
         j_1ipanno   TYPE char20,     "doubt
         ven_class   TYPE j_1igtakld,     "doubt
*         serial2     TYPE char20,     "doubt - repeated
*         lifnr2      TYPE lifnr,     "Doubt - repeated
         ekorg       TYPE ekorg,    "PURCHASING_DATA-key
         waers       TYPE bstwa,    "PURCHASING_DATA
         kalsk       TYPE kalsk,
         webre       TYPE webre,
         dzterm      TYPE dzterm,    ""Doubt - repeated
         inco1       TYPE inco1,
         inco2       TYPE inco2,
         kzaut       TYPE kzaut,    "New - EID-Automatic Generation of Purchase Order Allowed
         verkf       TYPE everk,    "Responsible Salesperson at Supplier's Office
         telf1       TYPE telfe,    "telef or TELF1 Doubt
         vsbed       TYPE vsbed,
         lebre       TYPE lebre,
         ekgrp       TYPE ekgrp,
         plifz       TYPE char3, "plifz, doubt
         xersy       TYPE xersy,
         xersr       TYPE xersr,
         xnbwy       TYPE xnbwy,
         "End of SAU-INS
       END OF ty_file_bp,

       BEGIN OF ty_log,
         icon        TYPE char1,
         serial      TYPE char5,
         msgtyp      TYPE bapi_mtype,
         msgid       TYPE symsgid,
         msgnr       TYPE symsgno,
         msg         TYPE bapi_msg,
         bpno        TYPE bapibus1006_head-bpartner,
**
         bu_partnerx TYPE char1,
         uzeit       TYPE  syst_uzeit,
         erdat       TYPE syst_datum,
         uname       TYPE syst_uname,
         bpname      TYPE char30,
**
         vendno      TYPE bapibus1006_head-bpartner,
       END OF ty_log.

DATA : gt_masterdata TYPE cvis_ei_extern_t.
DATA : gs_masterdata TYPE cvis_ei_extern.

DATA : it_raw    TYPE truxs_t_text_data.
DATA : it_file TYPE TABLE OF ty_file_bp.
DATA : wa_file TYPE ty_file_bp.

DATA : t_fcat TYPE slis_t_fieldcat_alv.
DATA : w_fcat TYPE slis_fieldcat_alv.
DATA : s_layout TYPE slis_layout_alv.
DATA : t_log TYPE TABLE OF ty_log, "TY_LOG,
       w_log TYPE ty_log.          "TY_LOG.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-101.
PARAMETERS:p_flname TYPE localfile ,        "File Path
           head(4)  DEFAULT '1' OBLIGATORY. "Header Rows
SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-102.

SELECTION-SCREEN BEGIN OF LINE.
PARAMETERS:r1 RADIOBUTTON GROUP g1  USER-COMMAND r.
SELECTION-SCREEN COMMENT 5(50) TEXT-001 FOR FIELD r1.
SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN BEGIN OF LINE.
PARAMETERS:r2 RADIOBUTTON GROUP g1.
SELECTION-SCREEN COMMENT 5(50) TEXT-002 FOR FIELD r2.
SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN SKIP.             "INS Sampath for HR requirement
PARAMETERS: ex TYPE char1 AS CHECKBOX DEFAULT '' USER-COMMAND r
                          MODIF ID id1. "INS Sampath for HR requirement

SELECTION-SCREEN END OF BLOCK b2.


AT SELECTION-SCREEN OUTPUT.
  PERFORM modify_screen.


*&---------------------------------------------------------------------*
*&     SEARCH HELP
*&---------------------------------------------------------------------*
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_flname.
  PERFORM value_request. "Value Request for File

AT SELECTION-SCREEN.
*  PERFORM at_selection.

*&---------------------------------------------------------------------*
*&     Start of Selection
*&---------------------------------------------------------------------*
START-OF-SELECTION.

*&---------------------------------------------------------------------*
*&     Create Business Partner and Customer Master.
*&---------------------------------------------------------------------*

  IF ex EQ ''.
    PERFORM validations.
    PERFORM upload_xl. "Upload Excel File
*    PERFORM fill_fcat_bplog.
  ELSEIF ex EQ 'X'.
    REFRESH it_file[].
    IMPORT it_file FROM MEMORY ID 'IT_FILE'.
    FREE MEMORY ID 'IT_FILE'.
  ENDIF.

  IF it_file[] IS NOT INITIAL.
    PERFORM create_bp_add_role. "Create Business Partner with 2 default Roles
  ENDIF.

*  IF ex EQ ''.
*    PERFORM display_log_bp.
*  ENDIF.



**&---------------------------------------------------------------------*
*&      Form  UPLOAD_XL
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM upload_xl .
*  IF P_FLNAME CS '.XLS' OR P_FLNAME CS '.xls'.
*    IF V3 IS INITIAL.

  CALL FUNCTION 'TEXT_CONVERT_XLS_TO_SAP'
    EXPORTING
      i_tab_raw_data       = it_raw
      i_filename           = p_flname
    TABLES
      i_tab_converted_data = it_file.
  DO head TIMES.
    DELETE it_file INDEX 1.
  ENDDO.

ENDFORM.

*&---------------------------------------------------------------------*
*&      Form  VALUE_REQUEST
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM value_request .
  CALL FUNCTION 'F4_FILENAME'
    EXPORTING
      program_name = sy-cprog
    IMPORTING
      file_name    = p_flname.
ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  CREATE_BP_ADD_ROLL
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM create_bp_add_role .


  DATA : ls_uuid TYPE sysuuid-x.

  DATA : ls_but000 TYPE but000.

  DATA : ls_partner TYPE bus_ei_extern.

  DATA : ls_partner_data TYPE bus_ei_extern.
  DATA : ls_partner_central_data TYPE bus_ei_bupa_central_data.
  DATA : ls_partner_central_datax TYPE bus_ei_bupa_central_data_xflag.


  DATA : ls_partner_role TYPE bus_ei_bupa_roles.
  DATA : ls_partner_role_data TYPE bus_ei_bupa_roles.
  DATA : lt_partner_role_data TYPE bus_ei_bupa_roles_t.

  DATA : ls_header TYPE bus_ei_header.

  DATA : lt_addressdata TYPE bus_ei_bupa_address_t.
  DATA : ls_addressdata TYPE bus_ei_bupa_address.
  DATA : ls_address TYPE bus_ei_bupa_address_data.

  DATA : ls_postal TYPE bus_ei_bupa_postal_address.
  DATA : ls_postaldata TYPE bus_ei_bupa_address.
  DATA : lt_postaldata TYPE bus_ei_bupa_address_t.

  DATA : ls_telephone TYPE bus_ei_bupa_telephone_con.
  DATA : ls_telephonedata TYPE bus_ei_bupa_telephone.
  DATA : lt_telephonedata TYPE bus_ei_bupa_telephone_t.


  DATA : ls_mail TYPE bus_ei_bupa_smtp_con.
  DATA : ls_maildata TYPE bus_ei_bupa_smtp.
  DATA : lt_maildata TYPE bus_ei_bupa_smtp_t.

  DATA : ls_industry TYPE bus_ei_bupa_industrysector.
  DATA : ls_industrydata TYPE bus_ei_bupa_industrysector.
  DATA : lt_industrydata TYPE bus_ei_bupa_industrysector_t.


*Begin of INS-SAU
  DATA : ls_vendor_data TYPE vmds_ei_extern.
  DATA : ls_vendor_header TYPE vmds_ei_header.
  DATA : ls_vendor_central_data TYPE vmds_ei_central_data.
  DATA : ls_vendor_company_data TYPE vmds_ei_vmd_company.
  DATA : ls_vendor_purch_data TYPE vmds_ei_vmd_purchasing.

*End of INS-SAU


  DATA : ls_taxnumber TYPE bus_ei_bupa_taxnumber.
  DATA : lt_taxnumber TYPE bus_ei_bupa_taxnumber_t.
  DATA : ls_taxnumber_data TYPE bus_ei_taxnumber.

****************************************************
*** Customer  Company Data


  DATA : ls_vendor_address TYPE cvis_ei_address1.   "INS-SAU

  DATA : ls_vend_bank TYPE cvis_ei_cvi_bankdetail.
  DATA : lt_vend_bank TYPE cvis_ei_bankdetail_t.
  DATA : ls_vendor_bank TYPE cvis_ei_bankdetail.

  DATA : ls_vendor_central TYPE vmds_ei_vmd_central.

  DATA : ls_central TYPE cmds_ei_central_data.

  DATA : ls_cust_customer TYPE cmds_ei_extern.
  DATA : ls_vend_vendor TYPE vmds_ei_extern.


  DATA: lt_vendors    TYPE vmds_ei_extern_t.
  DATA  ls_vendors TYPE vmds_ei_extern.

  DATA : ls_company_wtax_type TYPE vmds_ei_wtax_type_s.
  DATA : lt_wtax_type TYPE vmds_ei_wtax_type_t.
  DATA : ls_wtax_type TYPE vmds_ei_wtax_type.

*Begin of REPLACE-SAU

  DATA ls_company TYPE vmds_ei_company.
  DATA lt_company TYPE vmds_ei_company_t.
  DATA ls_company_data TYPE vmds_ei_vmd_company.

  DATA ls_purch TYPE vmds_ei_purchasing.
  DATA lt_purch TYPE vmds_ei_purchasing_t.
  DATA ls_purch_data TYPE vmds_ei_vmd_purchasing.
*End of REPLACE-SAU
  DATA ls_dunning TYPE cmds_ei_dunning.
  DATA lt_dunning TYPE cmds_ei_dunning_t.
  DATA ls_dunning_data TYPE cmds_ei_dunning_s.

  DATA ls_taxind TYPE cmds_ei_tax_ind.
  DATA lt_taxind TYPE cmds_ei_tax_ind_t.
  DATA ls_taxind_data TYPE cmds_ei_cmd_tax_ind.

  DATA : ls_bank   TYPE bus_ei_bupa_bankdetail.
  DATA : lt_bank   TYPE bus_ei_bupa_bankdetail_t.
  DATA : ls_bank_detail TYPE bus_ei_bankdetail.


  DATA : ls_receiving TYPE cmds_ei_receiving.
  DATA : lt_receiving TYPE cmds_ei_receiving_t.
  DATA : ls_receiving_data TYPE cmds_ei_cmd_receiving.


  DATA : et_parvw TYPE cmds_parvw_t.
  DATA : lt_purch_func   TYPE vmds_ei_functions_t.
  DATA : ls_purch_func   TYPE vmds_ei_functions.      " Ext. Interface: Partner Roles

  DATA : lv_task TYPE char1,
         lv_guid TYPE but000-partner_guid.

  IF ex EQ 'X'.
    lv_task = 'M'.
  ELSE.
    lv_task = 'I'.
  ENDIF.

****************************************************

  LOOP AT it_file INTO wa_file.
    CLEAR: ls_uuid, ls_but000, ls_partner, ls_partner_data, ls_partner_central_data, ls_partner_central_datax,
           ls_partner_role, ls_partner_role_data, lt_partner_role_data[], ls_header, lt_addressdata[], ls_addressdata,
           ls_address, ls_postal, ls_postaldata, lt_postaldata[], ls_telephone, ls_telephonedata, lt_telephonedata[],
           ls_mail, ls_maildata, lt_maildata[],
           ls_industry, ls_industrydata, lt_industrydata[], ls_vendor_data, ls_vendor_header,
           ls_vendor_central_data, ls_vendor_company_data, ls_vendor_purch_data, ls_taxnumber, lt_taxnumber[], ls_taxnumber_data,
           ls_vendor_address, ls_vend_bank, lt_vend_bank[], ls_vendor_bank, ls_vendor_central, ls_central, ls_cust_customer,
           ls_vend_vendor, lt_vendors[], ls_vendors, ls_company_wtax_type, lt_wtax_type[], ls_wtax_type, ls_company, lt_company[],
           ls_company_data, ls_purch, lt_purch[], ls_purch_data, ls_dunning, lt_dunning[], ls_dunning_data, ls_taxind, lt_taxind[],
           ls_taxind_data, ls_bank, lt_bank[], ls_bank_detail, ls_receiving, lt_receiving[], ls_receiving_data, et_parvw[],
           lt_purch_func[], ls_purch_func.

*** Adding the OBJECT INSTANCE in Central Data for Business Partner.

    ls_partner_data-header-object_task = lv_task.

    IF lv_task EQ 'I'.
* Generating the UUID for each Business Partner.
      CALL FUNCTION 'SYSTEM_UUID_CREATE'
        IMPORTING
          uuid = ls_uuid.
    ELSE.
      SELECT SINGLE partner_guid
        FROM but000
        INTO lv_guid
       WHERE partner EQ wa_file-bpartner.
      IF sy-subrc = 0.
        ls_uuid = lv_guid.
      ENDIF.
    ENDIF.

    ls_partner_data-header-object_instance-bpartnerguid = ls_uuid.

    IF wa_file-bpartner IS NOT INITIAL.
      ls_partner_data-header-object_instance-bpartner = wa_file-bpartner.
    ENDIF.

*** Adding the Common Values in Central Data for Business Partner.
*    IF lv_task EQ 'I'.
    ls_partner_central_data-bp_control-category = wa_file-partn_cat.
    ls_partner_central_data-bp_control-grouping = wa_file-partn_grp.
    ls_partner_central_data-bp_centraldata-searchterm1 = wa_file-sterm1.
    ls_partner_central_data-bp_centraldata-searchterm2 = wa_file-sterm2.
 "   ls_partner_central_data-bp_centraldata-AUTHORIZATIONGROUP = '0001'.
    ls_partner_central_datax-bp_centraldata-searchterm1 = 'X'.
    ls_partner_central_datax-bp_centraldata-searchterm2 = 'X'.
 "   ls_partner_central_datax-bp_centraldata-AUTHORIZATIONGROUP = 'X'.

    IF ls_partner_central_data-bp_control-category = '2'.
      ls_partner_central_data-bp_organization-name1 = wa_file-name1.
      ls_partner_central_data-bp_organization-name2 = wa_file-name2.
      ls_partner_central_data-bp_organization-name3 = wa_file-name3.  "INS -SAU
      ls_partner_central_data-bp_organization-name4 = wa_file-name4.  "INS -SAU

      ls_partner_central_datax-bp_organization-name1 = 'X'.
      ls_partner_central_datax-bp_organization-name2 = 'X'.
      ls_partner_central_datax-bp_organization-name3 = 'X'.      "INS-SAU
      ls_partner_central_datax-bp_organization-name4 = 'X'.      "INS-SAU
    ELSEIF ls_partner_central_data-bp_control-category = '1'.
      ls_partner_central_data-bp_person-firstname = wa_file-name1.
      ls_partner_central_data-bp_person-lastname = wa_file-name2.
      ls_partner_central_data-bp_person-correspondlanguage = wa_file-langu.

      ls_partner_central_datax-bp_person-firstname = 'X'.
      ls_partner_central_datax-bp_person-lastname = 'X'.
      ls_partner_central_datax-bp_person-correspondlanguage = 'X'.
    ENDIF. " IF partnercategory = 2

    ls_partner_data-central_data-common-data = ls_partner_central_data.
    ls_partner_data-central_data-common-datax = ls_partner_central_datax.


*** Adding the Roles in Central Data for Business Partner.
    IF ex EQ 'X'. "For HR vendor
      ls_partner_role_data-task =  'I'.
    ELSE.
      ls_partner_role_data-task = lv_task.
    ENDIF.
    ls_partner_role_data-data_key = 'FLVN00'. "'FLCU00'. REPLACE SAU
    ls_partner_role_data-data-rolecategory = 'FLVN00'. "'FLCU00'.  REPLACE SAU

    APPEND ls_partner_role_data TO lt_partner_role_data.
    CLEAR ls_partner_role_data.

    ls_partner_role_data-task = 'I'.
    ls_partner_role_data-data_key = 'FLVN01'. "'FLCU01'. REPLACE SAU
    ls_partner_role_data-data-rolecategory = 'FLVN01'. "'FLCU01'. REPLACE SAU


    APPEND ls_partner_role_data TO lt_partner_role_data.
    ls_partner_data-central_data-role-roles = lt_partner_role_data.

    IF lv_task = 'I'.
*Begin of SAU - commented
*** Adding the INDUSTRY in Central Data for Business Partner.

*      IF wa_file-indsector IS NOT INITIAL.
*        ls_industry-task = 'I'.
*
*        ls_industry-data_key-keysystem = wa_file-istype.
*        ls_industry-data_key-ind_sector = wa_file-indsector.
*        ls_industry-data-ind_default  = 'X'.
*        ls_industry-datax-ind_default  = 'X'.
*
*
*        ls_industrydata = ls_industry.
*        APPEND ls_industrydata TO lt_industrydata.
*        ls_partner_data-central_data-industry-industries = lt_industrydata.
*      ENDIF.

*End of SAU - commented

*** Adding the TAXNUMBER in Central Data for Business Partner.

      IF wa_file-taxtype IS NOT INITIAL.

        ls_taxnumber-task = 'I'.

        ls_taxnumber-data_key-taxtype = wa_file-taxtype.
        ls_taxnumber-data_key-taxnumber = wa_file-taxnumber.

        APPEND ls_taxnumber TO lt_taxnumber.
        ls_taxnumber_data-taxnumbers = lt_taxnumber.
        ls_partner_data-central_data-taxnumber =  ls_taxnumber_data.

        CLEAR : ls_taxnumber, ls_taxnumber_data .
        REFRESH :  lt_taxnumber.

      ENDIF.


      IF wa_file-taxtyp2 IS NOT INITIAL.

        ls_taxnumber-task = 'I'.

        ls_taxnumber-data_key-taxtype = wa_file-taxtyp2.
        ls_taxnumber-data_key-taxnumber = wa_file-taxnumb2.

        APPEND ls_taxnumber TO lt_taxnumber.
        ls_taxnumber_data-taxnumbers = lt_taxnumber.
        ls_partner_data-central_data-taxnumber =  ls_taxnumber_data.

        CLEAR : ls_taxnumber, ls_taxnumber_data.
        REFRESH :  lt_taxnumber.
      ENDIF.




*** Adding the Address in Central Data for Business Partner.
      REFRESH  : lt_postaldata.
      CLEAR : ls_postal,ls_postaldata.

      ls_postaldata-task = 'I'.

      ls_postal-data-street =     wa_file-street.
      ls_postal-data-str_suppl1 = wa_file-str_suppl1.
      ls_postal-data-str_suppl2 = wa_file-str_suppl2.
      ls_postal-data-str_suppl3 = wa_file-str_suppl3.
      ls_postal-data-house_no   = wa_file-house_no.
      ls_postal-data-location   = wa_file-location  .
      ls_postal-data-district   = wa_file-district  .
      ls_postal-data-postl_cod1 = wa_file-postl_cod1.
      ls_postal-data-city       = wa_file-city      .
      ls_postal-data-country    = wa_file-country   .
      ls_postal-data-region     = wa_file-region    .
      ls_postal-data-langu      = wa_file-langu     .

      ls_postal-datax-street     = 'X'.
      ls_postal-datax-str_suppl1 = 'X'.
      ls_postal-datax-str_suppl2 = 'X'.
      ls_postal-datax-str_suppl3 = 'X'.
      ls_postal-datax-house_no   = 'X'.
      ls_postal-datax-location   = 'X'.
      ls_postal-datax-district   = 'X'.
      ls_postal-datax-postl_cod1 = 'X'.
      ls_postal-datax-city       = 'X'.
      ls_postal-datax-country    = 'X'.
      ls_postal-datax-region     = 'X'.
      ls_postal-datax-langu      = 'X'.


      ls_postaldata-data-postal = ls_postal.
      APPEND ls_postaldata TO lt_postaldata.
      ls_partner_data-central_data-address-addresses = lt_postaldata.




      REFRESH lt_telephonedata.
*For Telphone No
      ls_telephone-task = 'I'.

      ls_telephone-data-country = wa_file-country.
      ls_telephone-data-telephone = wa_file-mob_number.
      ls_telephone-data-std_no = 'X'.
      ls_telephone-data-r_3_user = '3'.
      ls_telephone-data-consnumber = '001'.
      ls_telephone-data-home_flag = 'X'.

      ls_telephone-datax-country = 'X'.
      ls_telephone-datax-telephone = 'X'.
      ls_telephone-datax-std_no = 'X'.
      ls_telephone-datax-r_3_user = 'X'.
      ls_telephone-datax-consnumber = 'X'.
      ls_telephone-datax-home_flag = 'X'.

      ls_telephonedata-contact = ls_telephone.
      APPEND ls_telephonedata TO lt_telephonedata.


*for mobile number
      CLEAR : ls_telephone,ls_telephonedata.
      ls_telephone-task = 'I'.

      ls_telephone-data-country = wa_file-country.
      ls_telephone-data-telephone = wa_file-mob_number.
      ls_telephone-data-std_no = 'X'.
      ls_telephone-data-r_3_user = '1'.
      ls_telephone-data-consnumber = '002'.
      ls_telephone-data-home_flag = 'X'.

      ls_telephone-datax-country = 'X'.
      ls_telephone-datax-telephone = 'X'.
      ls_telephone-datax-std_no = 'X'.
      ls_telephone-datax-r_3_user = 'X'.
      ls_telephone-datax-consnumber = 'X'.
      ls_telephone-datax-home_flag = 'X'.

      ls_telephonedata-contact = ls_telephone.
      APPEND ls_telephonedata TO lt_telephonedata.

*Begin of INS - SAU

*for mobile number
      IF wa_file-mob_number2 IS NOT INITIAL.
        CLEAR : ls_telephone,ls_telephonedata.
        ls_telephone-task = 'I'.

        ls_telephone-data-country = wa_file-country.
        ls_telephone-data-telephone = wa_file-mob_number2.
        ls_telephone-data-std_no = 'X'.
        ls_telephone-data-r_3_user = '1'.
        ls_telephone-data-consnumber = '002'.
        ls_telephone-data-home_flag = 'X'.

        ls_telephone-datax-country = 'X'.
        ls_telephone-datax-telephone = 'X'.
        ls_telephone-datax-std_no = 'X'.
        ls_telephone-datax-r_3_user = 'X'.
        ls_telephone-datax-consnumber = 'X'.
        ls_telephone-datax-home_flag = 'X'.

        ls_telephonedata-contact = ls_telephone.
        APPEND ls_telephonedata TO lt_telephonedata.
      ENDIF.
*End of INS - SAU

      REFRESH lt_maildata.

      ls_mail-task = 'I'.

      ls_mail-data-e_mail = wa_file-smtp_addr.
      ls_mail-data-std_no = 'X'.
      ls_mail-data-std_recip = 'X'.
      ls_mail-data-home_flag = 'X'.
      ls_mail-data-consnumber = '001'.

      ls_mail-datax-e_mail = 'X'.
      ls_mail-datax-std_no = 'X'.
      ls_mail-datax-std_recip = 'X'.
      ls_mail-datax-home_flag = 'X'.
      ls_mail-datax-consnumber = 'X'.


      ls_maildata-contact = ls_mail.
      APPEND ls_maildata TO lt_maildata.
*Begin of INS - SAU
      IF wa_file-smtp_addr2 IS INITIAL.
        ls_mail-data-e_mail = wa_file-smtp_addr2.
        ls_mail-data-std_no = 'X'.
        ls_mail-data-std_recip = 'X'.
        ls_mail-data-home_flag = 'X'.
        ls_mail-data-consnumber = '001'.

        ls_mail-datax-e_mail = 'X'.
        ls_mail-datax-std_no = 'X'.
        ls_mail-datax-std_recip = 'X'.
        ls_mail-datax-home_flag = 'X'.
        ls_mail-datax-consnumber = 'X'.


        ls_maildata-contact = ls_mail.
        APPEND ls_maildata TO lt_maildata.
      ENDIF.


*** Bank Details.

      IF wa_file-bankn IS NOT INITIAL.

        ls_bank-task = 'I'.

        ls_bank-data_key          =  wa_file-bank_id.
        ls_bank-data-bank_ctry    =  wa_file-banks.     "Bank country key
        ls_bank-data-bank_key     =  wa_file-bankl.    "Bank number
        ls_bank-data-bank_acct    =  wa_file-bankn.     "Bank account number
        ls_bank-data-ctrl_key     =  wa_file-ctrl_key.
        ls_bank-data-accountholder  =  wa_file-koinh.


        ls_bank-datax-bank_ctry    =  'X'.
        ls_bank-datax-bank_key     =  'X'.
        ls_bank-datax-bank_acct    =  'X'.
        ls_bank-datax-ctrl_key     = 'X'.
        ls_bank-datax-accountholder = 'X'.

        APPEND ls_bank TO lt_bank.
        ls_bank_detail-bankdetails = lt_bank.

      ENDIF.
    ELSE.
      ls_postal-data-country    = wa_file-country   .
      ls_postal-datax-country    = 'X'.
      ls_postal-data-langu      = wa_file-langu     .
      ls_postal-datax-langu      = 'X'.

      ls_postaldata-data-postal = ls_postal.
      APPEND ls_postaldata TO lt_postaldata.
      ls_partner_data-central_data-address-addresses = lt_postaldata.
    ENDIF.

*End of INS - SAU
    IF lt_telephonedata[] IS NOT INITIAL.
      ls_partner_data-central_data-communication-phone-phone = lt_telephonedata.
    ENDIF.

    IF lt_maildata[] IS NOT INITIAL.
      ls_partner_data-central_data-communication-smtp-smtp = lt_maildata.
    ENDIF.

    IF ls_bank_detail IS NOT INITIAL.
      ls_partner_data-central_data-bankdetail = ls_bank_detail.
    ENDIF.


*   Set the Partner Data in the Global Strucutre.
    gs_masterdata-partner-header = ls_partner_data-header.

    gs_masterdata-partner-central_data = ls_partner_data-central_data.



****************************************************
*** Vendor Update Data
****************************************************

*** Adding the OBJECT INSTANCE Data for Vendor.

    ls_vend_vendor-header-object_instance-lifnr = wa_file-lifnr.
    IF ex EQ 'X'. "For HR vendor
      ls_vend_vendor-header-object_task = 'U'. "Update HR vendor
    else.
      ls_vend_vendor-header-object_task = 'I'.

    ENDIF.

    IF wa_file-ktokk IS INITIAL.
      SELECT ktokk
         FROM tbc001
         INTO ls_vendor_central-data-ktokk
         UP TO 1 ROWS
         WHERE bu_group = wa_file-partn_grp
         ORDER BY PRIMARY KEY.
      ENDSELECT.
    ELSE.
      ls_vendor_central-data-ktokk = wa_file-ktokk.
    ENDIF.

**** Adding the CENTRAL Data for Vendor.
    ls_vendor_central-data-konzs =  wa_file-konzs.
*    ls_vendor_central-data-kunnr =  wa_file-kunnr.
*    ls_vendor_central-data-KTOKK = 'Z002'.
    ls_vendor_central-data-stcd1 =  wa_file-stcd1.
    ls_vendor_central-data-stcd2 =  wa_file-stcd2.
    ls_vendor_central-data-j_1ipanno =  wa_file-j_1ipanno.
    ls_vendor_central-data-ven_class =  wa_file-ven_class.
    ls_vendor_central-data-begru = '0001'.
    IF wa_file-werks IS NOT INITIAL.
      ls_vendor_central-data-WERKS =  wa_file-werks.
      ls_vendor_central-datax-WERKS =  'X'.
    ENDIF.
    ls_vendor_central-datax-konzs =  'X'.
    ls_vendor_central-datax-begru = 'X'.
*    ls_vendor_central-datax-kunnr =  'X'.
    ls_vendor_central-datax-ktokk = 'X'.
    ls_vendor_central-datax-stcd1 =  'X'.
    ls_vendor_central-datax-stcd2 =  'X'.
    ls_vendor_central-datax-j_1ipanno =  'X'.
    ls_vendor_central-datax-ven_class =  'X'.

*End of SAU001-REPLACE
*Begin of REPLACE -SAU
**** Adding the Address Data for Vendor.


    ls_vendor_address-task                      = 'U'.

    IF wa_file-name1 IS NOT INITIAL.
      ls_vendor_address-postal-data-name          = wa_file-name1. "Name of the Vendor
      ls_vendor_address-postal-datax-name         = 'X'.
    ENDIF.

    IF wa_file-country IS NOT INITIAL.
      ls_vendor_address-postal-data-country       = wa_file-country.
    ELSE.
      ls_vendor_address-postal-data-country       = 'IN'.
    ENDIF.

    ls_vendor_address-postal-datax-country      = 'X'.

    ls_vendor_address-postal-data-langu       = 'EN'.
    ls_vendor_address-postal-datax-langu       = 'X'.

    IF wa_file-tranzone IS NOT INITIAL.
      ls_vendor_address-postal-data-transpzone =  wa_file-tranzone.
      ls_vendor_address-postal-datax-transpzone = 'X'.
    ENDIF.

    CLEAR : ls_vendor_bank, ls_vend_bank.
    REFRESH : lt_vend_bank[].


*    ls_vend_bank-task = 'I'.
*
*    ls_vend_bank-data_key-banks      =  wa_file-banks.     "Bank country key
*    ls_vend_bank-data_key-bankl      =  wa_file-bankl.    "Bank number
*    ls_vend_bank-data_key-bankn      =  wa_file-bankn.     "Bank account number
*
*    ls_vend_bank-data-bkref    =  wa_file-bkref.
*    ls_vend_bank-data-koinh    =  wa_file-koinh.
**    ls_vend_bank-data-iban     =  wa_file-iban .
*
*    ls_vend_bank-datax-bkref    =  'X'.
*    ls_vend_bank-datax-koinh    =  'X'.
**    ls_vend_bank-datax-iban     =  'X'.
*
*    APPEND ls_vend_bank TO lt_vend_bank.
*
*    CLEAR :  ls_vend_bank.

    IF wa_file-banks2 IS NOT INITIAL.
      ls_vend_bank-task = 'I'.

      ls_vend_bank-data_key-banks      =  wa_file-banks2.     "Bank country key
      ls_vend_bank-data_key-bankl      =  wa_file-bankl2.    "Bank number
      ls_vend_bank-data_key-bankn      =  wa_file-bankn2.     "Bank account number


      ls_vend_bank-data-bkref    =  wa_file-bkref2.
      ls_vend_bank-data-koinh    =  wa_file-koinh2.
*      ls_vend_bank-data-iban     =  wa_file-iban2.

      ls_vend_bank-datax-bkref    =  'X'.
      ls_vend_bank-datax-koinh    =  'X'.
*      ls_vend_bank-datax-iban     =  'X'.

      APPEND ls_vend_bank TO lt_vend_bank.
      CLEAR :  ls_vend_bank.
    ENDIF.

*    ls_vendor_bank-current_state = 'X'.
    ls_vendor_bank-bankdetails = lt_vend_bank[].


*   Set the CENTRAL for Vendor.
    ls_vend_vendor-central_data-central = ls_vendor_central.
    ls_vend_vendor-central_data-bankdetail =  ls_vendor_bank.
    ls_vend_vendor-central_data-address = ls_vendor_address.

*End of REPLACE - SAU
*&---------------------------------------------------------------------*
*&  *   Set the Company Code and GL Account for Customer
*&---------------------------------------------------------------------*

    REFRESH: lt_company[], lt_dunning[] .
    CLEAR ls_company.

*** Adding the Company code Data for Vendor.
      ls_company-task                    = 'I'. "Create

    ls_company-data_key-bukrs  = wa_file-bukrs.

    CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
      EXPORTING
        input  = wa_file-akont
      IMPORTING
        output = ls_company-data-akont.

    ls_company-data-zterm        = wa_file-zterm. "Terms
    ls_company-data-zuawa        = wa_file-zuawa. "Sort key

*Begin of INS-SAU
    ls_company-data-fdgrv        = wa_file-fdgrv  .
    ls_company-data-altkn        = wa_file-altkn  .
    ls_company-data-zwels        = wa_file-zwels  .
    ls_company-data-hbkid        = wa_file-hbkid  .
    ls_company-data-reprf        = wa_file-reprf  .
    CONDENSE wa_file-intad  NO-GAPS.
    ls_company-data-intad        = wa_file-intad  .
    ls_company-data-busab        = wa_file-busab  .
    ls_company-data-qland        = wa_file-qland  .
    ls_company-data-mindk        = wa_file-mindk  .
    ls_company-data-cerdt        = wa_file-cerdt  .
    ls_company-data-togru        = wa_file-togru  .
    ls_company-data-kverm        = wa_file-kverm  .



    ls_company-datax-fdgrv        =  'X' .
    ls_company-datax-altkn        =  'X' .
    ls_company-datax-zwels        =  'X' .
    ls_company-datax-hbkid        =  'X' .
    ls_company-datax-reprf        =  'X' .
    ls_company-datax-intad        =  'X'.
*End of INS-SAU
    ls_company-datax-akont       = 'X'.
    ls_company-datax-zterm       = 'X'.
    ls_company-datax-zuawa       = 'X'. "Sort key
    ls_company-datax-busab       = 'X'.
    ls_company-datax-qland       = 'X'.
    ls_company-datax-mindk       = 'X'.
    ls_company-datax-cerdt       = 'X'.
    ls_company-datax-togru       = 'X'.
    ls_company-datax-kverm       = 'X'.


*Begin of INS-SAU
*WithHolding tax data
    CLEAR : ls_company_wtax_type .
    REFRESH lt_wtax_type[].
    CLEAR : ls_wtax_type .

* Muthu

    IF wa_file-witht IS NOT INITIAL.
      ls_wtax_type-task = 'I'.

      ls_wtax_type-data_key-witht = wa_file-witht.


      ls_wtax_type-data-wt_subjct   = wa_file-wt_subjct.
      ls_wtax_type-data-qsrec       = wa_file-qsrec    .
      ls_wtax_type-data-wt_wtstcd   = wa_file-wt_wtstcd.
      ls_wtax_type-data-wt_withcd   = wa_file-wt_withcd.

      ls_wtax_type-datax-wt_subjct   = 'X'.
      ls_wtax_type-datax-qsrec       = 'X'.
      ls_wtax_type-datax-wt_wtstcd   = 'X'.
      ls_wtax_type-datax-wt_withcd   = 'X'.
      APPEND ls_wtax_type TO lt_wtax_type.
      CLEAR ls_wtax_type.
    ENDIF.

    IF wa_file-witht2 IS NOT INITIAL.

      ls_wtax_type-task = 'I'.

      ls_wtax_type-data_key-witht = wa_file-witht2.


      ls_wtax_type-data-wt_subjct   = wa_file-wt_subjct2.
      ls_wtax_type-data-qsrec       = wa_file-qsrec2    .
      ls_wtax_type-data-wt_wtstcd   = wa_file-wt_wtstcd2.
      ls_wtax_type-data-wt_withcd   = wa_file-wt_withcd2.

      ls_wtax_type-datax-wt_subjct   = 'X'.
      ls_wtax_type-datax-qsrec       = 'X'.
      ls_wtax_type-datax-wt_wtstcd   = 'X'.
      ls_wtax_type-datax-wt_withcd   = 'X'.


      APPEND ls_wtax_type TO lt_wtax_type.
      CLEAR ls_wtax_type.
    ENDIF.

    ls_company_wtax_type-wtax_type = lt_wtax_type[].

    ls_company-wtax_type = ls_company_wtax_type.


    APPEND ls_company TO lt_company.
    ls_company_data-company = lt_company[].
    ls_vendors-company_data = ls_company_data.


*End of INS-SAU

*****************************************************
** Vendor Purchasing Data Update
*****************************************************
*
**** Adding the Purchasing Data for Vendor.


    REFRESH: lt_purch[] .
    CLEAR ls_purch.


    ls_purch-task                    = 'I'.
    ls_purch-data_key-ekorg = wa_file-ekorg.

    ls_purch-data-waers = wa_file-waers.
    ls_purch-data-kalsk = wa_file-kalsk.
    ls_purch-data-webre = wa_file-webre.
    ls_purch-data-zterm = wa_file-zterm.
    ls_purch-data-inco1 = wa_file-inco1.
    ls_purch-data-inco2 = wa_file-inco2.
    ls_purch-data-kzaut = wa_file-kzaut.
    ls_purch-data-verkf = wa_file-verkf.
    ls_purch-data-telf1 = wa_file-telf1.
    ls_purch-data-vsbed = wa_file-vsbed.
    ls_purch-data-lebre = wa_file-lebre.
    ls_purch-data-ekgrp = wa_file-ekgrp.
    ls_purch-data-plifz = wa_file-plifz.
    ls_purch-data-xersy = wa_file-xersy.
    ls_purch-data-xersr = wa_file-xersr.
    ls_purch-data-xnbwy = wa_file-xnbwy.

    ls_purch-datax-waers = 'X'.
    ls_purch-datax-kalsk = 'X'.
    ls_purch-datax-webre = 'X'.
    ls_purch-datax-zterm = 'X'.
    ls_purch-datax-inco1 = 'X'.
    ls_purch-datax-inco2 = 'X'.
    ls_purch-datax-kzaut = 'X'.
    ls_purch-datax-verkf = 'X'.
    ls_purch-datax-telf1 = 'X'.
    ls_purch-datax-vsbed = 'X'.
    ls_purch-datax-lebre = 'X'.
    ls_purch-datax-ekgrp = 'X'.
    ls_purch-datax-plifz = 'X'.
    ls_purch-datax-xersy = 'X'.
    ls_purch-datax-xersr = 'X'.
    ls_purch-datax-xnbwy = 'X'.


**** Adding the Partner Functions for Vendor.

    REFRESH: et_parvw[], lt_purch_func[].


    CALL METHOD vmd_ei_api_check=>get_mand_partner_functions
      EXPORTING
        iv_ktokk = ls_vendor_central-data-ktokk
      IMPORTING
        et_parvw = et_parvw.

    LOOP AT et_parvw INTO DATA(wa_parvw).

      ls_purch_func-data_key-parvw = wa_parvw-parvw.
*      ls_purch_func-data-partner = ls_vendors-header-object_instance-lifnr.
      ls_purch_func-data-partner = ls_vend_vendor-header-object_instance-lifnr.
      IF ls_purch_func-data-partner IS INITIAL.        "EID-new STE

        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
          EXPORTING
            input  = wa_file-lifnr
          IMPORTING
            output = wa_file-lifnr.

        ls_purch_func-data-partner =  wa_file-lifnr. "EID-new STE

      ENDIF.                                           "EID-new STE

      IF ls_purch_func-data-partner IS NOT INITIAL.
        ls_purch_func-task = 'I'.
        ls_purch_func-datax-partner = 'X'.
      ENDIF.

      APPEND ls_purch_func TO lt_purch_func.
      CLEAR ls_purch_func.
    ENDLOOP. " LOOP AT et_parvw INTO DATA(wa_parvw)



    ls_purch-functions-functions = lt_purch_func[].

    APPEND ls_purch TO lt_purch.
    CLEAR ls_purch.
    ls_purch_data-purchasing = lt_purch[].
    ls_vendors-purchasing_data = ls_purch_data.

    APPEND ls_vendors TO lt_vendors.



*   Set the Vendor data in the Global Strucutre.
    IF ex NE 'X'. "For HR vendor
      gs_masterdata-ensure_create-create_vendor = 'X'.
    ENDIF.
    gs_masterdata-vendor-header = ls_vend_vendor-header.
    gs_masterdata-vendor-central_data = ls_vend_vendor-central_data.
    gs_masterdata-vendor-company_data = ls_vendors-company_data.
    gs_masterdata-vendor-purchasing_data = ls_purch_data.
    APPEND gs_masterdata TO gt_masterdata.

    CLEAR: ls_partner_role_data,ls_industrydata,ls_vendor_address,ls_vendor_bank,ls_vend_bank,ls_vendor_central,ls_central,ls_cust_customer ,
    ls_vend_vendor ,ls_vendors,ls_company_wtax_type,ls_wtax_type,ls_company,ls_company_data,
    ls_purch,ls_purch_data,ls_dunning,ls_dunning_data,ls_taxind,ls_taxind_data,ls_receiving,ls_receiving_data,
    ls_purch_func, ls_bank,ls_bank_detail,ls_taxnumber, ls_taxnumber_data,ls_postal,ls_postaldata,gs_masterdata.

    REFRESH: lt_partner_role_data,lt_industrydata,lt_vend_bank,lt_vendors ,lt_wtax_type,lt_company,
    lt_purch,lt_dunning,lt_taxind,lt_receiving,lt_purch_func,et_parvw, lt_bank,lt_taxnumber,lt_postaldata.


  ENDLOOP. " LOOP AT it_file INTO wa_file

*End of replace-SAU
  PERFORM update_records.
  IF ex EQ ''.
    PERFORM fill_fcat_bplog.
    PERFORM display_log_bp.
  ENDIF.

ENDFORM.

*&---------------------------------------------------------------------*
*&      Form  DISPLAY_LOG_BP
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM display_log_bp .
  CHECK t_log IS NOT INITIAL.
  SORT t_log[].
  DELETE ADJACENT DUPLICATES FROM t_log COMPARING ALL FIELDS.
  SORT t_log BY serial.

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      i_grid_title = 'Log'
      is_layout    = s_layout
      it_fieldcat  = t_fcat
    TABLES
      t_outtab     = t_log
* EXCEPTIONS
*     PROGRAM_ERROR                     = 1
*     OTHERS       = 2
    .
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF. " IF sy-subrc <> 0
  REFRESH t_log.
ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  FILL_FCAT_BPLOG
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM fill_fcat_bplog .
  REFRESH : t_fcat.

  s_layout-colwidth_optimize = 'X'.
  s_layout-zebra = 'X'.
  s_layout-lights_fieldname = 'ICON'.

  w_fcat-fieldname = 'SERIAL'.
  w_fcat-seltext_l = 'Serial'.
  APPEND w_fcat TO t_fcat.
  CLEAR w_fcat.

  w_fcat-fieldname = 'MSGTYP'.
  w_fcat-seltext_l = 'Message Type'.
  APPEND w_fcat TO t_fcat.
  CLEAR w_fcat.

  w_fcat-fieldname = 'MSGNR'.
  w_fcat-seltext_l = 'Message No'.
  APPEND w_fcat TO t_fcat.
  CLEAR w_fcat.

  w_fcat-fieldname = 'BPNO'.
  w_fcat-no_zero = 'X'.
  w_fcat-seltext_l = 'Business Partner'.
  APPEND w_fcat TO t_fcat.
  CLEAR w_fcat.

  w_fcat-fieldname = 'VENDNO'.    "Vendor Number
  w_fcat-seltext_l = 'Vendor'.
  APPEND w_fcat TO t_fcat.
  CLEAR w_fcat.

  w_fcat-fieldname = 'PERNR'.
  w_fcat-no_zero = 'X'.
  w_fcat-seltext_l = 'Employee'.
  APPEND w_fcat TO t_fcat.
  CLEAR w_fcat.

  w_fcat-fieldname = 'MSG'.
  w_fcat-seltext_l = 'Message'.
  APPEND w_fcat TO t_fcat.

*  w_fcat-fieldname = 'BPNAME'.
*  w_fcat-seltext_l = 'Status'."'Business partner Name'.
*  APPEND w_fcat TO t_fcat.


ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  VALIDATIONS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM validations .
  IF p_flname IS INITIAL.
    MESSAGE 'File Name' TYPE 'S'.
    LEAVE LIST-PROCESSING.
  ENDIF. " IF p_flname IS INITIAL
ENDFORM.



*&---------------------------------------------------------------------*
*& Form UPGDATE_RECORDS
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM update_records .

  DATA : lt_return TYPE bapiretm.
  DATA : ls_return TYPE bapireti.
  DATA : lt_bapiretct TYPE bapiretct.
  DATA : ls_bapiretc TYPE bapiretc.

  DATA : lt_return_map TYPE mdg_bs_bp_msgmap_t,
         lt_masterdata TYPE cvis_ei_extern_t,
         ls_masterdata LIKE LINE OF lt_masterdata.

  DATA : ls_return_map TYPE mdg_bs_bp_msgmap.

  DATA : lv_error   TYPE abap_bool,
         lv_test    TYPE abap_bool,
         lv_count   TYPE i,
         lv_tabix   TYPE sy-tabix,
         lv_partner TYPE but000-partner,
         lv_string  TYPE string.

  IF r1 = 'X'.
    lv_test = 'X'.
    CLEAR: lv_partner.

    LOOP AT gt_masterdata INTO gs_masterdata.
      CLEAR: w_log, lv_tabix.

      w_log-serial = sy-tabix.
      lv_count = lv_count + 1.
      IF gs_masterdata-partner-header-object_instance-bpartner IS NOT INITIAL.
        READ TABLE it_file INTO wa_file WITH KEY bpartner = gs_masterdata-partner-header-object_instance-bpartner.
        IF sy-subrc = 0.
          IF lv_partner NE gs_masterdata-partner-header-object_instance-bpartner.
            w_log-serial = wa_file-serial.
            lv_partner = gs_masterdata-partner-header-object_instance-bpartner.
          ELSE.
            w_log-serial = w_log-serial + 1.
          ENDIF.
        ELSE.
          lv_partner = gs_masterdata-partner-header-object_instance-bpartner.
          w_log-serial = w_log-serial + 1.
        ENDIF.
      ELSEIF gs_masterdata-vendor-header-object_instance-lifnr IS NOT INITIAL.
        READ TABLE it_file INTO wa_file WITH KEY lifnr = gs_masterdata-vendor-header-object_instance-lifnr.
        IF sy-subrc = 0.
          IF lv_partner NE gs_masterdata-vendor-header-object_instance-lifnr.
            w_log-serial = wa_file-serial.
            lv_partner = gs_masterdata-vendor-header-object_instance-lifnr.
          ELSE.
            w_log-serial = w_log-serial + 1.
          ENDIF.
        ELSE.
          lv_partner = gs_masterdata-vendor-header-object_instance-lifnr.
          w_log-serial = w_log-serial + 1.
        ENDIF.
      ENDIF.

      CONCATENATE 'Processing BP/Vendor No: ' lv_partner 'from Excel line no: ' wa_file-serial INTO lv_string.
      CALL FUNCTION 'SAPGUI_PROGRESS_INDICATOR'
        EXPORTING
          text = lv_string.

      REFRESH lt_return_map[].
      CALL METHOD cl_md_bp_maintain=>validate_single
        EXPORTING
          i_data        = gs_masterdata
*         i_data_db     =
*         iv_suppress_taxjur_check =
        IMPORTING
          et_return_map = lt_return_map.

      SORT lt_return_map[].
      DELETE ADJACENT DUPLICATES FROM lt_return_map COMPARING ALL FIELDS.
      DELETE lt_return_map WHERE type EQ 'S'.
      DELETE lt_return_map WHERE type EQ 'W'.
      DELETE lt_return_map WHERE type EQ 'I'.

      IF lt_return_map IS NOT INITIAL.
*        SORT lt_return_map[].
*        DELETE ADJACENT DUPLICATES FROM lt_return_map COMPARING ALL FIELDS.
        LOOP AT lt_return_map INTO ls_return_map.
*        w_log-bu_partner = w_filecc-kunnr.
          w_log-bu_partnerx = 'V'.
          w_log-msg  = ls_return_map-message.
          w_log-msgtyp = ls_return_map-type.
          w_log-msgnr = ls_return_map-number.
*          w_log-uzeit = sy-uzeit.
*          w_log-erdat = sy-datum.
*          w_log-uname = sy-uname.
*          w_log-bpname = ls_return_map-parameter.
          w_log-bpno   = gs_masterdata-partner-header-object_instance-bpartner.
          w_log-vendno = gs_masterdata-vendor-header-object_instance-lifnr.

          IF ls_return_map-message IS INITIAL AND ls_return_map-id IS NOT INITIAL.
            MESSAGE ID ls_return_map-id TYPE ls_return_map-type NUMBER ls_return_map-number
                    INTO w_log-msg WITH ls_return_map-message_v1 ls_return_map-message_v2
                         ls_return_map-message_v3 ls_return_map-message_v4.
          ENDIF.

          CASE ls_return_map-type.
            WHEN 'S'.
              w_log-icon = '3'.
            WHEN 'W'.
              w_log-icon = '2'.
            WHEN 'I'.
              w_log-icon = '2'.
            WHEN OTHERS.
              w_log-icon = '1'.
          ENDCASE.

          APPEND w_log TO t_log.
*        INSERT zbp_log FROM w_log.
*          CLEAR w_log.
          CLEAR: ls_return_map.
        ENDLOOP. " LOOP AT es_message_defective-messages INTO DATA(wa)
      ELSE.
        lv_string = lv_count.
        CONCATENATE 'No error found for Excel line item No.' lv_string INTO w_log-msg.
*        w_log-serial = sy-tabix.
*      w_log-serial = wa_file-serial.
        w_log-icon = '3'.
        w_log-bpno   = gs_masterdata-partner-header-object_instance-bpartner.
        w_log-vendno = gs_masterdata-vendor-header-object_instance-lifnr.
        w_log-msgtyp = 'S'.
*        w_log-uzeit = sy-uzeit.
*        w_log-erdat = sy-datum.
*        w_log-bpname = 'Validation Ok'.
        APPEND w_log TO t_log.
        CLEAR: lv_string.
      ENDIF.

      IF gs_masterdata-partner-header-object_instance-bpartner IS NOT INITIAL.
        lv_partner = gs_masterdata-partner-header-object_instance-bpartner.
      ELSEIF gs_masterdata-vendor-header-object_instance-lifnr IS NOT INITIAL.
        lv_partner = gs_masterdata-vendor-header-object_instance-lifnr.
      ENDIF.

      CLEAR: ls_return_map, gs_masterdata.
    ENDLOOP.

    SORT: t_log[].
    DELETE ADJACENT DUPLICATES FROM t_log COMPARING ALL FIELDS.

  ELSEIF r2 = 'X'.

    CLEAR: lv_partner, w_log.
    LOOP AT gt_masterdata INTO gs_masterdata.
      CLEAR: lt_return_map[], ls_return_map, lv_error.
      w_log-serial = sy-tabix.
      IF gs_masterdata-partner-header-object_instance-bpartner IS NOT INITIAL.
        READ TABLE it_file INTO wa_file WITH KEY bpartner = gs_masterdata-partner-header-object_instance-bpartner.
        IF sy-subrc = 0.
          IF lv_partner NE gs_masterdata-partner-header-object_instance-bpartner.
            w_log-serial = wa_file-serial.
            lv_partner = gs_masterdata-partner-header-object_instance-bpartner.
          ELSE.
            w_log-serial = w_log-serial + 1.
          ENDIF.
        ELSE.
          lv_partner = gs_masterdata-partner-header-object_instance-bpartner.
          w_log-serial = w_log-serial + 1.
        ENDIF.
      ELSEIF gs_masterdata-vendor-header-object_instance-lifnr IS NOT INITIAL.
        READ TABLE it_file INTO wa_file WITH KEY lifnr = gs_masterdata-vendor-header-object_instance-lifnr.
        IF sy-subrc = 0.
          IF lv_partner NE gs_masterdata-vendor-header-object_instance-lifnr.
            w_log-serial = wa_file-serial.
            lv_partner = gs_masterdata-vendor-header-object_instance-lifnr.
          ELSE.
            w_log-serial = w_log-serial + 1.
          ENDIF.
        ELSE.
          lv_partner = gs_masterdata-vendor-header-object_instance-lifnr.
          w_log-serial = w_log-serial + 1.
        ENDIF.
      ENDIF.

      CONCATENATE 'Processing BP/Vendor No: ' lv_partner 'from Excel line no: ' wa_file-serial INTO lv_string.
      CALL FUNCTION 'SAPGUI_PROGRESS_INDICATOR'
        EXPORTING
          text = lv_string.

      REFRESH: lt_return_map[] .
      CLEAR: lv_error.
      CALL METHOD cl_md_bp_maintain=>validate_single
        EXPORTING
          i_data        = gs_masterdata
        IMPORTING
          et_return_map = lt_return_map.

      SORT lt_return_map[].
      DELETE ADJACENT DUPLICATES FROM lt_return_map COMPARING ALL FIELDS.

      LOOP AT lt_return_map INTO ls_return_map WHERE type = 'E' OR type = 'A'.
        w_log-msg    = ls_return_map-message.
        w_log-msgtyp = ls_return_map-type.
        w_log-msgnr  = ls_return_map-number.
        w_log-msgid  = ls_return_map-id.
        w_log-bpno   = gs_masterdata-partner-header-object_instance-bpartner.
        w_log-vendno = gs_masterdata-vendor-header-object_instance-lifnr.

        IF ls_return_map-message IS INITIAL AND ls_return_map-id IS NOT INITIAL.
          MESSAGE ID ls_return_map-id TYPE ls_return_map-type NUMBER ls_return_map-number
                  INTO w_log-msg WITH ls_return_map-message_v1 ls_return_map-message_v2
                       ls_return_map-message_v3 ls_return_map-message_v4.
        ENDIF.

        CASE ls_return_map-type.
          WHEN 'S'.
            w_log-icon = '3'.
          WHEN 'W'.
            w_log-icon = '2'.
          WHEN OTHERS.
            w_log-icon = '1'.
            IF wa_file-lifnr IS NOT INITIAL.
              DELETE it_file WHERE lifnr EQ wa_file-lifnr.
              CLEAR: wa_file-lifnr, wa_file-bpartner.
            ENDIF.

            IF wa_file-bpartner IS NOT INITIAL.
              DELETE it_file WHERE bpartner EQ wa_file-bpartner.
              CLEAR: wa_file-lifnr, wa_file-bpartner.
            ENDIF.

        ENDCASE.

        APPEND w_log TO t_log.
        lv_error = abap_true.
      ENDLOOP.
*    ENDLOOP.

      REFRESH: lt_return[], lt_masterdata[].
      IF lv_error NE abap_true.
        APPEND gs_masterdata TO lt_masterdata.

        CALL METHOD cl_md_bp_maintain=>maintain
          EXPORTING
            i_data   = lt_masterdata
          IMPORTING
            e_return = lt_return.
*    ENDIF.

        IF  lt_return[] IS INITIAL.
          IF lv_error IS INITIAL AND lv_test IS INITIAL.
            CALL FUNCTION 'BAPI_TRANSACTION_COMMIT' .
            WAIT UP TO 1 SECONDS.

            CLEAR: ls_masterdata.
            READ TABLE lt_masterdata INTO ls_masterdata INDEX 1.
            IF sy-subrc = 0.

*          w_log-serial = sy-tabix.
              SELECT SINGLE vendor  INTO w_log-vendno "vendor
                FROM cvi_vend_link  WHERE partner_guid  = gs_masterdata-partner-header-object_instance-bpartnerguid.
              IF sy-subrc NE 0.
                w_log-vendno = wa_file-lifnr.
              ENDIF.

              SELECT SINGLE partner INTO w_log-bpno "bu_partner
                FROM but000 WHERE partner_guid  = gs_masterdata-partner-header-object_instance-bpartnerguid.
              IF sy-subrc NE 0.
                w_log-bpno = wa_file-bpartner.
              ENDIF.

              w_log-bu_partnerx = 'V'.
              IF ex = ''.
                w_log-msg  = 'Business Partner & Vendor Created Successfully' .
              ELSE.
                w_log-msg  = 'Business Partner Extended to Vendor Successfully' .
              ENDIF.
              w_log-msgtyp = 'S'.
              w_log-msgnr = '001'.
*              w_log-uzeit = sy-uzeit.
*              w_log-erdat = sy-datum.
*              w_log-uname = sy-uname.
              w_log-bpname = 'BP & Vendor Created' .
              APPEND w_log TO t_log.
            ENDIF.
          ENDIF.
        ELSE.
          CLEAR: ls_masterdata, lt_bapiretct[], lv_error.
          LOOP AT lt_return INTO ls_return.
            CLEAR: ls_masterdata, lt_bapiretct[], lv_error.

            lt_bapiretct = ls_return-object_msg.
            READ TABLE lt_masterdata INTO ls_masterdata INDEX 1.

            LOOP AT lt_bapiretct INTO ls_bapiretc WHERE type  = 'E' OR type = 'A'.
              w_log-bu_partnerx = 'V'.
              w_log-msg  = ls_bapiretc-message.
              w_log-msgtyp = ls_bapiretc-type.
              w_log-msgnr = ls_bapiretc-number.
              w_log-msgid  = ls_bapiretc-id.
*              w_log-uzeit = sy-uzeit.
*              w_log-erdat = sy-datum.
*              w_log-uname = sy-uname.
              w_log-bpno   = ls_masterdata-partner-header-object_instance-bpartner.
              w_log-vendno = ls_masterdata-vendor-header-object_instance-lifnr.

              IF ls_bapiretc-message IS INITIAL AND ls_bapiretc-id IS NOT INITIAL.
                MESSAGE ID ls_bapiretc-id TYPE ls_bapiretc-type NUMBER ls_bapiretc-number
                        INTO w_log-msg WITH ls_bapiretc-message_v1 ls_bapiretc-message_v2
                             ls_bapiretc-message_v3 ls_bapiretc-message_v4.
              ENDIF.

              CASE ls_bapiretc-type.
                WHEN 'S'.
                  w_log-icon = '3'.
                WHEN 'W'.
                  w_log-icon = '2'.
                WHEN OTHERS.
                  w_log-icon = '1'.
                  IF wa_file-lifnr IS NOT INITIAL.
                    DELETE it_file WHERE lifnr EQ wa_file-lifnr.
                    CLEAR: wa_file-lifnr, wa_file-bpartner.
                  ENDIF.

                  IF wa_file-bpartner IS NOT INITIAL.
                    DELETE it_file WHERE bpartner EQ wa_file-bpartner.
                    CLEAR: wa_file-lifnr, wa_file-bpartner.
                  ENDIF.
              ENDCASE.

              APPEND w_log TO t_log.
              lv_error = abap_true.
            ENDLOOP.

            IF lv_error IS INITIAL AND lv_test IS INITIAL.
              CALL FUNCTION 'BAPI_TRANSACTION_COMMIT' .
              WAIT UP TO 1 SECONDS.

              CLEAR: ls_masterdata.
              READ TABLE lt_masterdata INTO ls_masterdata INDEX 1. "w_log-serial.
              IF sy-subrc = 0.

                SELECT SINGLE vendor  INTO w_log-vendno "vendor
                  FROM cvi_vend_link  WHERE partner_guid  = ls_masterdata-partner-header-object_instance-bpartnerguid.
                IF sy-subrc NE 0.
                  w_log-vendno = wa_file-lifnr.
                ENDIF.

                SELECT SINGLE partner INTO w_log-bpno "bu_partner
                  FROM but000 WHERE partner_guid  = ls_masterdata-partner-header-object_instance-bpartnerguid.
                IF sy-subrc NE 0.
                  w_log-bpno = wa_file-bpartner.
                ENDIF.

                w_log-icon = '3'.

                IF ex = ''.
                  w_log-msg  = 'Business Partner & Vendor Created Successfully' .
                ELSE.
                  w_log-msg  = 'Business Partner Extended to Vendor Successfully' .
                ENDIF.

                w_log-msgtyp = 'S'.
                w_log-msgnr = '001'.
                w_log-msgid  = '00'.
                APPEND w_log TO t_log.

              ENDIF.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDIF.

      IF gs_masterdata-partner-header-object_instance-bpartner IS NOT INITIAL.
        lv_partner = gs_masterdata-partner-header-object_instance-bpartner.
      ELSEIF gs_masterdata-vendor-header-object_instance-lifnr IS NOT INITIAL.
        lv_partner = gs_masterdata-vendor-header-object_instance-lifnr.
      ENDIF.
    ENDLOOP.

  ENDIF.

  IF ex EQ 'X'.
    FREE MEMORY ID: 'IT_FILE', 'T_LOG' .
    EXPORT it_file TO MEMORY ID 'IT_FILE'.
    EXPORT t_log TO MEMORY ID 'T_LOG'.
  ENDIF.

ENDFORM.

FORM modify_screen.
  LOOP AT SCREEN.

    IF screen-group1 EQ 'ID1'.
*        screen-input = 0.
      screen-invisible = 1.
    ENDIF.

    MODIFY SCREEN.
  ENDLOOP.

ENDFORM.
