(*
Program name: Grow_4
Version: 7.4.1 Build: 202
Author: Dr Rafal Urniaz
Subscription: This file is a part of the Grow_4 a scientific software
for structural bioinfiormatics, data visualization and sequence analysis.
It was created and developed by Dr Rafal Urniaz. For more details please
visit http://www.grow4.eu or http://www.biotesseract.com
*)

var
  xGrid:integer=1;
  yGrid:integer=1;
  newGrid:integer=1;
  activeGrid:TObject;   // aktywny grid
  selectionAfterEqualityMarkX:integer=0; // czy zaznaczenie ma zwracac do komorki wpisywania procedury
  selectionAfterEqualityMarkY:integer=0;
  selectionAfterEqualityStart:integer=0;
  zasobnik_programu:string; // przechowuje tymczasowe stringi programu dostepne glogalnie
  projecttablexGrid:integer=1; // zmienne x project table form
  projecttableyGrid:integer=1; // zmienna y project table form

  // Container
  Cols_Titled_Count_Container:integer=5;

  // server
  ServerConnected:boolean=false;

  // undo
  UndoGrid:Tobject;
  Xundo:integer=1;
  Yundo:integer=1;
  UndoText:string;

  // Grids
  NrColSection:integer=0;
  NrColVis:integer=1;
  NrColInc:integer=2;
  NrColAtomId:integer=3;
  NrColAtomName:integer=4;
  NrColAlternateLocationIndicator:integer=5;
  NrColResidueName:integer=6;
  NrChainIdentifier:integer=7;
  NrColSequenceNr:integer=8;
  NrColx:integer=10;
  NrColy:integer=11;
  NrColz:integer=12;
  NrColOccupancy:integer=13;
  NrColTemperatureFactor:integer=14;
  NrColElementSymbol:integer=16;
  NrColChargeOnTheAtom:integer=17;
  NrColRadius:integer=18;
  NrColColor:integer=19;

  // Plane - PLA
  NrColPlane_Distance:integer=13;
  NrColPlane_Angle:integer=14;
  NrColPlane_Perimeter:integer=15;
  NrColPlane_Surface:integer=17;

  // Temporaty Record
  TempRecord: array [0..22] of string; // columns as above + 22 because Bonds array

  // Project_Table_form
  NrColProj_No:integer=0;
  NrColProj_Vis:integer=1;
  NrColProj_Inc:integer=2;
  NrColProj_Name:integer=3;
  NrColProj_Type:integer=4;
  NrColProj_OriginalFileName:integer=5;
  NrColProj_Comment:integer=6;
  NrColProj_Vis_type:integer=7;

  // Bonds
  NrColBonds_ProjectNumber:integer=0;
  NrColBonds_Vis:integer=1;
  NrColBonds_Inc:integer=2;
  NrColBonds_FirstResidueName:integer=3;
  NrColBonds_FirstResidueNumber:integer=4;
  NrColBonds_FirstAtomSymbolPDB:integer=5;
  NrColBonds_FirstAtomNumber:integer=6;
  NrColBonds_SecondResidueName:integer=7;
  NrColBonds_SecondResidueNumber:integer=8;
  NrColBonds_SecondAtomSymbolPDB:integer=9;
  NrColBonds_SecondAtomNumber:integer=10;
  NrColBonds_BondType:integer=11;
  NrColBonds_Distance:integer=12;
  NrColBonds_FirstAtomColor:integer=13;
  NrColBonds_SecondAtomColor:integer=14;
  NrColBonds_FirstX:integer=15;
  NrColBonds_FirstY:integer=16;
  NrColBonds_FirstZ:integer=17;
  NrColBonds_SecondX:integer=18;
  NrColBonds_SecondY:integer=19;
  NrColBonds_SecondZ:integer=20;
  NrColBonds_FirstElementSymbol:integer=21;
  NrColBonds_SecondElementSymbol:integer=22;

  // Selected
  NrColSelected_ProjectNumber:integer=0;
  NrColSelected_OriginalRowNumber:integer=1;
  NrColSelected_ObjectType:integer=2;

  // HOH table
  // Cof Cofactors Table

  // ------------------------------------------------------------------------------- remember to keep this number currrent in the project add next atom lean on this number
  LastConectNumber:integer=0;

  // 3D position click
  ThreeDpositionXclick:Double;
  ThreeDpositionYclick:Double;
  ThreeDpositionZclick:Double;

// Building Mode - Adding atom state
   BuildingMode:boolean=false;
   AddNewMolecule:boolean=true;
   AddElementName:string='C';
// Delete Mode - Deleting atom state
   DeleteMode:boolean=false;

// Main Project arrays

  Selected: array of array of string; {[0,0] = Row, Col}

  SelectedArrayColCount:integer=20;

  selected_count:integer=0;

  select_1_atom_Project:integer=1;
  select_1_atom_Row:integer=1;

{ -- Selected Atoms --

 [0]  Section <-------------------------- project number
 [1]  Vis.    <-------------------------- molecule type
 [2]  Inc.
 [3]  Atom serial number
 [4]  Atom name
 [5]  Alternate location indicator
 [6]  Residue name
 [7]  Chain identifier
 [8]  Residue sequence number
 [9]  Code for insertion of residues
 [10] X
 [11] Y
 [12] Z
 [13] Occupancy
 [14] Temperature factor
 [15] Segment identifier
 [16] Element symbol
 [17] Charge on the atom
 [18] Radius
 [19] Color

 ---------------------------------
 Suma = 20 kolumn
}

 Project: array of array of array of string; {[0,0,0] = Project, Row, Col}

 ProjectArrayColCount:integer=20;

 Project_col_names: array[0..19] of string = ('Section','Vis.','Inc.','Atom serial number','Atom name','Alternate location indicator','Residue name','Chain identifier','Residue sequence number','Code for insertion of residues','X','Y','Z','Occupancy','Temperature factor','Segment identifier','Element symbol','Charge on the atom','Radius','Color');

{
 -- Project --

 [0]  Section
 [1]  Vis.
 [2]  Inc.
 [3]  Atom serial number
 [4]  Atom name
 [5]  Alternate location indicator
 [6]  Residue name
 [7]  Chain identifier
 [8]  Residue sequence number
 [9]  Code for insertion of residues
 [10] X
 [11] Y
 [12] Z
 [13] Occupancy
 [14] Temperature factor
 [15] Segment identifier
 [16] Element symbol
 [17] Charge on the atom
 [18] Radius
 [19] Color

 ---------------------------------
 Suma = 20 kolumn
}

  Bonds: array of array of string;  {[0,0] = Row,Col}
  BondsArrayColCount:integer=23;

{
   -- Bonds --

    [0]  Molecule number = project number = array numer
    [1]  Vis.
    [2]  Inc.
    [3]  First residue name (3 leter code)
    [4]  First residue number
    [5]  First atom symbol PDB
    [6]  First atom number
    [7]  Second residue name
    [8]  Second residue number
    [9]  Second atom symbol PDB
    [10] Second atom number
    [11] Bond type
    [12] Distance
    [13] First atom color
    [14] Second atom color
    [15] First X
    [16] First Y
    [17] First Z
    [18] Second X
    [19] Second Y
    [20] Second Z
    [21] First Element Symbol
    [22] Second Element Symbol

   ---------------------------------
   Suma = 21 kolumn
  }

// Scientific arrays

  Protein_bonds_def: array of array of string;  {[0,0] = Row,Col}       // http://www.bmrb.wisc.edu/referenc/commonaa.php?ala
  DNA_bonds_def: array of array of string;  {[0,0] = Row,Col}           //http://www.rcsb.org/pdb/101/static101.do?p=education_discussion/Looking-at-Structures/coordinates.html

{
-- Protein_bonds_def --
-- DNA_bonds_def --

[0] Residue name
[1] Three letter code
[2] One letter code
[3] First element name (PDB nomenclature)
[4] First element symbol
[5] Second element name (PDB nomenclature)
[6] Second element symbol
[7] Bond type
[8] Alternative bond type
[9] Distance

---------------------------------
Suma = 10 kolumn

}

  Ligand_bonds_def: array of array of string;  {[0,0] = Row,Col}

{
-- Ligand_bonds_def --

[0] First element symbol
[1] Second element symbol
[2] Distance
[3] Bond type
---------------------------------
Suma = 10 kolumny

}

  Atoms_def: array of array of string;  {[0,0]}

{
  -- Atoms_def --

  [0] Atomic number
  [1] Element full Name
  [2] Element symbol
  [3] Color_R
  [4] Color_G
  [5] Color_B
  [6] Radius_used
  [7] Radius_covalent
  [8] Radius_atomic
  [9] Charge_state&radius_ionic
  ---------------------------------
  Suma = 10 kolumny

}

Atoms_nomenclature: array of array of string;  {[0,0]}

{
-- Atoms_nomenclature --

[0] Amino acid one letter code
[1] PDB
[2] BMRB
[3] SC
[4] UCSF
[5] MSI
[6] XPLOR
[7] SYBYL
[8] MIDAS
[9] DIANA
---------------------------------
Suma = 10 kolumny

}


