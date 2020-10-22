// dummy table
entity dummy {
    key id : Integer;
}

//master table

//회사코드 텍스트
entity mtx_corpcode {
    key corp_cd : String(10); //회사코드
        langu   : String(2); //언어
        short   : String(20); //짧은 내역
        middle  : String(40); //중간 내역
        long    : String(60); //긴 내역
}

// 영역 텍스트
entity mtx_domain {
    key corp_cd : String(10); //회사코드
    key domain  : String(10); //영역
        langu   : String(2); //언어
        short   : String(20); //짧은 내역
        middle  : String(40); //중간 내역
        long    : String(60); //긴 내역
}


// 항목 텍스트
entity mtx_item {
    key corp_cd : String(10); //회사코드
    key domain  : String(10); //영역
    key item    : String(10); //항목
        langu   : String(2); //언어
        short   : String(20); //짧은 내역
        middle  : String(40); //중간 내역
        long    : String(60); //긴 내역
}

// 항목 속성
entity mat_item {
    key corp_cd       : String(10); //회사코드
    key domain        : String(10); //영역
    key item          : String(10); //항목
        cycle         : String(2); //주기
        system        : String(20); //시스템
        detail_system : String(100); //상세시스템
        manager       : String(10); //담당자
        respn_prsn    : String(10); //책임자
        kpiunit       : String(10); //KPI unit
        kpistatus     : String(10); //KPI status
        kpioperator   : String(10); //KPI operator
        kpi_min_value : Decimal(17, 3); // KPI minimum value
        kpi_max_value : Decimal(17, 3); // KPI maximum value
        createdat     : DateTime; //생성일자
        createdby     : String(10); //생성자(사원번호)
        modifiedat    : DateTime; //변경일자
        modifiedby    : String(10); //변경자(사원번호)
        delete_flag   : String(1); // delete flag

}

//주기 텍스트
entity mtx_cycle {
    key cycle  : String(2); //주기
        langu  : String(2); //언어
        short  : String(20); //짧은 내역
        middle : String(40); //중간 내역
        long   : String(60); //긴 내역
}

//시스템 텍스트
entity mtx_system {
    key system : String(20); //시스템
        langu  : String(2); //언어
        short  : String(20); //짧은 내역
        middle : String(40); //중간 내역
        long   : String(60); //긴 내역
}

//사원번호 속성
entity mat_employee {
    key employee   : String(10); //사원번호
        corp_cd    : String(10); //회사코드
        department : String(10); //부서
        position   : String(20); //직위
}

//사원번호 텍스트
entity mtx_employee {
    key employee : String(10); //사원번호
        langu    : String(2); //언어
        short    : String(20); //짧은 내역
        middle   : String(40); //중간 내역
        long     : String(60); //긴 내역
}

//부서 텍스트
entity mtx_department {
    key department : String(10); //부서
        langu      : String(2); //언어
        short      : String(20); //짧은 내역
        middle     : String(40); //중간 내역
        long       : String(60); //긴 내역
}

//kpi unit 텍스트
entity mtx_kpiunit {
    key kpiunit : String(10); //kpi unit
        langu   : String(2); //언어
        short   : String(20); //짧은 내역
        middle  : String(40); //중간 내역
        long    : String(60); //긴 내역
}

//kpi status 텍스트
entity mtx_kpistatus {
    key kpistatus : String(10); //kpi status
        langu     : String(2); //언어
        short     : String(20); //짧은 내역
        middle    : String(40); //중간 내역
        long      : String(60); //긴 내역
}

//kpi operator 텍스트
entity mtx_kpioperator {
    key kpioperator : String(10); //kpi operator
        langu       : String(2); //언어
        short       : String(20); //짧은 내역
        middle      : String(40); //중간 내역
        long        : String(60); //긴 내역
}

//transaction table
