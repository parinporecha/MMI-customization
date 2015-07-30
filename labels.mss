/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#countrylabel[zoom>0][zoom<7] {
  text-name:'[CNT_NME]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: .5;
  text-transform: uppercase;
  [zoom=1] {
    text-size: 8 + @text_adjust;
    text-wrap-width: 10;
  }
  [zoom=2] {
    text-size:9+ @text_adjust;
    text-wrap-width: 20;
  }
  [zoom=3] {
    text-size:10+ @text_adjust;
    text-wrap-width: 30;
  }
  [zoom=4] {
    text-size:12 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom=4] {
    text-size:13 + @text_adjust;
    text-wrap-width: 60;
  }
  [zoom>4] {
    text-halo-radius: 1;
  }
  [zoom=5] {
    text-size:15 + @text_adjust;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:19 + @text_adjust;
    text-character-spacing: 2;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
}

#statelabel[zoom>=5][zoom<=7] {
  text-name:'[STT_NME]';
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  text-transform: uppercase;
  text-face-name:@sans; //@sans_bold
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width: 40;
    text-character-spacing: 1;
  }
  [zoom=6] {
    text-size:15 + @text_adjust;
    text-wrap-width: 40;
    text-character-spacing: 2;
  }
  [zoom=7] {
    text-size:18 + @text_adjust;
    text-wrap-width: 50;
    text-character-spacing: 3;
  }
  [STT_NME='Puducherry'] { text-size: 0; }
  [STT_NME='Daman & Diu'] { text-size: 0; }
  [STT_NME='Dadra & Nagar Haveli'] { text-size: 0; }
}

#citypoint[zoom>=5][zoom<=15] {
  [T_POP>@40L][zoom>=5],
  [T_POP>@5L][zoom>=6],
  [T_POP>@1L][zoom>=7],
  [T_POP>@50K][zoom>=8],
  [T_POP>@30K][zoom>=9],
  [T_POP>@10K][zoom>=10]{
    text-name:'[CITY_NME]';
    text-face-name:@sans;
    text-placement:point;
    text-fill:@city_text;
    text-halo-fill:@city_halo;
    text-halo-radius:2;
    //text-transform: uppercase;
    [zoom>=14] { text-fill: lighten(@city_text, 20%); }
  }
  [zoom=5] {
    [T_POP>@50L] { text-size: 12; }
    [T_POP<=@50L][T_POP>@40L] { text-size: 11; }
  }
  [zoom=6] {
    [T_POP>@5L] { text-size: 12; }
    [T_POP>@30L] { text-size: 14; text-character-spacing: 0; }
  }
  [zoom=7] {
    [T_POP>@1L] { text-size: 11; }
    [T_POP>@5L] { text-size: 13; }
    [T_POP>@30L] { text-size: 15; }
  }
  [zoom=8] {
    [T_POP>@50K] { text-size: 11; }
    [T_POP>@1L] { text-size: 13; }
    [T_POP>@10L] { text-size: 16; }
  }
  [zoom=9] {
    [T_POP>@30K] { text-size: 11; }
    [T_POP>@1L] { text-size: 13; }
    [T_POP>@5L] { text-size: 17; }
  }
  [zoom=10] {
    [T_POP>@10K] { text-size: 12; }
    [T_POP>@50K] { text-size: 13; }
    [T_POP>@1L] { text-size: 15; }
    [T_POP>@10L] { text-size: 17; }
  }
  [zoom=11] {
    [T_POP>@10K] { text-size: 12; }
    [T_POP>@25K] { text-size: 14; }
    [T_POP>@1L] { text-size: 16; }
    [T_POP>@10L] { text-size: 18; }
  }
  [zoom=12] {
    [T_POP>@10K] { text-size: 14; }
    [T_POP>@25K] { text-size: 15; }
    [T_POP>@1L] { text-size: 17; text-character-spacing: 1; }
    [T_POP>@10L] { text-size: 18; text-character-spacing: 1; }
  }
  [zoom=13] {
    [T_POP>@10K] { text-size: 15; }
    [T_POP>@25K] { text-size: 16; text-character-spacing: 1; }
    [T_POP>@1L] { text-size: 18; text-character-spacing: 1; }
    [T_POP>@10L] { text-size: 21; text-character-spacing: 2; }
  }
  [zoom>=14] {
    [T_POP>@10K] { text-size: 15; }
    [T_POP>@25K] { text-size: 16; text-character-spacing: 1; }
    [T_POP>@1L] { text-size: 18; text-character-spacing: 2; }
    [T_POP>@10L] { text-size: 21; text-character-spacing: 3; }
  }
}

#villagepoint[zoom>=8][zoom<=15] {
  [T_POP>@12K][zoom>=8],
  [T_POP>@10K][zoom>=9],
  [T_POP>@8K][zoom>=10],
  [T_POP>@7K][zoom>=11],
  [T_POP>@5K][zoom>=12]{
    text-name:'[VIL_NME]';
    text-face-name:@sans;
    text-placement:point;
    text-fill:@town_text;
    text-halo-fill:@town_halo;
    text-halo-radius:1;
    text-wrap-width: 50;
    text-min-distance:15;
    [zoom>=14] {
      text-fill: lighten(@city_text, 20%);
      text-character-spacing: 1;
    }
  }
  [zoom=8] {
    [T_POP>@12K] { text-size: 11; }
  }
  [zoom=9] {
    [T_POP>@10K] { text-size: 11; }
  }
  [zoom=10] {
    [T_POP>@8K] { text-size: 11; }
    [T_POP>@10K] { text-size: 12; }
  }
  [zoom=11] {
    [T_POP>@7K] { text-size: 11; }
    [T_POP>@10K] { text-size: 12; }
  }
  [zoom=12] {
    [T_POP>@5K] { text-size: 11; }
    [T_POP>@7K] { text-size: 12; }
    [T_POP>@10K] { text-size: 13; }
  }
  [zoom=13] {
    [T_POP>@5K] { text-size: 12; }
    [T_POP>@7K] { text-size: 13; }
    [T_POP>@10K] { text-size: 14; text-character-spacing: 1; }
  }
  [zoom>=14] {
    [T_POP>@5K] { text-size: 13; }
    [T_POP>@7K] { text-size: 14; text-character-spacing: 1; }
    [T_POP>@10K] { text-size: 17; text-character-spacing: 2; }
  }
}


#localitylabel[zoom>=13] {
  text-name:'[LOC_NME]';
  text-face-name:@sans_italic;
  text-placement:point;
  text-fill:@locality_text;
  text-size:12;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  text-transform: uppercase;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
  [zoom>=15] {
    text-size:12;
    text-wrap-width: 60;
    text-line-spacing: 1;
    text-character-spacing: 1;
  }
  [zoom>=16] {
    text-size:13;
    text-wrap-width: 60;
    text-line-spacing: 1;
    text-character-spacing: 2;
  }
  [zoom>=17] {
    text-size:13;
    text-wrap-width: 120;
    text-line-spacing: 1;
    text-character-spacing: 3;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 1;
  }
}

#sublocalitylabel[zoom>=15] {
  text-name:'[SUBL_NME]';
  text-face-name:@sans_italic;
  text-placement:point;
  text-fill: @sublocality_text;
  text-size:11;
  text-halo-fill:@sublocality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  text-transform: uppercase;
  [zoom>=15] {
    text-size:10;
    text-wrap-width: 60;
    text-line-spacing: 1;
    text-character-spacing: 1;
  }
  [zoom>=16] {
    text-size:11;
    text-wrap-width: 45;
    text-line-spacing: 1;
    text-character-spacing: 1;
  }
  [zoom>=17] {
    text-size:12;
    text-wrap-width: 120;
    text-line-spacing: 1;
    text-character-spacing: 2;
  }
  [zoom>=18] {
    text-size:13;
    text-character-spacing: 3;
    text-line-spacing: 1;
  }
}

#addresspoint[zoom>=19] {
  text-name:'[BLDG_NUM]';
  text-face-name:@sans;
  text-placement:point;
  text-fill: @poi_text * 0.7;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 30;
}



/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#roadlabel[FRC=0][ROUTENUM != ''][zoom>=8][zoom<=14] {
  shield-name: "[ROUTENUM]";
  shield-size: 9;
  shield-face-name: @sans;
  shield-fill: #070808;
  shield-file: url(img/shield-trunk-5.png);
  [zoom>=13] {
    shield-file: url(img/shield-trunk-6.png);
    shield-size: 10;
  }
  
  [zoom=8] { shield-min-distance: 30; }
  [zoom=9] { shield-min-distance: 40; }
  [zoom=10] { shield-min-distance: 60; }
  [zoom=11] { shield-min-distance: 100; }
  [zoom=12] { shield-min-distance: 150; }
  [zoom>=13] { shield-min-distance: 200; }
}

#roadlabel[FRC=0][zoom>10],
#roadlabel[FRC=1][zoom>10] {
  text-name:"[NAME]";
  text-face-name:@sans_italic;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:10;

  [zoom=11] { text-min-distance: 60; }
  [zoom=12] { text-size: 11; text-min-distance: 100; }
  [zoom=13] { text-size: 12; text-min-distance: 140; }
  [zoom=14] { text-size: 12; text-min-distance: 180; }
  [zoom=15] { text-size: 13; text-min-distance: 250; }
  [zoom>=16] { text-size: 13; text-min-distance: 300; }
}


#roadlabel[FTR_CRY='SHY'][zoom>10] {
  text-name:"[NAME]";
  text-face-name:@sans_italic;
  text-placement:line;
  text-opacity: 0.8;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:10;

  [zoom=11] { text-min-distance: 150; }
  [zoom=12] { text-size: 11; text-min-distance: 150; }
  [zoom=13] { text-size: 12; text-min-distance: 200; }
  [zoom=14] { text-size: 12; text-min-distance: 200; }
  [zoom=15] { text-size: 13; text-min-distance: 250; }
  [zoom>=16] { text-size: 13; text-min-distance: 300; }
}


#roadlabel[FTR_CRY='RDA'][zoom>=12],
#roadlabel[FRC=4][zoom>14], {
  text-name: "[NAME]";
  text-face-name: @sans_italic;
  text-placement: line;
  text-opacity: 0.6;
  text-fill: @road_text;
  text-halo-fill: @road_halo;
  text-halo-radius: 1;

  [zoom=12] { text-size: 10; text-min-distance: 0; }
  [zoom=13] { text-size: 11; text-min-distance: 20; }
  [zoom=14] { text-size: 13; text-min-distance: 20; }
  [zoom=15] { text-size: 13; text-min-distance: 30; }
  [zoom=16] { text-size: 13; text-min-distance: 40; }
  [zoom>=17] { text-size: 14; text-min-distance: 60; }
}

#roadlabel[FRC=5][zoom>15] {
  text-name:'[NAME]';
  text-face-name:@sans;
  text-opacity:0.8;
  text-placement:line;
  text-size:11;
  text-fill:@road_text;
  text-halo-fill:@road_halo*2;
  text-halo-radius:.5;
  text-min-distance: 20;
  text-size:8;
}


// =====================================================================
// AREA LABELS
// =====================================================================

// Nature
#poipoint[CAT_CODE='NTCWLS'][zoom>=10],
#poipoint[CAT_CODE='NTCLAK'][zoom>=15],
#poipoint[CAT_CODE='NTCBCH'][zoom>=16],
#poipoint[CAT_CODE='NTCFAL'][zoom>=16] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 11;
  text-wrap-width: 30;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
  
  [CAT_CODE='NTCWLS'] {
    text-fill: @wooded * 0.5;
    text-halo-fill: lighten(@wooded, 10);
  }
  
  [CAT_CODE='NTCLAK'],
  [CAT_CODE='NTCFAL'] {
    text-wrap-width: 5;
    text-wrap-before: true;
    text-fill: @water * 0.6;
    text-halo-fill: lighten(@water, 10);
  }
  
  [zoom>=14] { text-size: 12; }
}

// Recreation
#poipoint[CAT_CODE='RCNAUS'][zoom>=15],
#poipoint[CAT_CODE='RCNAUD'][zoom>=16],
#poipoint[CAT_CODE='RCNCIN'][zoom>=17],
#poipoint[CAT_CODE='RCNPRK'][zoom>=16],
#poipoint[CAT_CODE='RCNSTA'][zoom>=16],
#poipoint[CAT_CODE='RCNDAM'][zoom>=13],
#poipoint[CAT_CODE='RCNCRS'][zoom>=13],
#poipoint[CAT_CODE='RCNCLB'][zoom>=18],
#poipoint[CAT_CODE='RCNZOO'][zoom>=18] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 11;
  text-wrap-width: 50;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
  
  [CAT_CODE='RCNSTA'] {
    text-fill: @sports * 0.6;
    text-halo-fill: lighten(@sports, 10);
    text-min-distance: 40;
  }
  
  [CAT_CODE='RCNPRK'],
  [CAT_CODE='RCNZOO'] {
    text-fill: @park * 0.6;
    text-halo-fill: lighten(@park, 10);
  }
}

// Residential
#poipoint[CAT_CODE='LCSAPT'][zoom>=17],
#poipoint[CAT_CODE='LCSFHS'][zoom>=17],
#poipoint[CAT_CODE='LCSIHS'][zoom>=18] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 11;
  text-wrap-width: 30;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}

// Community
#poipoint[CAT_CODE='COMCLG'][zoom>=16],
#poipoint[CAT_CODE='COMCRT'][zoom>=16],
#poipoint[CAT_CODE='COMCRM'][zoom>=16],
#poipoint[CAT_CODE='COMCMB'][zoom>=17],
#poipoint[CAT_CODE='COMGOV'][zoom>=16],
#poipoint[CAT_CODE='COMPOL'][zoom>=16],
#poipoint[CAT_CODE='COMEMB'][zoom>=17],
#poipoint[CAT_CODE='COMPTO'][zoom>=17],
#poipoint[CAT_CODE='COMSCH'][zoom>=17],
#poipoint[CAT_CODE='COMTWH'][zoom>=15],
#poipoint[CAT_CODE='COMBAN'][zoom>=18],
#poipoint[CAT_CODE='COMPCK'][zoom>=18] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 11;
  text-wrap-width: 40;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";

  [CAT_CODE='COMCLG'],
  [CAT_CODE='COMSCH'] {
    text-fill: @school * 0.6;
    text-halo-fill: lighten(@school, 10);
  }
  [CAT_CODE='COMCRM'] {
    text-fill: @cemetery * 0.6;
    text-halo-fill: lighten(@cemetery, 10);
  }
}

// Religion
#poipoint[CAT_CODE='PLPBUD'][zoom>=18],
#poipoint[CAT_CODE='PLPCHU'][zoom>=18],
#poipoint[CAT_CODE='PLPGUR'][zoom>=18],
#poipoint[CAT_CODE='PLPHIN'][zoom>=18],
#poipoint[CAT_CODE='PLPISL'][zoom>=18],
#poipoint[CAT_CODE='PLPJAN'][zoom>=18],
#poipoint[CAT_CODE='PLPOTH'][zoom>=18] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 11;
  text-wrap-width: 40;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}

// Financial
#poipoint[CAT_CODE='FINATM'][zoom>=17],
#poipoint[CAT_CODE='FINBNK'][zoom>=18]{
  text-name: "[POI_NME]";
  
  [CAT_CODE='FINATM'][zoom=17] { text-name: "'ATM'"; }
  
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 40;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}

// General Landmarks
/*#poipoint[CAT_CODE='GENLMK'][zoom>=16] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width:60;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-dy: -6;
  
  marker-width:6;
  marker-fill:#fff;
  marker-line-color:#777;
  
  [zoom>=13] {
    text-wrap-width: 80;
  }
  [zoom>=14] {
    text-wrap-width: 100;
  }
}*/

// Historical
#poipoint[CAT_CODE='HISMON'][zoom>=16],
#poipoint[CAT_CODE='HISFRT'][zoom>=15] {
  text-name: "[POI_NME]";
  text-halo-radius: 0.5;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 40;
  text-fill: @poi_text * 0.8;
  text-halo-fill: lighten(@poi_text, 10);
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}

// Hotels
#poipoint[CAT_CODE='HOTRES'][zoom>=18],
#poipoint[CAT_CODE='HOTPRE'][zoom>=16],
#poipoint[CAT_CODE='HOTNOP'][zoom>=17],
#poipoint[CAT_CODE='HOTALL'][zoom>=18],{
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 30;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}

// Restaurants
#poipoint[CAT_CODE='FODIND'][zoom>=17],
#poipoint[CAT_CODE='FODFFD'][zoom>=17],
#poipoint[CAT_CODE='FODPUB'][zoom>=18],
#poipoint[CAT_CODE='FODBAK'][zoom>=18],{
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 40;
  text-fill: @restaurant * 0.6;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}


// Commercial
#poipoint[CAT_CODE='SHPBLD'][zoom>=16],
#poipoint[CAT_CODE='SHPREP'][zoom>=17],
#poipoint[CAT_CODE='SHPIND'][zoom>=17] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 40;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}

// Shopping
#poipoint[CAT_CODE='SHPMAL'][zoom>=16],
#poipoint[CAT_CODE='SHPMKT'][zoom>=17],
#poipoint[CAT_CODE='SHPPLZ'][zoom>=17],
#poipoint[CAT_CODE='SHPMAN'][zoom>=18],
#poipoint[CAT_CODE='SHPOTH'][zoom>=18] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 40;
  text-fill: #888;
  text-halo-fill: #fff;
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
}

// Medical
#poipoint[CAT_CODE='HLTHRH'][zoom>=16],
#poipoint[CAT_CODE='HLTMED'][zoom>=17],
#poipoint[CAT_CODE='HLTMDS'][zoom>=18],
#poipoint[CAT_CODE='HLTVTH'][zoom>=17] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 30;
  text-fill: @hospital * 0.6;
  text-halo-fill: lighten(@hospital, 10);
  text-min-distance: 10;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
  
  [CAT_CODE='HLTMED'][zoom=17] {
    text-name: "";
    text-size: 0;
    marker-width: 15;
    [zoom=16] { marker-width: 13; }
    marker-file: url(img/hospital-marker.png);
  }
  
  /*[CAT_CODE='HLTMED'] {
    text-dy: -6;
    marker-width:8;
    marker-fill: lighten(@hospital_marker, 30%);
    marker-line-color: darken(@hospital_marker, 30%);
  }*/
}

// Transportation
#poipoint[CAT_CODE='TRNTRL'][zoom>=12],
#poipoint[CAT_CODE='TRNARN'][zoom>=13],
#poipoint[CAT_CODE='TRNMET'][zoom>=15],
#poipoint[CAT_CODE='TRNRAL'][zoom>=16],
#poipoint[CAT_CODE='TRNSEA'][zoom>=16],
#poipoint[CAT_CODE='TRNMRN'][zoom>=17],
#poipoint[CAT_CODE='TRNBUS'][zoom>=17],
#poipoint[CAT_CODE='TRNBST'][zoom>=16] {
  text-name: "[POI_NME]";
  text-halo-radius: 1;
  text-face-name:@sans;
  text-size: 12;
  text-wrap-width: 40;
  text-fill: @industrial * 0.6;
  text-halo-fill: lighten(@industrial, 10);
  text-min-distance: 40;
  text-placements: "N,S,E,W,NE,SE,NW,SW,12,11,10";
  
  [CAT_CODE='TRNMET'][zoom>=15][zoom<=16] {
    text-name: "";
    text-size: 0;
    marker-width: 15;
    [zoom=16] { marker-width: 18; }
    marker-file: url(img/metro-marker.png);
  }
  
  [CAT_CODE='TRNBST'][zoom>=16][zoom<=17],
  [CAT_CODE='TRNBUS'][zoom>=17][zoom<=18] {
    text-name: "";
    text-size: 0;
    marker-width: 12;
    [zoom=16] { marker-width: 12; }
    [zoom=18] { marker-width: 14; }
    marker-file: url(img/bus-marker.png);
  }
}


/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#roadlabel[ONEWAY='FT'][zoom>=16] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url(img/icon/oneway.svg);
  [ONEWAY=''] { marker-file: url(img/icon/oneway-reverse.svg); }
  //[zoom=16] { marker-transform: "scale(1.2)"; }
  [zoom=17] { marker-transform: "scale(1.3)"; }
}


/* ****************************************************************** */



/* ---- Cities ------------------------------------------------------ */
/* ---- Towns ------------------------------------------------------- */
/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=13],
#place::small[type='suburb'][zoom>=12],
#place::small[type='hamlet'][zoom>=12],
#place::small[type='neighbourhood'][zoom>=11] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom=11]{
      text-min-distance: 20;
  }
  [zoom=12]{
      text-min-distance: 30;
  }
  [zoom=13]{
      text-min-distance: 35;
  }
  [zoom>=14] {
    text-min-distance: 40;
    text-size:11;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:9;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=16] {
    text-size:10;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=17] {
    text-size:11;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=18] {
    text-size:12;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}


// =====================================================================
// AREA LABELS
// =====================================================================

#area_label {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=10][area>102400000],
  [zoom>=11][area>20600000],
  [zoom>=13][area>1600000],
  [zoom>=14][area>320000],
  [zoom>=15][area>80000],
  [zoom>=16][area>20000],
  [zoom>=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
    text-halo-radius: 1.5;
    text-face-name:@sans;
    text-size: 11;
    text-wrap-width:30;
    text-fill: #888;
    text-halo-fill: #fff;
    text-min-distance: 10;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name: @sans_lt_italic;
      text-fill: @park * 0.6;
      text-halo-fill: lighten(@park, 10);
    }
    [type='golf_course'][zoom>=10] {
      text-fill: @sports * 0.6;
      text-halo-fill: lighten(@sports, 10);
    }
    [type='cemetery'][zoom>=10] {
      text-fill: @cemetery * 0.6;
      text-halo-fill: lighten(@cemetery, 10);
    }
    [type='hospital'][zoom>=10] {
      text-fill: @hospital * 0.6;
      text-halo-fill: lighten(@hospital, 10);
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill: @school * 0.6;
      text-halo-fill: lighten(@school, 10);
    }
    [type='water'][zoom>=10] {
      text-fill: @water * 0.6;
      text-halo-fill: lighten(@water, 10);
    }
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom=18][area>5000] {
    text-name: "[name]";
    text-size: 13;
    text-wrap-width: 60;
    text-character-spacing: 1;
    text-halo-radius: 2;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom=18][area>20000] {
    text-size: 15;
    text-character-spacing: 2;
    text-wrap-width: 120;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 20;
    text-character-spacing: 3;
    text-wrap-width: 180;
  }
}
   
#poi[type='university'][zoom>=15],
#poi[type='hospital'][zoom>=16],
#poi[type='school'][zoom>=17],
#poi[type='library'][zoom>=17] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size:10;
  text-wrap-width:30;
  text-fill: @poi_text;
}


/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: @water * 0.75;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
  [type='river'][zoom=15],
  [type='canal'][zoom=17] {
    text-size: 11;
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom=18] {
    text-size: 14;
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=8][zoom<=14][reflen<=8] {
  shield-name: "[ref]";
  shield-size: 8;
  shield-face-name: @sans;
  shield-fill: #070808;
  shield-file: url(img/shield-motorway-1.png);
  [type='motorway'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
    [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
    [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
    [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
    [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
    [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
    [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
    [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
  }

  
  [zoom=8] { shield-min-distance: 20; } //50
  [zoom=9] { shield-min-distance: 30; } //50
  [zoom=10] { shield-min-distance: 45; } //50
  [zoom=11] { shield-min-distance: 50; } //50
  [zoom=12] { shield-min-distance: 55; } //60
  [zoom=13] { shield-min-distance: 120; } //120
  [zoom=14] { shield-min-distance: 180; }
}

#motorway_label[type='motorway'][zoom>10],
#motorway_label[type='trunk'][zoom>=11] {  //need changes here
  text-name:"[name]";
  text-face-name:@sans_italic;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:9;
  [zoom=9] { text-min-distance:50; }
  [zoom=9] { text-min-distance:60; }
  [zoom=10] { text-min-distance:60; }
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}
#mainroad_label[type='primary'][zoom>10],
#mainroad_label[type='secondary'][zoom>=12],
#mainroad_label[type='tertiary'][zoom>14],{  //need changes here
  text-name:"[name]";
  text-face-name:@sans_italic;
  text-placement:line;
  text-opacity:0.6;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:9;
  [zoom=9] { text-min-distance:50; }
  [zoom=9] { text-min-distance:60; }
  [zoom=10] { text-min-distance:60; }
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}

//#mainroad_label[zoom>9][zoom<14][reflen<=8]{
   
//  shield-name: "[ref]";
//  shield-size: 8;
//  shield-face-name: @sans;
//  shield-fill: #070808;
//  shield-file: url(img/shield-primary-1.png);
//  [type='primary'] {
//    [reflen=1] { shield-file: url(img/shield-primary-1.png); }
//    [reflen=2] { shield-file: url(img/shield-primary-2.png); }
//    [reflen=3] { shield-file: url(img/shield-primary-3.png); }
//    [reflen=4] { shield-file: url(img/shield-primary-4.png); }
//    [reflen=5] { shield-file: url(img/shield-primary-5.png); }
//    [reflen=6] { shield-file: url(img/shield-primary-6.png); }
//    [reflen=7] { shield-file: url(img/shield-primary-7.png); }
//    [reflen=8] { shield-file: url(img/shield-primary-8.png); }
    
//  }
//  [zoom=10] { shield-min-distance:10; }
//  [zoom=11] { shield-min-distance:40; }
//  [zoom=12] { shield-min-distance:70; }
//  [zoom=13] { shield-min-distance:90; }
//}


#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-opacity:0.8;
  text-placement:line;
  text-size:11;
  text-fill:@road_text;
  text-halo-fill:@road_halo*2;
  text-halo-radius:.5;
  text-min-distance:40;
  text-size:8;
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[oneway!=0][zoom>=16],
#mainroad_label[oneway!=0][zoom>=16],
#minorroad_label[oneway!=0][zoom>=16] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url(img/icon/oneway.svg);
  [oneway=-1] { marker-file: url(img/icon/oneway-reverse.svg); }
  [zoom=16] { marker-transform: "scale(0.9)"; }
  [zoom=17] { marker-transform: "scale(1.2)"; }
}


/* ****************************************************************** */


/*
#citypoint {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}
*/





