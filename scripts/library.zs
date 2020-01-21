import crafttweaker.item.IItemStack;

#priority 999

function cleanArray(items as IItemStack[]) {
    for item in items {
	    mods.jei.JEI.removeAndHide(item);
        recipes.remove(item);
    }
}

function hideArray(items as IItemStack[]) {
    for item in items {
        mods.jei.JEI.removeAndHide(item);
    }
}