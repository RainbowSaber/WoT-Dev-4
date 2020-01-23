import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import scripts.library as lib;

val hItems as IItemStack[] =
[
    <dynamictrees:staff>.withTag({code: "P", tree: "dynamictrees:oak"}),
    <dynamictrees:oakbranchx>,
    <dynamictrees:oakbranch>,
    <dynamictrees:sprucebranch>,
    <dynamictrees:sprucebranchx>,
    <dynamictrees:birchbranch>,
    <dynamictrees:junglebranch>,
    <dynamictrees:acaciabranch>,
    <dynamictrees:darkoakbranch>,
    <dynamictrees:darkoakbranchx>,
    <dynamictrees:cactusbranch>,
    <dynamictreestc:greatwoodbranch>,
    <dynamictreestc:greatwoodbranchx>,
    <dynamictreestc:silverwoodbranch>,
    <dynamictreestc:silverwoodbranchx>
];

lib.hideArray(hItems);
