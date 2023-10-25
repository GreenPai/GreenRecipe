package com.green.pds.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.pds.vo.FilesVo;
import com.green.pds.vo.PdsVo;

public interface PdsService {

	List<PdsVo> getPdsList(HashMap<String, Object> map);

	PdsVo getView(HashMap<String, Object> map);

	void setWrite(HashMap<String, Object> map, HttpServletRequest request);

	List<FilesVo> getFileList(HashMap<String, Object> map);

	void setDelete(HashMap<String, Object> map);

	void deleteUploadFile(HashMap<String, Object> map);

	void setUpdate(HashMap<String, Object> map, HttpServletRequest request);

	void setReadcountUpdate(HashMap<String, Object> map);

	List<PdsVo> getPdsList();

	PdsVo boardBoomUp(PdsVo vo);

	PdsVo boardBoomDown(PdsVo vo);

	List<FilesVo> getFileName(HashMap<String, Object> map);

	boolean PdsBoomCheck(int idx, String userid);


}
