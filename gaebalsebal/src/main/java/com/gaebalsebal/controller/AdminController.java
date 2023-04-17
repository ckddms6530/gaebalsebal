package com.gaebalsebal.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.service.interfaces.AdminService;
import com.gaebalsebal.service.interfaces.BoardService;

import lombok.RequiredArgsConstructor;



@Controller
@RequestMapping("/admin/*")
@RequiredArgsConstructor
public class AdminController {

private final AdminService service;

    @GetMapping("excel")
    public void excelDownload(HttpServletResponse response) throws IOException {
//        Workbook wb = new HSSFWorkbook();
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet("첫번째 시트");
        Row row = null;
        Cell cell = null;
        int rowNum = 0;


        // Header
        row = sheet.createRow(rowNum++);
        cell =  row.createCell(0);
        cell.setCellValue("번호");
        cell = row.createCell(1);
        cell.setCellValue("작성자");
        cell = row.createCell(2);
        cell.setCellValue("제목");
        cell = row.createCell(3);
        cell.setCellValue("내용");
        cell = row.createCell(4);
        cell.setCellValue("작성일");
        cell = row.createCell(5);
        cell.setCellValue("게시글허용");
    


        // Body
        for ( BoardVO list : service.getNonActiveBoardList()) {
            row = sheet.createRow(rowNum++);
            cell = row.createCell(0);
            cell.setCellValue( list.getBoard_no());
            cell = row.createCell(1);
            cell.setCellValue( list.getBoard_writer());
            cell = row.createCell(2);
            cell.setCellValue(list.getBoard_title());
            cell = row.createCell(3);
            cell.setCellValue(list.getBoard_content());
            cell = row.createCell(4);
            cell.setCellValue(list.getBoard_create_date());
            cell = row.createCell(5);
            cell.setCellValue(list.getBoard_use_yn());
        }

        // 컨텐츠 타입과 파일명 지정
        response.setContentType("ms-vnd/excel");
//        response.setHeader("Content-Disposition", "attachment;filename=example.xls");
        response.setHeader("Content-Disposition", "attachment;filename=삭제한 게시물 리스트.xlsx");

        // Excel File Output
        wb.write(response.getOutputStream());
        wb.close();
    }

}