/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */


/* At lower zoomlevels, just show major automobile routes: expressways
and national highways. */
#roadpolyline[zoom>=5][zoom<=8] {
  line-width: 0;
  [FRC=@EXPRESS_WAY] { line-color: lighten(@nh_line, 5%); }
  [FRC=@NATIONAL_HIGHWAY] { line-color: darken(@sh_line, 5%); }
  [FREEWAY=1] { line-color: @expressway_line; }
  [zoom=5] {
    [FRC=@EXPRESS_WAY] { line-width: 0.8; } }
  [zoom=6] {
    [FRC=@EXPRESS_WAY] { line-width: 1; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: 1; } }
  [zoom=7] {
    [FRC=@EXPRESS_WAY] { line-width: 1.2; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: 1.2; } }
  [zoom=8] {
    [FRC=@EXPRESS_WAY] { line-width: 1.4; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: 1.2; } }
}


/* At mid-level scales start to show primary and secondary routes
as well. */
#roadpolyline[zoom>=9][zoom<=10] {
  line-width: 0;
  [FRC=@EXPRESS_WAY] { line-color: lighten(@nh_line, 5%); }
  [FRC=@NATIONAL_HIGHWAY] { line-color: darken(@sh_line, 5%); }
  [FRC=@SH_MAIN_ROAD] { line-color: @primary_line; }
  [FREEWAY=1] { line-color: @expressway_line; }
  [zoom=9] {
    [FRC=@EXPRESS_WAY] { line-width: 1.4; }
    ::outline {
      [FRC=@NATIONAL_HIGHWAY] {
        line-color: @sh_case;
        line-width: 0.8;
      }
      [FRC=@SH_MAIN_ROAD] {
        line-color: @primary_case;
        line-width: 0.8;
      }
      [FTR_CRY='RDA'] { line-width: 0; }
    }
    ::inline {
      [FRC=@NATIONAL_HIGHWAY] {
        line-color: @sh_case;
        line-width: 0.8;
      }
    }
  }
  [zoom=10] {
    [FRC=@EXPRESS_WAY] { line-width: 1.8; }
    ::outline {
      [FRC=@NATIONAL_HIGHWAY] {
        line-color: @sh_case;
        line-width: 1.4;
      }
      [FRC=@SH_MAIN_ROAD] {
        line-color: @primary_case;
        line-width: 0.8;
      }
      [FTR_CRY='RDA'] { line-width: 0; }
    }
    ::inline {
      [FRC=@NATIONAL_HIGHWAY] {
        line-color: @sh_case;
        line-width: 0.8;
      }
    }
  }
}


/* At higher levels the roads become more complex. We're now showing 
more than just automobile routes - railways, footways, and cycleways
come in as well.

/* Road width variables that are used in road & bridge styles */
@rdz11_maj: 1.6;   @rdz11_med: 1.1;   @rdz11_min: 0.0;
@rdz12_maj: 2.1;   @rdz12_med: 1.9;   @rdz12_min: 0.0;
@rdz13_maj: 2.5;   @rdz13_med: 2.7;   @rdz13_min: 0.0;
@rdz14_maj: 3;     @rdz14_med: 3.2;   @rdz14_min: 0;
@rdz15_maj: 4.5;   @rdz15_med: 7.8;   @rdz15_min: 2;
@rdz16_maj: 8;     @rdz16_med: 10;    @rdz16_min: 3;
@rdz17_maj: 13;    @rdz17_med: 17;    @rdz17_min: 8;
@rdz18_maj: 21;    @rdz18_med: 30;    @rdz18_min: 11;

/* ---- Casing ----------------------------------------------- */

#roadpolyline::outline[zoom>=11][zoom<=20] {
  /* -- colors & styles -- */
  line-cap: round;
  line-join: round;
  [FOW=@BRIDGE],
  [FOW=@TUNNEL] {
    line-cap: butt;
  }
  line-color: @standard_case;
  [zoom>16] { line-color: darken(@standard_case, 15%); }
  [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: @standard_case * 0.8; }
  [FRC=@EXPRESS_WAY] {
    line-color: @nh_line;
    [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: @nh_line * 0.8; }
  }
  [FRC=@NATIONAL_HIGHWAY] {
    line-color: @sh_line;
    [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: @sh_line * 0.8; }
  }
  [zoom>12]{
    [FRC=@SH_MAIN_ROAD] {
      line-color: @primary_case;
      [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: @primary_case * 0.8; }
    }
    [FRC=@MINOR_ROAD] {
      line-color: @secondary_case;
      [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: @secondary_case * 0.8; }
    }
  }
  [FOW=@TUNNEL],[FOW=@UNDERPASS] { line-dasharray: 3,3; }
  
  /* -- widths -- */
  [zoom=11] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz11_maj + 1; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz11_med + 1.6; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz11_min + 0.6; }
    /* No minor roads yet */
    [FRC=@MINOR_ROAD]{ line-width: 0; }
    [FRC=@LANE]   { line-width: 0; }
    [FRC=@SUB_LANE]  { line-width: 0; }
  }
  [zoom=12] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz12_maj + 0.7; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz12_med + 1.4; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz12_min + 1; }
    [FRC=@MINOR_ROAD]{ line-width: @rdz12_min + 0.5; }
    /* No lanes yet */
    [FRC=@LANE]   { line-width: 0; }
    [FRC=@SUB_LANE]  { line-width: 0; }
  }
  [zoom=13] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz13_maj + 1.5; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz13_med + 2.1; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz13_min + 2.1; }
    [FRC=@MINOR_ROAD] { line-width: @rdz13_min + 0.5; }
    [FRC=@LANE]   { line-width: @rdz13_min + 0.5; }
    /* No sub-lanes yet */
    [FRC=@SUB_LANE]  { line-width: 0; }
  }
  [zoom=14] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz14_maj + 1.3; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz14_med + 1.9; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz14_min + 3; }
    [FRC=@MINOR_ROAD] { line-width: @rdz14_min + 3; }
    [FRC=@LANE]   { line-width: @rdz14_min + 1.0; }
    [FRC=@SUB_LANE]  { line-width: @rdz14_min + 0.7; }
  }
  [zoom=15] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz15_maj + 2; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz15_med + 2.3; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz15_min + 4; }
    [FRC=@MINOR_ROAD]{ line-width: @rdz15_min + 3.4; }
    [FRC=@LANE]   { line-width: @rdz15_min + 3; }
    [FRC=@SUB_LANE]  { line-width: @rdz15_min + 1; }
  }
  [zoom=16] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz16_maj + 1.5; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz16_med + 2.3; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz16_min + 5; }
    [FRC=@MINOR_ROAD]{ line-width: @rdz16_min + 4.5; }
    [FRC=@LANE]   { line-width: @rdz16_min + 4.3; }
    [FRC=@SUB_LANE]  { line-width: @rdz16_min + 2.7; }
  }
  [zoom=17] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz17_maj + 2; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz17_med + 2.5; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz17_min + 5; }
    [FRC=@MINOR_ROAD]{ line-width: @rdz17_min + 4; }
    [FRC=@LANE]   { line-width: @rdz17_min + 3; }
    [FRC=@SUB_LANE]  { line-width: @rdz17_min + 2.5; }
  }
  [zoom>=18] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz18_maj + 3; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz18_med + 3; }
    [FRC=@SH_MAIN_ROAD]  { line-width: @rdz18_min + 8; }
    [FRC=@MINOR_ROAD]{ line-width: @rdz18_min + 7; }
    [FRC=@LANE]   { line-width: @rdz18_min + 6; }
    [FRC=@SUB_LANE]  { line-width: @rdz18_min + 3; }
  }
}


#roadpolyline::inline[zoom>=11][zoom<=20] {
  /* -- colors & styles -- */
  line-color: @standard_fill;
  [FOW=@TUNNEL],[FOW=@UNDERPASS] { line-color: lighten(@standard_fill, 10%); }
  [FRC=@EXPRESS_WAY] {
    line-color: @nh_fill;
    [FOW=@TUNNEL],[FOW=@UNDERPASS] { line-color: lighten(@nh_fill, 15%); }
    [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: darken(@nh_fill, 15%); }
  }
  [FRC=@NATIONAL_HIGHWAY] {
    line-color: @sh_fill;
    [FOW=@TUNNEL],[FOW=@UNDERPASS] { line-color: lighten(@sh_fill, 15%); }
    [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: darken(@sh_fill, 10%); }
  }
  [FRC=@SH_MAIN_ROAD]{
    line-color: @primary_fill;
    [FOW=@TUNNEL],[FOW=@UNDERPASS] { line-color: lighten(@primary_fill, 15%); }
    [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: darken(@primary_fill, 10%); }
  }
  [FRC=@MINOR_ROAD]{
    line-color: @secondary_fill;
    [FOW=@TUNNEL],[FOW=@UNDERPASS] { line-color: lighten(@secondary_fill, 15%); }
    [FOW=@BRIDGE],[FOW=@FLYOVER] { line-color: darken(@secondary_fill, 10%); }
  }

  [FRC=@LANE],
  [FRC=@SUB_LANE] {
    line-width: 0;
  }
  [FRC=@EXPRESS_WAY],
  [FRC=@NATIONAL_HIGHWAY],
  [FRC=@SH_MAIN_ROAD],
  [FRC=@LANE] {
    line-cap: round;
    line-join: round;
  }
  [FRC=@SUB_LANE] {
    line-join: round;
  }
  [FOW=@TUNNEL],[FOW=@UNDERPASS] { line-cap: butt; }

  /* -- widths -- */
  [zoom=11] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz11_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz11_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: 0; }
    [FRC=@MINOR_ROAD]  { line-width: 0; }
  }
  [zoom=12] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz12_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz12_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: 0; }
    [FRC=@MINOR_ROAD]  { line-width: 0; }
  }
  [zoom=13] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz13_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz13_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: @rdz13_min + 1.6; }
    [FRC=@MINOR_ROAD]  { line-width: @rdz13_min / 3; }
  }
  [zoom=14] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz14_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz14_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: @rdz14_min + 2.2; }
    [FRC=@MINOR_ROAD]  { line-width: @rdz14_min + 2.2; }
  }
  [zoom=15] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz15_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz15_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: @rdz15_min + 3; }
    [FRC=@MINOR_ROAD]  { line-width: @rdz15_min + 2.5; }
    [FRC=@LANE]   { line-width: @rdz15_min + 1.5; }
    [FRC=@SUB_LANE]   { line-width: @rdz15_min; }
  }
  [zoom=16] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz16_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz16_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: @rdz16_min + 4; }
    [FRC=@MINOR_ROAD]  { line-width: @rdz16_min + 3; }
    [FRC=@LANE]   { line-width: @rdz16_min + 2.5; }
    [FRC=@SUB_LANE]   { line-width: @rdz16_min + 1.1; }
  }
  [zoom=17] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz17_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz17_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: @rdz17_min + 3.6; }
    [FRC=@MINOR_ROAD]  { line-width: @rdz17_min + 3; }
    [FRC=@LANE]   { line-width: @rdz17_min + 1.6; }
    [FRC=@SUB_LANE]   { line-width: @rdz17_min + 0.8; }
  }
  [zoom>=18] {
    [FRC=@EXPRESS_WAY] { line-width: @rdz18_maj; }
    [FRC=@NATIONAL_HIGHWAY] { line-width: @rdz18_med; }
    [FRC=@SH_MAIN_ROAD]{ line-width: @rdz18_min + 6.5; }
    [FRC=@MINOR_ROAD]  { line-width: @rdz18_min + 6; }
    [FRC=@LANE]   { line-width: @rdz18_min + 4.2; }
    [FRC=@SUB_LANE]   { line-width: @rdz18_min + 1; }
  }
}


/* Rail lines */
#railwaypolyline[zoom>=11] {
  line-color: @rail_line;
  line-dasharray: 1,1;
  [zoom>15] { line-dasharray: 1,2; }
  [zoom=11] { line-width: 0.4; }
  [zoom=12] { line-width: 0.6; }
  [zoom=13] { line-width: 0.8; }
  [zoom=14] { line-width: 1; }
  [zoom=15] { line-width: 1.5; }
  [zoom=16] { line-width: 2; }
  [zoom=17] { line-width: 3; }
  [zoom>=18] { line-width: 4; }
}