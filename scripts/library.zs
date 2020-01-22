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

function removeNBTfromMod(mod as string, t_items as IItemStack[]) {
    val iMod = loadedMods[mod];
    for item in iMod.items {
        for match in t_items {
            if (true) {
                if (item.hasTag) {
                    print(item.displayName);
                }
            }
        }

    }
}