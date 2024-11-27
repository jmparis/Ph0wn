$fn = 64;

thick   =   5;

// L'anneau
anneau_width    =   8;
anneau_height   =   15;
anneau_thick    =   thick;

translate( [ 0, -anneau_height/2.0, 0] ) {
    cube(
        [
            anneau_width    ,
            anneau_height   ,
            anneau_thick
        ]
    );
}

// La tige
tige_width  =   17;
tige_thick  =   thick;

difference() {
    translate( [8, 0, tige_thick/2.0] ) {
        rotate( [0, 90, 0] ) {
            cylinder( tige_width, tige_thick/2.0, tige_thick/2.0 );
        }
    }

    translate( [8 + tige_width - 3, 0, tige_thick/2.0] ) {
        rotate( [0, 90, 0] ) {
            cylinder( 3, 3/2., 3/2. );
        }
    }
}

// Le Panneton
gorge_nb        =   5;
gorge_width     =   1.5;
gorge_thick     =   thick;

panneton_width  =   gorge_nb * gorge_width + 2;
panneton_height =   10;
panneton_thick  =   thick;

/// NEW
translate(
        [anneau_width + tige_width - panneton_width ,
        -panneton_height            ,
        0]
)
{
    panneton( gorge_width, panneton_thick );
}

module panneton( g_width, p_thick ) {
    difference() {
        cube(
            [
                panneton_width  ,
                panneton_height ,
                p_thick
            ]
        );

    translate( [ panneton_width-3, panneton_height, tige_thick/2.0] ) {
        rotate( [0, 90, 0] ) {
            cylinder( 3, 3/2., 3/2. );
        }
    }
        
        // Gorges en négatif
        // Gorge N°1
        translate( [0 * g_width, 0, 0]) {
            cube( [g_width, 5, p_thick] );
        }
        // Gorge N°2
        translate( [1 * g_width, 0, 0]) {
            cube( [g_width, 6, p_thick] );
        }
        
        // Gorge N°3
        translate( [2 * g_width, 0, 0]) {
            cube( [g_width, 3, p_thick] );
        }

        // Gorge N°4
        translate( [3 * g_width, 0, 0]) {
            cube( [g_width, 0, p_thick] );
        }

        // Gorge N°5
        translate( [4 * g_width, 0, 0]) {
            cube( [g_width, 3, p_thick] );
        }
    }
}

