// dummy table
entity dummy {
    key id : Integer;
}

//master table

//회사코드 텍스트
entity mtx_corpcode {
    key corp_cd : String(10); //회사코드
    key langu   : String(2); //언어
        short   : String(20); //짧은 내역
        middle  : String(40); //중간 내역
        long    : String(60); //긴 내역
}

// 영역 텍스트
entity mtx_domain {
    key corp_cd : String(10); //회사코드
    key domain  : String(10); //영역
    key langu   : String(2); //언어
        short   : String(20); //짧은 내역
        middle  : String(40); //중간 내역
        long    : String(60); //긴 내역
}


// 항목 텍스트
entity mtx_item {
    key corp_cd : String(10); //회사코드
    key domain  : String(10); //영역
    key item    : String(10); //항목
    key langu   : String(2); //언어
        short   : String(20); //짧은 내역
        middle  : String(40); //중간 내역
        long    : String(60); //긴 내역
}

// 항목 속성
entity mat_item {
    key corp_cd       : String(10); //회사코드
    key domain        : String(10); //영역
    key item          : String(10); //항목
    key cycle         : String(2); //주기
        system        : String(20); //시스템
        detail_system : String(100); //상세시스템
        createdat     : DateTime; //생성일자
        createdby     : String(10); //생성자(사원번호)
        modifiedat    : DateTime; //변경일자
        modifiedby    : String(10); //변경자(사원번호)
        delete_flag   : String(1); // delete flag

}

//주기 텍스트
entity mtx_cycle {
    key cycle  : String(2); //주기
    key langu  : String(2); //언어
        short  : String(20); //짧은 내역
        middle : String(40); //중간 내역
        long   : String(60); //긴 내역
}

//시스템 텍스트
entity mtx_system {
    key system : String(20); //시스템
    key langu  : String(2); //언어
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
    key langu    : String(2); //언어
        short    : String(20); //짧은 내역
        middle   : String(40); //중간 내역
        long     : String(60); //긴 내역
}

//부서 텍스트
entity mtx_department {
    key department : String(10); //부서
    key langu      : String(2); //언어
        short      : String(20); //짧은 내역
        middle     : String(40); //중간 내역
        long       : String(60); //긴 내역
}

//KPI 비교기준 텍스트
entity mtx_kpistandrd {
    key kpistandrd : String(10); //KPI 비교기준
    key langu      : String(2); //언어
        short      : String(20); //짧은 내역
        middle     : String(40); //중간 내역
        long       : String(60); //긴 내역
}

//KPI 비교등급 텍스트
entity mtx_kpigrade {
    key kpigrade : String(10); //KPI 비교등급
    key langu    : String(2); //언어
        short    : String(20); //짧은 내역
        middle   : String(40); //중간 내역
        long     : String(60); //긴 내역
}

//KPI 비교연산자 텍스트
entity mtx_kpioperator {
    key kpioperator : String(10); //KPI 비교연산자
    key langu       : String(2); //언어
        short       : String(20); //짧은 내역
        middle      : String(40); //중간 내역
        long        : String(60); //긴 내역
}

//transaction table

// KPI 입력화면: S01
entity trx_kpi_input_s01 {
    key corp_cd       : String(10); //회사코드
    key domain        : String(10); //영역
    key item          : String(10); //항목
    key cycle         : String(2); //주기
    key kpiseq        : Integer; //KPI Sequence
        kpistandrd    : String(10); //KPI 비교기준
        kpigrade      : String(10); //KPI 비교등급
        kpioperator   : String(10); //KPI 비교연산자
        kpi_min_value : Decimal(17, 3); // KPI Minimum Value
        kpi_max_value : Decimal(17, 3); // KPI Maximum Value
        detal_comment : String(1000); //상세설명
        attachedfile  : LargeBinary; //첨부파일
        createdat     : DateTime; //생성일자
        createdby     : String(10); //생성자(사원번호)
        modifiedat    : DateTime; //변경일자
        modifiedby    : String(10); //변경자(사원번호)
}
