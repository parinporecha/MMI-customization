/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#countries{
  ::outline {
    line-color: #888;
    line-width: 2;
    line-join: round;
  }
  polygon-gamma: 0.75;
  [zoom>=0][zoom<6] { polygon-fill: @landlow; }
  [zoom>=6][zoom<12] { polygon-fill: @landmed; }
  [zoom>=12] { polygon-fill: @landhigh; }
}

#stateregion {
  line-color:#594;
  line-width:0.5;
  polygon-gamma: 0.75;
  [zoom>=0][zoom<6] { polygon-fill: @landlow; }
  [zoom>=6][zoom<9] { polygon-fill: @landlowmed; }
  [zoom>=9][zoom<12] { polygon-fill: @landmed; }
  [zoom>=12] { polygon-fill: @landhigh; }
}

#greenregion {
  polygon-opacity: 1;
  [CAT='FLD'] { polygon-fill: lighten(@wooded, 5%); }
  [CAT='FOP'] { polygon-fill: lighten(@wooded, 2%); }
  [CAT='FRS'],
  [CAT='WLS'] { polygon-fill: @wooded; }
  [CAT='UOG'],
  [CAT='ROG'] { polygon-fill: @grass; }
  [CAT='GLF'],
  [CAT='RCE'],
  [CAT='PRK'] { polygon-fill: @park; }
}

#cityregion[zoom>=9] {
  polygon-gamma: 0.75;
  polygon-fill: lighten(@cityzoom, 3.5%);
}

#localityregion {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}

#openregion {
  polygon-opacity:1;
  [CAT='AIR'] { polygon-fill: @airport; }
  [CAT='BCH'] { polygon-fill: @beach; }
  [CAT='OPN'] { polygon-fill: @park; }
  [CAT='SND'] { polygon-fill: @land; }
  [CAT='TRN'] { polygon-fill: @airport; }
}

#builtupregion[zoom>=13] {
  polygon-opacity: 1;
  [CAT='IND'],
  [CAT='TRN'] { polygon-fill: @industrial; }
  [CAT='EDU'] {
    polygon-fill: darken(@school, 5%);
    [zoom>=15] { polygon-fill: darken(@school, 2%); }
    [zoom>=17] { polygon-fill: @school; }
  }
  [CAT='EMR'] {
    polygon-fill: darken(@hospital, 5%);
    [zoom>=15] { polygon-fill: darken(@hospital, 2%); }
    [zoom>=17] { polygon-fill: @hospital; }
  }
  [CAT='REC'],
  [CAT='CMN'] { polygon-fill: @sports; }
  [CAT='COM'] {
    polygon-opacity: 0;
    polygon-fill: @commercial;
    [zoom=14] { polygon-opacity: 0.6; }
    [zoom=15] { polygon-opacity: 0.8; }
    [zoom>=16] { polygon-opacity: 1; }
  }
  [CAT='INS'],
  [CAT='HIS'],
  [CAT='RES'],
  [CAT='OTH'] {
    polygon-opacity: 0;
    polygon-fill: @building;
    [CAT='RES'] { polygon-fill: @residential; }
    [zoom=17] { polygon-opacity: 0.6; }
    [zoom>=18] { polygon-opacity: 1; }
  }
}

#waterregion {
  polygon-opacity: 1;
  polygon-fill: @water;
  [CAT='LAK'] {
    polygon-opacity: 0;
    [zoom>9] { polygon-opacity: 1; }
  }
  [CAT='PND'] {
    polygon-opacity: 0;
    [zoom>11] { polygon-opacity: 1; }
  }
  [CAT='SWT'] {
    polygon-opacity: 0;
    [zoom>13] { polygon-opacity: 1; }
  }
}

#waterregion[CAT='MUD'][zoom>11] {
  [zoom>11][zoom<=14] { polygon-pattern-file:url(img/marsh-16.png); }
  [zoom>14] { polygon-pattern-file:url(img/marsh-32.png);}
}

Map { background-color: @water; }