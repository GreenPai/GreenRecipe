package com.green.pds.dao;

import java.util.HashMap;
import java.util.List;

import com.green.pds.vo.FilesVo;
import com.green.pds.vo.PdsVo;

public interface PdsDao {

	List<PdsVo> getPdsList(HashMap<String, Object> map);

	PdsVo getView(HashMap<String, Object> map);

	void setWrite(HashMap<String, Object> map);

	List<FilesVo> getFileList(HashMap<String, Object> map);

	void setDelete(HashMap<String, Object> map);

	void deleteUploadFile(HashMap<String, Object> map);

	void setUpdate(HashMap<String, Object> map);

	void setReadcountUpdate(HashMap<String, Object> map);

	List<PdsVo> getPdsList();

    PdsVo  boardBoomUp(PdsVo vo);

	PdsVo boardBoomDown(PdsVo vo);

	boolean PdsBoomCheck(int idx, String userid);

	List<FilesVo> PdsfileName(HashMap<String, Object> map);


}
