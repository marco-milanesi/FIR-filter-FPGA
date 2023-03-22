function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/a1 */
	this.urlHashMap["sfir_fixed:45"] = "symmetric_fir.v:216,217,218";
	/* <S1>/a2 */
	this.urlHashMap["sfir_fixed:46"] = "symmetric_fir.v:224,225,226";
	/* <S1>/a3 */
	this.urlHashMap["sfir_fixed:47"] = "symmetric_fir.v:229,230,231";
	/* <S1>/a4 */
	this.urlHashMap["sfir_fixed:48"] = "symmetric_fir.v:237,238,239";
	/* <S1>/a5 */
	this.urlHashMap["sfir_fixed:49"] = "symmetric_fir.v:245,246,247";
	/* <S1>/a6 */
	this.urlHashMap["sfir_fixed:50"] = "symmetric_fir.v:253,254,255";
	/* <S1>/m1 */
	this.urlHashMap["sfir_fixed:51"] = "symmetric_fir.v:221";
	/* <S1>/m2 */
	this.urlHashMap["sfir_fixed:52"] = "symmetric_fir.v:242";
	/* <S1>/m3 */
	this.urlHashMap["sfir_fixed:53"] = "symmetric_fir.v:234";
	/* <S1>/m4 */
	this.urlHashMap["sfir_fixed:54"] = "symmetric_fir.v:250";
	/* <S1>/ud1 */
	this.urlHashMap["sfir_fixed:55"] = "symmetric_fir.v:112,113,114,115,116,117,118,119,120,121,122";
	/* <S1>/ud2 */
	this.urlHashMap["sfir_fixed:56"] = "symmetric_fir.v:125,126,127,128,129,130,131,132,133,134,135";
	/* <S1>/ud3 */
	this.urlHashMap["sfir_fixed:57"] = "symmetric_fir.v:138,139,140,141,142,143,144,145,146,147,148";
	/* <S1>/ud4 */
	this.urlHashMap["sfir_fixed:58"] = "symmetric_fir.v:151,152,153,154,155,156,157,158,159,160,161";
	/* <S1>/ud5 */
	this.urlHashMap["sfir_fixed:59"] = "symmetric_fir.v:164,165,166,167,168,169,170,171,172,173,174";
	/* <S1>/ud6 */
	this.urlHashMap["sfir_fixed:60"] = "symmetric_fir.v:177,178,179,180,181,182,183,184,185,186,187";
	/* <S1>/ud7 */
	this.urlHashMap["sfir_fixed:61"] = "symmetric_fir.v:190,191,192,193,194,195,196,197,198,199,200";
	/* <S1>/ud8 */
	this.urlHashMap["sfir_fixed:62"] = "symmetric_fir.v:203,204,205,206,207,208,209,210,211,212,213";
	/* <S1>/y_out_pre */
	this.urlHashMap["sfir_fixed:63"] = "symmetric_fir.v:258,259,260";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "sfir_fixed"};
	this.sidHashMap["sfir_fixed"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/x_in"] = {sid: "sfir_fixed:40"};
	this.sidHashMap["sfir_fixed:40"] = {rtwname: "<S1>/x_in"};
	this.rtwnameHashMap["<S1>/h_in1"] = {sid: "sfir_fixed:41"};
	this.sidHashMap["sfir_fixed:41"] = {rtwname: "<S1>/h_in1"};
	this.rtwnameHashMap["<S1>/h_in2"] = {sid: "sfir_fixed:42"};
	this.sidHashMap["sfir_fixed:42"] = {rtwname: "<S1>/h_in2"};
	this.rtwnameHashMap["<S1>/h_in3"] = {sid: "sfir_fixed:43"};
	this.sidHashMap["sfir_fixed:43"] = {rtwname: "<S1>/h_in3"};
	this.rtwnameHashMap["<S1>/h_in4"] = {sid: "sfir_fixed:44"};
	this.sidHashMap["sfir_fixed:44"] = {rtwname: "<S1>/h_in4"};
	this.rtwnameHashMap["<S1>/a1"] = {sid: "sfir_fixed:45"};
	this.sidHashMap["sfir_fixed:45"] = {rtwname: "<S1>/a1"};
	this.rtwnameHashMap["<S1>/a2"] = {sid: "sfir_fixed:46"};
	this.sidHashMap["sfir_fixed:46"] = {rtwname: "<S1>/a2"};
	this.rtwnameHashMap["<S1>/a3"] = {sid: "sfir_fixed:47"};
	this.sidHashMap["sfir_fixed:47"] = {rtwname: "<S1>/a3"};
	this.rtwnameHashMap["<S1>/a4"] = {sid: "sfir_fixed:48"};
	this.sidHashMap["sfir_fixed:48"] = {rtwname: "<S1>/a4"};
	this.rtwnameHashMap["<S1>/a5"] = {sid: "sfir_fixed:49"};
	this.sidHashMap["sfir_fixed:49"] = {rtwname: "<S1>/a5"};
	this.rtwnameHashMap["<S1>/a6"] = {sid: "sfir_fixed:50"};
	this.sidHashMap["sfir_fixed:50"] = {rtwname: "<S1>/a6"};
	this.rtwnameHashMap["<S1>/m1"] = {sid: "sfir_fixed:51"};
	this.sidHashMap["sfir_fixed:51"] = {rtwname: "<S1>/m1"};
	this.rtwnameHashMap["<S1>/m2"] = {sid: "sfir_fixed:52"};
	this.sidHashMap["sfir_fixed:52"] = {rtwname: "<S1>/m2"};
	this.rtwnameHashMap["<S1>/m3"] = {sid: "sfir_fixed:53"};
	this.sidHashMap["sfir_fixed:53"] = {rtwname: "<S1>/m3"};
	this.rtwnameHashMap["<S1>/m4"] = {sid: "sfir_fixed:54"};
	this.sidHashMap["sfir_fixed:54"] = {rtwname: "<S1>/m4"};
	this.rtwnameHashMap["<S1>/ud1"] = {sid: "sfir_fixed:55"};
	this.sidHashMap["sfir_fixed:55"] = {rtwname: "<S1>/ud1"};
	this.rtwnameHashMap["<S1>/ud2"] = {sid: "sfir_fixed:56"};
	this.sidHashMap["sfir_fixed:56"] = {rtwname: "<S1>/ud2"};
	this.rtwnameHashMap["<S1>/ud3"] = {sid: "sfir_fixed:57"};
	this.sidHashMap["sfir_fixed:57"] = {rtwname: "<S1>/ud3"};
	this.rtwnameHashMap["<S1>/ud4"] = {sid: "sfir_fixed:58"};
	this.sidHashMap["sfir_fixed:58"] = {rtwname: "<S1>/ud4"};
	this.rtwnameHashMap["<S1>/ud5"] = {sid: "sfir_fixed:59"};
	this.sidHashMap["sfir_fixed:59"] = {rtwname: "<S1>/ud5"};
	this.rtwnameHashMap["<S1>/ud6"] = {sid: "sfir_fixed:60"};
	this.sidHashMap["sfir_fixed:60"] = {rtwname: "<S1>/ud6"};
	this.rtwnameHashMap["<S1>/ud7"] = {sid: "sfir_fixed:61"};
	this.sidHashMap["sfir_fixed:61"] = {rtwname: "<S1>/ud7"};
	this.rtwnameHashMap["<S1>/ud8"] = {sid: "sfir_fixed:62"};
	this.sidHashMap["sfir_fixed:62"] = {rtwname: "<S1>/ud8"};
	this.rtwnameHashMap["<S1>/y_out_pre"] = {sid: "sfir_fixed:63"};
	this.sidHashMap["sfir_fixed:63"] = {rtwname: "<S1>/y_out_pre"};
	this.rtwnameHashMap["<S1>/y_out"] = {sid: "sfir_fixed:64"};
	this.sidHashMap["sfir_fixed:64"] = {rtwname: "<S1>/y_out"};
	this.rtwnameHashMap["<S1>/delayed_xout"] = {sid: "sfir_fixed:65"};
	this.sidHashMap["sfir_fixed:65"] = {rtwname: "<S1>/delayed_xout"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
