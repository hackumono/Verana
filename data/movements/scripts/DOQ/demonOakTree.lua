function onStepOut(cid, item, position, fromPosition)

    if(item.uid == blockingTree[2709][1]) then
        doTransformItem(item.uid, 2709)
    end
    return true
end