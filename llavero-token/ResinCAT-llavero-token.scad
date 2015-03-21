// Llavero/Token ResinCAT3D
// Licencia (CC) BY - SA
// By: ResinCAT3D Team

// Nota: Se necesita la versión 2015.03
// o superior de OpenSCAD para generarlo 

// Escala 1:10 = 3 x 3.5 cm 
escala = 0.1 ; 

// Agujero para el llavero
// true = activado / false = desactivado
Agujero = true ; 
// Diámetro del agujero
DA = 35 ;

// Altura de la base
hbase = 30 ;

module tokenkeychain(){
    //Base
    color("DimGray")
    difference(){
        hull(){
            translate([0,-30,0])
            cylinder(d=300,h=hbase);
            translate([0,160,0])
            cylinder(d=25,h=hbase);
        }
        if (Agujero==true){
            translate([0,130,-1])
            cylinder(d=DA,h=hbase+2);
        }
    }
    //Logo
    color("LimeGreen")
    translate([0,-30,0])
    difference(){
        surface("ResinCat3D-logo.png",center=true);
        // Eliminar capa negra inferior
        cube([400,400,3],center=true);
    }
}

// Generar Token escalado
scale(escala)
tokenkeychain();