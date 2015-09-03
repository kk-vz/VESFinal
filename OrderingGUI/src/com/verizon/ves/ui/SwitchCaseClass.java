package com.verizon.ves.ui;

public class SwitchCaseClass {
	
	public String StateName(String state) {
		String stateid = null;
		System.out.println("st" + state);
		switch(state)
		{
		case "ALASKA":
			   stateid="1";
		break;

		case "ARIZONA":
			   stateid="2";
		break;

		case "CALIFORNIA":
			   stateid="3";
		break;

		case "COLORADO":
			   stateid="4";
		break;

		case "FLORIDA":
			   stateid="5";
		break;

		case "GEORGIA":
			   stateid="6";
		break;

		case "HAWAII":
			   stateid="7";
		break;

		case "INDIANA":
			   stateid="8";
		break;

		case "KENTUCKY":
			   stateid="9";
		break;

		case "MICHIGAN":
			   stateid="10";
		break;

		case "MISSISSIPPI":
			   stateid="11";
		break;

		case "MISSOURI":
			   stateid="12";
		break;

		case "NEW HAMSPHIRE":
			   stateid="13";
		break;

		case "NEW JERSEY":
			   stateid="14";
		break;

		case "NEW MEXICO":
			   stateid="15";
		break;

		case "NEW YORK":
			   stateid="16";
		break;

		case "OKLAHOMA":
			   stateid="17";
		break;

		case "OREGON":
			   stateid="18";
		break;

		case "PENNSYLVANIA":
			   stateid="19";
		break;

		case "TENNESSE":
			   stateid="20";
		break;

		case "TEXAS":
			   stateid="21";
		break;

		case "VERMONT":
			   stateid="22";
		break;

		case "VIRGINIA":
			   stateid="23";
		break;

		case "WASHINGTON":
			   stateid="24";
		break;

		case "WEST VIRGINIA":
			   stateid="25";
		break;
	}	
		return stateid;
	}

	
	public String serviceName(String servicecode){
	
		String servicename = null;
		
	switch(servicecode){
	
	case "b2000" :
		servicename = "ap_3g_200_vo_200";
		break;
	case "b2001" :
		servicename = "ap_4g_250_vi_200";
		break;
	case "b2002" :
		servicename = "pi_vovi_250_200_125";
		break;
	case "b2003" :
		servicename = "pi_vi_250_250_225";
		break;
	case "b2004" :
		servicename = "api_4g_250_vi_200_200_125";
		break;
	case "b2005" :
		servicename = "api_4glte_250_vovi_250_200_125";
		break;

	case "p1000" :
		servicename = "access_3g_200";
		break;
	case "p1001" :
		servicename = "access_4g_300";
		break;
	case "p1002" :
		servicename = "access_4g_250";
		break;
	case "p1003" :
		servicename = "access_4glte_250";
		break;
	case "p1004" :
		servicename = "access_4glte_300";
		break;
	case "p1005" :
		servicename = "voice_200";
		break;
	case "p1006" :
		servicename = "video_200";
		break;
	case "p1007" :
		servicename = "video_250";
		break;
	case "p1008" :
		servicename = "voice_video_250";
		break;
	case "p1009" :
		servicename = "voice_video_300";
		break;
	case "p1010" :
		servicename = "id_200_125";
		break;
	case "p1011" :
		servicename = "id_200_175";
		break;
	case "p1012" :
		servicename = "id_250_225";
		break;
	case "p1013" :
		servicename = "id_300_225";
		break;
	case "p1014" :
		servicename = "id_300_275";
		break;
	
	}
     return servicename;
   }

}
