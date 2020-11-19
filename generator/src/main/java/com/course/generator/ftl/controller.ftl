package com.course.business.controller.admin;

import com.course.server.dto.${Domain}Dto;
import com.course.server.dto.PageDto;
import com.course.server.dto.ResponseDto;
import com.course.server.service.${Domain}Service;
import com.course.server.util.ValidatorUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;


@RestController
@RequestMapping("/admin/${domain}")
public class ${Domain}Controller {
private static final Logger LOG = LoggerFactory.getLogger(${Domain}Controller.class);
public static final String BUSINESS_NAME = "${tableNameCn}";

@Resource
private ${Domain}Service ${domain}Service;

@PostMapping("/list")
public ResponseDto list(@RequestBody PageDto pageDto) {
LOG.info("pageDto:{}", pageDto);
ResponseDto responseDto =new ResponseDto();
${domain}Service.list(pageDto);
responseDto.setContent(pageDto);
return responseDto;
}

@PostMapping("/save")
public ResponseDto save(@RequestBody ${Domain}Dto ${domain}Dto) {
LOG.info("${domain}Dto:{}", ${domain}Dto);

ValidatorUtil.require(${domain}Dto.getId(), "名称");
ValidatorUtil.require(${domain}Dto.getCourseId(), "课程ID");
ValidatorUtil.length(${domain}Dto.getCourseId(), "课程ID", 1, 8);




ResponseDto responseDto =new ResponseDto();
${domain}Service.save(${domain}Dto);
responseDto.setContent(${domain}Dto);
return responseDto;
}

@DeleteMapping("/delete/{id}")
public ResponseDto save(@PathVariable String id) {
LOG.info("id:{}", id);
ResponseDto responseDto =new ResponseDto();
${domain}Service.delete(id);

return responseDto;
}

}
