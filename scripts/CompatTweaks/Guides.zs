import crafttweaker.item.IItemStack;

var books as IItemStack[] = [
    <thaumcraft:thaumonomicon>,
    <patchouli:guide_book>.withTag({"patchouli:book": "dynamictrees:guide"}),
    <patchouli:guide_book>.withTag({"patchouli:book": "engineersdecor:engineersdecor_manual"}),
    <immersiveengineering:tool:3>,
    <betterwithmods:manual>,
    <rustic:book>
];

for book in books {
    book.addTooltip("Manual");
}

recipes.remove(<patchouli:guide_book>.withTag({"patchouli:book": "betterwithmods:betterwithmods"}));
recipes.addShapeless("bwm_manual", <betterwithmods:manual>, [<minecraft:book>, <betterwithmods:material>]);