using {
    mtx_corpcode    as masterText_corpcode,
    mtx_domain      as masterText_domain,
    mtx_item        as masterText_item,
    mat_item        as masterAttr_item,
    mtx_cycle       as masterText_cycle,
    mtx_system      as masterText_system,
    mat_employee    as masterAttr_employee,
    mtx_employee    as masterText_employee,
    mtx_department  as masterText_department,
    mtx_kpiunit     as masterText_kpiunit,
    mtx_kpistatus   as masterText_kpistatus,
    mtx_kpioperator as masterText_kpioperator,
    trx_kpi_input_s01 as tranasction_kpiinputscreen01
} from '../db/schema';


service MasterData @(path : 'MasterData') {

    view mtx_corpcode as select from masterText_corpcode;

    entity mtx_domain      as projection on masterText_domain;
    entity mtx_item        as projection on masterText_item;
    entity mat_item        as projection on masterAttr_item;
    entity mtx_cycle       as projection on masterText_cycle;
    entity mtx_system      as projection on masterText_system;
    entity mat_employee    as projection on masterAttr_employee;
    entity mtx_employee    as projection on masterText_employee;
    entity mtx_department  as projection on masterText_department;
    entity mtx_kpiunit     as projection on masterText_kpiunit;
    entity mtx_kpistatus   as projection on masterText_kpistatus;
    entity mtx_kpioperator as projection on masterText_kpioperator;

    entity trx_kpi_input_s01 as projection on tranasction_kpiinputscreen01;

}
