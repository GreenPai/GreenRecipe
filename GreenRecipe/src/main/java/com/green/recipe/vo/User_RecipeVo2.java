package com.green.recipe.vo;

import java.sql.Blob;
import java.util.Arrays;

public class User_RecipeVo2 {
     
	private String  USERID;
	private String  RCP_NM ;
	private String  RCP_PARTS_DTLS;
	private byte[]  ATT_FILE_NO_MAIN;
	private byte[]  ATT_FILE_NO_MAIN2;
	private String  Base64Data;
	private String  HASH_TAG;
	private int  INFO_CAR; 
	private int  INFO_FAT; 
	private int  INFO_NA;
	private int  INFO_PRO; 
	private String  MANUAL01; 
	private byte[]  MANUAL_IMG01; 
	private String  MANUAL02; 
	private byte[]  MANUAL_IMG02; 
	private String  MANUAL03; 
	private byte[]  MANUAL_IMG03; 
	private String  MANUAL04; 
	private byte[]  MANUAL_IMG04; 
	private String  MANUAL05; 
	private byte[]  MANUAL_IMG05; 
	private String  MANUAL06; 
	private byte[]  MANUAL_IMG06; 
	private String  RCP_NA_TIP; 
	private int  RECIPECOUNT; 
	private int  IDX;
	private String  IMG0;
	private String  IMG1;
	private String  IMG2;
	private String  IMG3;
	private String  IMG4;
	private String  IMG5;
	private String  IMG6;
	public String getUSERID() {
		return USERID;
	}
	public void setUSERID(String uSERID) {
		USERID = uSERID;
	}
	public String getRCP_NM() {
		return RCP_NM;
	}
	public void setRCP_NM(String rCP_NM) {
		RCP_NM = rCP_NM;
	}
	public String getRCP_PARTS_DTLS() {
		return RCP_PARTS_DTLS;
	}
	public void setRCP_PARTS_DTLS(String rCP_PARTS_DTLS) {
		RCP_PARTS_DTLS = rCP_PARTS_DTLS;
	}
	public byte[] getATT_FILE_NO_MAIN() {
		return ATT_FILE_NO_MAIN;
	}
	public void setATT_FILE_NO_MAIN(byte[] aTT_FILE_NO_MAIN) {
		ATT_FILE_NO_MAIN = aTT_FILE_NO_MAIN;
	}
	public byte[] getATT_FILE_NO_MAIN2() {
		return ATT_FILE_NO_MAIN2;
	}
	public void setATT_FILE_NO_MAIN2(byte[] aTT_FILE_NO_MAIN2) {
		ATT_FILE_NO_MAIN2 = aTT_FILE_NO_MAIN2;
	}
	public String getBase64Data() {
		return Base64Data;
	}
	public void setBase64Data(String base64Data) {
		Base64Data = base64Data;
	}
	public String getHASH_TAG() {
		return HASH_TAG;
	}
	public void setHASH_TAG(String hASH_TAG) {
		HASH_TAG = hASH_TAG;
	}
	public int getINFO_CAR() {
		return INFO_CAR;
	}
	public void setINFO_CAR(int iNFO_CAR) {
		INFO_CAR = iNFO_CAR;
	}
	public int getINFO_FAT() {
		return INFO_FAT;
	}
	public void setINFO_FAT(int iNFO_FAT) {
		INFO_FAT = iNFO_FAT;
	}
	public int getINFO_NA() {
		return INFO_NA;
	}
	public void setINFO_NA(int iNFO_NA) {
		INFO_NA = iNFO_NA;
	}
	public int getINFO_PRO() {
		return INFO_PRO;
	}
	public void setINFO_PRO(int iNFO_PRO) {
		INFO_PRO = iNFO_PRO;
	}
	public String getMANUAL01() {
		return MANUAL01;
	}
	public void setMANUAL01(String mANUAL01) {
		MANUAL01 = mANUAL01;
	}
	public byte[] getMANUAL_IMG01() {
		return MANUAL_IMG01;
	}
	public void setMANUAL_IMG01(byte[] mANUAL_IMG01) {
		MANUAL_IMG01 = mANUAL_IMG01;
	}
	public String getMANUAL02() {
		return MANUAL02;
	}
	public void setMANUAL02(String mANUAL02) {
		MANUAL02 = mANUAL02;
	}
	public byte[] getMANUAL_IMG02() {
		return MANUAL_IMG02;
	}
	public void setMANUAL_IMG02(byte[] mANUAL_IMG02) {
		MANUAL_IMG02 = mANUAL_IMG02;
	}
	public String getMANUAL03() {
		return MANUAL03;
	}
	public void setMANUAL03(String mANUAL03) {
		MANUAL03 = mANUAL03;
	}
	public byte[] getMANUAL_IMG03() {
		return MANUAL_IMG03;
	}
	public void setMANUAL_IMG03(byte[] mANUAL_IMG03) {
		MANUAL_IMG03 = mANUAL_IMG03;
	}
	public String getMANUAL04() {
		return MANUAL04;
	}
	public void setMANUAL04(String mANUAL04) {
		MANUAL04 = mANUAL04;
	}
	public byte[] getMANUAL_IMG04() {
		return MANUAL_IMG04;
	}
	public void setMANUAL_IMG04(byte[] mANUAL_IMG04) {
		MANUAL_IMG04 = mANUAL_IMG04;
	}
	public String getMANUAL05() {
		return MANUAL05;
	}
	public void setMANUAL05(String mANUAL05) {
		MANUAL05 = mANUAL05;
	}
	public byte[] getMANUAL_IMG05() {
		return MANUAL_IMG05;
	}
	public void setMANUAL_IMG05(byte[] mANUAL_IMG05) {
		MANUAL_IMG05 = mANUAL_IMG05;
	}
	public String getMANUAL06() {
		return MANUAL06;
	}
	public void setMANUAL06(String mANUAL06) {
		MANUAL06 = mANUAL06;
	}
	public byte[] getMANUAL_IMG06() {
		return MANUAL_IMG06;
	}
	public void setMANUAL_IMG06(byte[] mANUAL_IMG06) {
		MANUAL_IMG06 = mANUAL_IMG06;
	}
	public String getRCP_NA_TIP() {
		return RCP_NA_TIP;
	}
	public void setRCP_NA_TIP(String rCP_NA_TIP) {
		RCP_NA_TIP = rCP_NA_TIP;
	}
	public int getRECIPECOUNT() {
		return RECIPECOUNT;
	}
	public void setRECIPECOUNT(int rECIPECOUNT) {
		RECIPECOUNT = rECIPECOUNT;
	}
	public int getIDX() {
		return IDX;
	}
	public void setIDX(int iDX) {
		IDX = iDX;
	}
	public String getIMG0() {
		return IMG0;
	}
	public void setIMG0(String iMG0) {
		IMG0 = iMG0;
	}
	public String getIMG1() {
		return IMG1;
	}
	public void setIMG1(String iMG1) {
		IMG1 = iMG1;
	}
	public String getIMG2() {
		return IMG2;
	}
	public void setIMG2(String iMG2) {
		IMG2 = iMG2;
	}
	public String getIMG3() {
		return IMG3;
	}
	public void setIMG3(String iMG3) {
		IMG3 = iMG3;
	}
	public String getIMG4() {
		return IMG4;
	}
	public void setIMG4(String iMG4) {
		IMG4 = iMG4;
	}
	public String getIMG5() {
		return IMG5;
	}
	public void setIMG5(String iMG5) {
		IMG5 = iMG5;
	}
	public String getIMG6() {
		return IMG6;
	}
	public void setIMG6(String iMG6) {
		IMG6 = iMG6;
	}
	@Override
	public String toString() {
		return "User_RecipeVo2 [USERID=" + USERID + ", RCP_NM=" + RCP_NM + ", RCP_PARTS_DTLS=" + RCP_PARTS_DTLS
				+ ", ATT_FILE_NO_MAIN=" + Arrays.toString(ATT_FILE_NO_MAIN) + ", ATT_FILE_NO_MAIN2="
				+ Arrays.toString(ATT_FILE_NO_MAIN2) + ", Base64Data=" + Base64Data + ", HASH_TAG=" + HASH_TAG
				+ ", INFO_CAR=" + INFO_CAR + ", INFO_FAT=" + INFO_FAT + ", INFO_NA=" + INFO_NA + ", INFO_PRO="
				+ INFO_PRO + ", MANUAL01=" + MANUAL01 + ", MANUAL_IMG01=" + Arrays.toString(MANUAL_IMG01)
				+ ", MANUAL02=" + MANUAL02 + ", MANUAL_IMG02=" + Arrays.toString(MANUAL_IMG02) + ", MANUAL03="
				+ MANUAL03 + ", MANUAL_IMG03=" + Arrays.toString(MANUAL_IMG03) + ", MANUAL04=" + MANUAL04
				+ ", MANUAL_IMG04=" + Arrays.toString(MANUAL_IMG04) + ", MANUAL05=" + MANUAL05 + ", MANUAL_IMG05="
				+ Arrays.toString(MANUAL_IMG05) + ", MANUAL06=" + MANUAL06 + ", MANUAL_IMG06="
				+ Arrays.toString(MANUAL_IMG06) + ", RCP_NA_TIP=" + RCP_NA_TIP + ", RECIPECOUNT=" + RECIPECOUNT
				+ ", IDX=" + IDX + ", IMG0=" + IMG0 + ", IMG1=" + IMG1 + ", IMG2=" + IMG2 + ", IMG3=" + IMG3 + ", IMG4="
				+ IMG4 + ", IMG5=" + IMG5 + ", IMG6=" + IMG6 + "]";
	}
	public User_RecipeVo2(String uSERID, String rCP_NM, String rCP_PARTS_DTLS, byte[] aTT_FILE_NO_MAIN,
			byte[] aTT_FILE_NO_MAIN2, String base64Data, String hASH_TAG, int iNFO_CAR, int iNFO_FAT, int iNFO_NA,
			int iNFO_PRO, String mANUAL01, byte[] mANUAL_IMG01, String mANUAL02, byte[] mANUAL_IMG02, String mANUAL03,
			byte[] mANUAL_IMG03, String mANUAL04, byte[] mANUAL_IMG04, String mANUAL05, byte[] mANUAL_IMG05,
			String mANUAL06, byte[] mANUAL_IMG06, String rCP_NA_TIP, int rECIPECOUNT, int iDX, String iMG0, String iMG1,
			String iMG2, String iMG3, String iMG4, String iMG5, String iMG6) {
		super();
		USERID = uSERID;
		RCP_NM = rCP_NM;
		RCP_PARTS_DTLS = rCP_PARTS_DTLS;
		ATT_FILE_NO_MAIN = aTT_FILE_NO_MAIN;
		ATT_FILE_NO_MAIN2 = aTT_FILE_NO_MAIN2;
		Base64Data = base64Data;
		HASH_TAG = hASH_TAG;
		INFO_CAR = iNFO_CAR;
		INFO_FAT = iNFO_FAT;
		INFO_NA = iNFO_NA;
		INFO_PRO = iNFO_PRO;
		MANUAL01 = mANUAL01;
		MANUAL_IMG01 = mANUAL_IMG01;
		MANUAL02 = mANUAL02;
		MANUAL_IMG02 = mANUAL_IMG02;
		MANUAL03 = mANUAL03;
		MANUAL_IMG03 = mANUAL_IMG03;
		MANUAL04 = mANUAL04;
		MANUAL_IMG04 = mANUAL_IMG04;
		MANUAL05 = mANUAL05;
		MANUAL_IMG05 = mANUAL_IMG05;
		MANUAL06 = mANUAL06;
		MANUAL_IMG06 = mANUAL_IMG06;
		RCP_NA_TIP = rCP_NA_TIP;
		RECIPECOUNT = rECIPECOUNT;
		IDX = iDX;
		IMG0 = iMG0;
		IMG1 = iMG1;
		IMG2 = iMG2;
		IMG3 = iMG3;
		IMG4 = iMG4;
		IMG5 = iMG5;
		IMG6 = iMG6;
	}
	public User_RecipeVo2() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

	}
	
	
	









