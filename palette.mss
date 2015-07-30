/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";
/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #F1EEE7;// #E4ECCF;
@landlow:           #E9EBDE;
@landlowmed:        #F3F4ED;
@landmed:           #F7F5F1;
@landhigh:          #FAF5EF;
@cityzoom:          #E9E5DC;

@water:             #9BC2FF;
@grass:             #CAE2BC;
@beach:             #F9F1B8;
@park:              #CBDEAC;
@cemetery:          #D6DED2;
@wooded:            #CAE0A8; //#C3D9AD;
@agriculture:       #F2E8B6;
@airport:           #DFDBD4;

@building:          #DFDBD4;
@hospital:          rgb(229,198,195);
@school:            #E8DDBD;
@sports:            #B8E6B8;
@restaurant:        #88513E;

@residential:       @building * 0.999;
@commercial:        @building * 0.99;
@industrial:        @building * 0.96;
@parking:           #EEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@expressway_line:     #f0843c;
@expressway_fill:     lighten(@expressway_line,10%);
@expressway_case:     @expressway_line * 0.9;

@nh_line:        #e8c249; //d7cf34
@nh_fill:        #ffe25d;
@nh_case:        @nh_line * 0.9;

@sh_line:      #dddad4;
@sh_fill_city: #ffffff;
@sh_fill:      lighten(@sh_line,30%);
@sh_case:      @sh_line * 0.9;

@mainroad_line:    #d7d6cf;
@mainroad_fill:    lighten(@mainroad_line,30%);
@mainroad_case:    @mainroad_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #fff;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;



@motorway_line:     #f0843c;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #d7cf34;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #dddad4;
@primary_fill_city: #ffffff;
@primary_fill:      lighten(@primary_line,30%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #d7d6cf;
@secondary_fill:    lighten(@secondary_line,30%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #fff;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,97%);

@country_text:      #191220;
@country_halo:      @place_halo;

@state_text:        #79767c;
@state_halo:        @place_halo;

@city_text:         #363333;
@city_halo:         @place_halo;

@town_text:         #666;
@town_halo:         @place_halo;

@poi_text:          #888;

@road_text:         #171515;
@road_halo:         #fff;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #877C62;
@locality_halo:     @land;

@sublocality_text:  #908876;
@sublocality_halo:  @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

/* ****************************************************************** */

/* ================================================================== */
/* MARKER COLORS
/* ================================================================== */

@hospital_marker: red;
@details17: grey;
@financial_marker: darkgreen;
@historical_marker: lightyellow;