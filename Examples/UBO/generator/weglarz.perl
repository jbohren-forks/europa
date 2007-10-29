#!/usr/bin/perl

$basedir = "./data/weglarz/";

$run10_x_times = 1;
$run20_x_times = 1;
$run30_x_times = 1;

@instances10 = ("PSP1.SCH","PSP3.SCH","PSP4.SCH","PSP5.SCH","PSP7.SCH","PSP8.SCH","PSP9.SCH","PSP10.SCH","PSP11.SCH","PSP13.SCH","PSP15.SCH","PSP16.SCH","PSP18.SCH","PSP19.SCH","PSP20.SCH","PSP21.SCH","PSP22.SCH","PSP23.SCH","PSP24.SCH","PSP25.SCH","PSP28.SCH","PSP29.SCH","PSP30.SCH","PSP33.SCH","PSP34.SCH","PSP35.SCH","PSP36.SCH","PSP37.SCH","PSP38.SCH","PSP39.SCH","PSP43.SCH","PSP44.SCH","PSP45.SCH","PSP46.SCH","PSP47.SCH","PSP49.SCH","PSP50.SCH","PSP52.SCH","PSP53.SCH","PSP54.SCH","PSP56.SCH","PSP57.SCH","PSP58.SCH","PSP59.SCH","PSP60.SCH","PSP62.SCH","PSP63.SCH","PSP64.SCH","PSP65.SCH","PSP69.SCH","PSP70.SCH","PSP73.SCH","PSP75.SCH","PSP77.SCH","PSP78.SCH","PSP79.SCH","PSP80.SCH","PSP81.SCH","PSP82.SCH","PSP83.SCH","PSP84.SCH","PSP85.SCH","PSP86.SCH","PSP87.SCH","PSP88.SCH","PSP89.SCH","PSP90.SCH","PSP91.SCH","PSP94.SCH","PSP95.SCH","PSP96.SCH","PSP97.SCH","PSP99.SCH","PSP100.SCH","PSP101.SCH","PSP102.SCH","PSP103.SCH","PSP104.SCH","PSP105.SCH","PSP106.SCH","PSP107.SCH","PSP110.SCH","PSP111.SCH","PSP113.SCH","PSP114.SCH","PSP115.SCH","PSP116.SCH","PSP117.SCH","PSP120.SCH","PSP121.SCH","PSP126.SCH","PSP127.SCH","PSP128.SCH","PSP129.SCH","PSP130.SCH","PSP131.SCH","PSP132.SCH","PSP133.SCH","PSP134.SCH","PSP135.SCH","PSP137.SCH","PSP138.SCH","PSP139.SCH","PSP142.SCH","PSP143.SCH","PSP144.SCH","PSP146.SCH","PSP147.SCH","PSP148.SCH","PSP149.SCH","PSP150.SCH","PSP151.SCH","PSP153.SCH","PSP155.SCH","PSP156.SCH","PSP157.SCH","PSP158.SCH","PSP161.SCH","PSP163.SCH","PSP166.SCH","PSP167.SCH","PSP170.SCH","PSP171.SCH","PSP172.SCH","PSP173.SCH","PSP174.SCH","PSP175.SCH","PSP176.SCH","PSP177.SCH","PSP178.SCH","PSP179.SCH","PSP181.SCH","PSP182.SCH","PSP183.SCH","PSP186.SCH","PSP187.SCH","PSP188.SCH","PSP189.SCH","PSP190.SCH","PSP191.SCH","PSP192.SCH","PSP194.SCH","PSP199.SCH","PSP200.SCH","PSP203.SCH","PSP206.SCH","PSP207.SCH","PSP210.SCH","PSP212.SCH","PSP213.SCH","PSP214.SCH","PSP216.SCH","PSP217.SCH","PSP219.SCH","PSP221.SCH","PSP222.SCH","PSP223.SCH","PSP224.SCH","PSP226.SCH","PSP227.SCH","PSP228.SCH","PSP229.SCH","PSP230.SCH","PSP231.SCH","PSP232.SCH","PSP233.SCH","PSP235.SCH","PSP236.SCH","PSP238.SCH","PSP240.SCH","PSP241.SCH","PSP242.SCH","PSP248.SCH","PSP249.SCH","PSP251.SCH","PSP255.SCH","PSP256.SCH","PSP257.SCH","PSP259.SCH","PSP260.SCH","PSP262.SCH","PSP263.SCH","PSP264.SCH","PSP267.SCH","PSP268.SCH","PSP269.SCH","PSP270.SCH");
@upperbound10 = (133,119,119,115,142,142,217,110,129,165,157,126,171,116,204,133,116,159,95,154,157,124,147,188,166,113,175,97,115,140,128,134,101,140,97,132,232,167,150,138,102,141,128,103,152,125,174,122,112,104,140,118,104,210,122,136,173,124,88,108,143,130,170,152,123,166,185,138,123,160,116,194,102,137,179,168,133,168,110,185,157,222,171,116,352,133,102,172,224,140,135,109,277,144,165,169,232,193,105,196,127,245,187,167,187,117,142,180,174,86,172,186,171,197,153,171,162,153,209,129,221,216,186,252,115,222,100,161,165,204,184,136,119,123,176,176,97,133,98,154,156,145,138,160,136,174,157,125,142,115,89,144,148,136,152,227,145,199,128,163,138,245,208,110,195,161,155,118,125,131,177,120,135,151,200,124,145,159,91,84,159,153,141,201,105,107,171);
@lowerbound10 = (26,36,39,32,43,40,45,36,31,40,39,30,27,29,39,37,38,34,33,40,34,32,32,70,58,45,55,32,45,49,29,35,36,31,35,27,68,29,36,32,34,40,19,37,37,54,67,47,49,46,54,31,28,56,26,30,40,21,16,25,47,23,43,35,42,53,49,47,33,47,52,61,42,44,62,52,18,32,24,51,46,58,33,22,39,41,15,27,38,57,70,44,49,51,45,46,34,41,25,67,44,45,55,53,39,31,32,45,43,23,28,78,53,52,66,61,59,29,53,32,50,69,33,37,32,50,19,57,62,55,32,46,44,40,30,77,38,33,53,78,52,39,45,46,44,53,66,44,66,53,37,45,74,59,38,74,62,91,68,59,50,73,58,51,46,56,43,36,49,47,94,70,65,61,61,48,52,60,45,31,63,64,78,59,36,35,75);

@instances20 =("PSP7.SCH","PSP8.SCH","PSP11.SCH","PSP13.SCH","PSP15.SCH","PSP16.SCH","PSP17.SCH","PSP18.SCH","PSP19.SCH","PSP21.SCH","PSP22.SCH","PSP24.SCH","PSP25.SCH","PSP26.SCH","PSP27.SCH","PSP28.SCH","PSP29.SCH","PSP30.SCH","PSP32.SCH","PSP34.SCH","PSP35.SCH","PSP36.SCH","PSP38.SCH","PSP40.SCH","PSP42.SCH","PSP45.SCH","PSP46.SCH","PSP47.SCH","PSP48.SCH","PSP50.SCH","PSP51.SCH","PSP52.SCH","PSP53.SCH","PSP54.SCH","PSP55.SCH","PSP56.SCH","PSP57.SCH","PSP58.SCH","PSP59.SCH","PSP60.SCH","PSP65.SCH","PSP68.SCH","PSP70.SCH","PSP71.SCH","PSP72.SCH","PSP73.SCH","PSP74.SCH","PSP75.SCH","PSP76.SCH","PSP77.SCH","PSP78.SCH","PSP79.SCH","PSP80.SCH","PSP81.SCH","PSP82.SCH","PSP83.SCH","PSP84.SCH","PSP85.SCH","PSP86.SCH","PSP87.SCH","PSP88.SCH","PSP89.SCH","PSP90.SCH","PSP91.SCH","PSP93.SCH","PSP95.SCH","PSP96.SCH","PSP97.SCH","PSP98.SCH","PSP100.SCH","PSP101.SCH","PSP102.SCH","PSP103.SCH","PSP104.SCH","PSP105.SCH","PSP109.SCH","PSP110.SCH","PSP111.SCH","PSP112.SCH","PSP113.SCH","PSP114.SCH","PSP115.SCH","PSP116.SCH","PSP117.SCH","PSP119.SCH","PSP120.SCH","PSP123.SCH","PSP128.SCH","PSP130.SCH","PSP131.SCH","PSP136.SCH","PSP137.SCH","PSP138.SCH","PSP139.SCH","PSP141.SCH","PSP142.SCH","PSP143.SCH","PSP144.SCH","PSP145.SCH","PSP146.SCH","PSP147.SCH","PSP148.SCH","PSP149.SCH","PSP150.SCH","PSP153.SCH","PSP154.SCH","PSP155.SCH","PSP156.SCH","PSP158.SCH","PSP160.SCH","PSP161.SCH","PSP164.SCH","PSP166.SCH","PSP167.SCH","PSP169.SCH","PSP170.SCH","PSP171.SCH","PSP172.SCH","PSP173.SCH","PSP174.SCH","PSP175.SCH","PSP176.SCH","PSP177.SCH","PSP178.SCH","PSP179.SCH","PSP180.SCH","PSP181.SCH","PSP182.SCH","PSP183.SCH","PSP184.SCH","PSP185.SCH","PSP187.SCH","PSP188.SCH","PSP189.SCH","PSP190.SCH","PSP191.SCH","PSP192.SCH","PSP195.SCH","PSP197.SCH","PSP199.SCH","PSP201.SCH","PSP203.SCH","PSP204.SCH","PSP205.SCH","PSP206.SCH","PSP208.SCH","PSP209.SCH","PSP210.SCH","PSP213.SCH","PSP214.SCH","PSP215.SCH","PSP216.SCH","PSP218.SCH","PSP220.SCH","PSP221.SCH","PSP224.SCH","PSP225.SCH","PSP227.SCH","PSP229.SCH","PSP231.SCH","PSP232.SCH","PSP233.SCH","PSP235.SCH","PSP236.SCH","PSP237.SCH","PSP238.SCH","PSP239.SCH","PSP240.SCH","PSP246.SCH","PSP248.SCH","PSP250.SCH","PSP251.SCH","PSP253.SCH","PSP254.SCH","PSP255.SCH","PSP257.SCH","PSP261.SCH","PSP262.SCH","PSP263.SCH","PSP264.SCH","PSP266.SCH","PSP268.SCH","PSP269.SCH","PSP270.SCH");
@upperbound20 = (303,422,241,398,467,249,249,339,496,361,353,256,274,236,282,507,337,252,394,317,537,318,471,422,287,364,430,303,323,283,344,475,260,291,287,383,293,368,332,302,321,242,313,302,257,306,294,196,232,341,365,271,242,305,271,408,208,220,372,254,494,219,393,507,331,627,410,413,449,489,449,318,371,464,204,562,757,295,274,179,752,544,418,309,311,301,347,715,697,293,580,430,261,389,311,474,528,361,299,579,575,486,306,619,385,494,343,306,307,494,279,222,253,754,490,330,346,479,308,455,438,226,248,615,503,348,306,263,345,357,727,245,280,266,334,509,392,199,252,302,303,330,406,298,300,294,262,252,440,630,325,244,359,452,225,277,564,261,433,240,258,243,359,257,408,262,358,307,545,369,381,220,438,315,356,349,453,316,261,259,691,342,356,421);
@lowerbound20 = (65,70,56,53,93,51,46,39,35,30,39,47,30,41,60,36,49,52,72,95,103,70,106,94,44,37,55,50,50,57,41,32,72,47,45,48,48,63,42,40,92,87,117,58,50,59,69,24,58,46,38,89,28,43,35,41,29,36,49,31,36,48,40,73,55,52,61,60,93,63,71,66,97,52,47,43,53,54,90,60,54,58,70,39,102,31,77,100,98,51,68,75,50,117,75,89,62,68,61,59,45,51,64,47,128,119,124,125,105,86,71,67,79,52,64,63,91,48,81,42,75,53,39,50,68,68,63,97,124,98,69,125,108,98,131,102,88,65,116,103,84,52,97,129,69,85,88,139,133,99,118,87,147,113,104,83,68,86,107,112,56,70,117,86,175,64,166,121,119,148,109,77,109,128,122,127,64,81,94,78,52,142,122,71);

@instances30 = ("PSP4.SCH","PSP9.SCH","PSP11.SCH","PSP12.SCH","PSP13.SCH","PSP14.SCH","PSP15.SCH","PSP16.SCH","PSP17.SCH","PSP20.SCH","PSP21.SCH","PSP22.SCH","PSP23.SCH","PSP24.SCH","PSP25.SCH","PSP26.SCH","PSP27.SCH","PSP28.SCH","PSP29.SCH","PSP30.SCH","PSP32.SCH","PSP33.SCH","PSP35.SCH","PSP37.SCH","PSP38.SCH","PSP40.SCH","PSP41.SCH","PSP42.SCH","PSP43.SCH","PSP44.SCH","PSP45.SCH","PSP46.SCH","PSP47.SCH","PSP48.SCH","PSP51.SCH","PSP52.SCH","PSP53.SCH","PSP54.SCH","PSP55.SCH","PSP56.SCH","PSP57.SCH","PSP58.SCH","PSP59.SCH","PSP60.SCH","PSP64.SCH","PSP65.SCH","PSP67.SCH","PSP68.SCH","PSP71.SCH","PSP73.SCH","PSP74.SCH","PSP75.SCH","PSP76.SCH","PSP77.SCH","PSP78.SCH","PSP79.SCH","PSP80.SCH","PSP81.SCH","PSP82.SCH","PSP83.SCH","PSP84.SCH","PSP85.SCH","PSP86.SCH","PSP87.SCH","PSP88.SCH","PSP89.SCH","PSP90.SCH","PSP91.SCH","PSP95.SCH","PSP97.SCH","PSP99.SCH","PSP100.SCH","PSP102.SCH","PSP103.SCH","PSP105.SCH","PSP106.SCH","PSP107.SCH","PSP108.SCH","PSP109.SCH","PSP110.SCH","PSP112.SCH","PSP113.SCH","PSP114.SCH","PSP115.SCH","PSP116.SCH","PSP117.SCH","PSP118.SCH","PSP119.SCH","PSP120.SCH","PSP123.SCH","PSP124.SCH","PSP128.SCH","PSP129.SCH","PSP131.SCH","PSP133.SCH","PSP134.SCH","PSP136.SCH","PSP138.SCH","PSP139.SCH","PSP140.SCH","PSP141.SCH","PSP142.SCH","PSP143.SCH","PSP144.SCH","PSP145.SCH","PSP146.SCH","PSP147.SCH","PSP149.SCH","PSP150.SCH","PSP151.SCH","PSP153.SCH","PSP154.SCH","PSP155.SCH","PSP161.SCH","PSP162.SCH","PSP163.SCH","PSP165.SCH","PSP166.SCH","PSP167.SCH","PSP168.SCH","PSP170.SCH","PSP171.SCH","PSP172.SCH","PSP173.SCH","PSP174.SCH","PSP175.SCH","PSP176.SCH","PSP177.SCH","PSP178.SCH","PSP179.SCH","PSP180.SCH","PSP181.SCH","PSP185.SCH","PSP188.SCH","PSP190.SCH","PSP191.SCH","PSP192.SCH","PSP194.SCH","PSP195.SCH","PSP196.SCH","PSP197.SCH","PSP198.SCH","PSP200.SCH","PSP202.SCH","PSP203.SCH","PSP204.SCH","PSP205.SCH","PSP206.SCH","PSP207.SCH","PSP208.SCH","PSP209.SCH","PSP215.SCH","PSP221.SCH","PSP222.SCH","PSP223.SCH","PSP224.SCH","PSP226.SCH","PSP229.SCH","PSP230.SCH","PSP231.SCH","PSP232.SCH","PSP233.SCH","PSP234.SCH","PSP235.SCH","PSP236.SCH","PSP237.SCH","PSP238.SCH","PSP239.SCH","PSP240.SCH","PSP244.SCH","PSP247.SCH","PSP248.SCH","PSP252.SCH","PSP254.SCH","PSP255.SCH","PSP261.SCH","PSP262.SCH","PSP263.SCH","PSP264.SCH","PSP265.SCH","PSP266.SCH","PSP267.SCH","PSP268.SCH","PSP269.SCH","PSP270.SCH" );
@upperbound30 = (709,630,503,704,529,435,529,374,306,757,572,408,569,319,646,413,372,386,429,436,782,653,487,403,406,606,345,409,416,407,437,461,499,599,623,406,449,572,556,450,529,533,847,980,587,406,289,524,349,575,480,559,651,669,444,477,440,607,610,674,364,512,509,630,448,378,628,589,335,574,788,1186,811,1276,1090,435,817,586,305,552,552,1060,1100,795,1434,471,1050,660,367,651,531,888,405,477,703,1419,564,691,575,987,447,662,1084,466,953,436,757,419,412,1254,548,394,1102,402,1218,951,880,425,386,772,453,489,1519,372,830,464,379,643,1149,738,638,405,565,476,504,546,566,549,1044,466,505,488,718,515,653,817,903,395,407,276,393,631,481,698,615,580,392,367,684,621,463,450,521,631,490,447,534,502,434,528,418,531,734,378,382,414,436,1053,565,511,403,505,656,470,507);
@lowerbound30 = (104,117,62,48,63,69,62,49,57,32,50,78,47,39,78,51,60,87,62,66,114,135,135,119,93,120,47,64,66,107,56,51,46,54,71,80,46,35,49,61,70,40,58,47,169,163,130,174,56,57,68,65,72,48,64,71,65,36,48,56,51,54,42,66,68,80,87,100,105,118,95,90,60,58,60,107,60,113,105,145,57,47,42,72,39,142,47,79,83,151,133,107,145,83,101,59,95,96,89,74,103,70,54,102,70,90,50,105,154,158,176,134,154,155,46,54,70,138,112,45,96,73,46,85,60,71,93,82,59,81,76,158,112,142,148,127,120,131,58,113,141,110,122,84,100,52,49,130,127,104,136,176,183,92,135,116,127,172,116,108,149,138,79,136,166,127,161,87,141,153,175,164,151,181,164,184,114,57,69,61,138,124,96,83,190);

# SIZE 10
if ( $run10_x_times > 0 ) {
  for ( $i=1; $i<=$run10_x_times ; $i++) {
    $counter = 0;

    foreach $item (@instances10) {
				#construct command

      $filename= $tenjobdir.$item;

      for ( $upperbound = $upperbound10[$counter]; $upperbound >= $lowerbound10[$counter]; $upperbound-- ) {
	$cmd = "UBO-planner_o_rt ".$filename.$upperbound.xml;



	print "10: ".$cmd."\n";
	
	$res=`$cmd`;

	print $res;

      }
				
      $counter++;		
    }
  }
}
