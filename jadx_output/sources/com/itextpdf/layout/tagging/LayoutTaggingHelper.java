package com.itextpdf.layout.tagging;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.TagStructureContext;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.kernel.pdf.tagutils.WaitingTagsManager;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.renderer.AreaBreakRenderer;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class LayoutTaggingHelper {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private TagStructureContext context;
    private PdfDocument document;
    private Map<PdfObject, TaggingDummyElement> existingTagsDummies;
    private boolean immediateFlush;
    private final int RETVAL_NO_PARENT = -1;
    private final int RETVAL_PARENT_AND_KID_FINISHED = -2;
    private Map<TaggingHintKey, List<TaggingHintKey>> kidsHints = new LinkedHashMap();
    private Map<TaggingHintKey, TaggingHintKey> parentHints = new LinkedHashMap();
    private Map<IRenderer, TagTreePointer> autoTaggingPointerSavedPosition = new HashMap();
    private Map<String, List<ITaggingRule>> taggingRules = new HashMap();

    public LayoutTaggingHelper(PdfDocument pdfDocument, boolean z) {
        this.document = pdfDocument;
        this.context = pdfDocument.getTagStructureContext();
        this.immediateFlush = z;
        registerRules(this.context.getTagStructureTargetVersion());
        this.existingTagsDummies = new LinkedHashMap();
    }

    public static void addTreeHints(LayoutTaggingHelper layoutTaggingHelper, IRenderer iRenderer) {
        List<IRenderer> childRenderers = iRenderer.getChildRenderers();
        if (childRenderers == null) {
            return;
        }
        layoutTaggingHelper.addKidsHint(iRenderer, childRenderers);
        Iterator<IRenderer> it = childRenderers.iterator();
        while (it.hasNext()) {
            addTreeHints(layoutTaggingHelper, it.next());
        }
    }

    public static TaggingHintKey getHintKey(IPropertyContainer iPropertyContainer) {
        return (TaggingHintKey) iPropertyContainer.getProperty(109);
    }

    public static TaggingHintKey getOrCreateHintKey(IPropertyContainer iPropertyContainer) {
        return getOrCreateHintKey(iPropertyContainer, true);
    }

    public void addKidsHint(TagTreePointer tagTreePointer, Iterable<? extends IPropertyContainer> iterable) {
        PdfDictionary pdfObject = this.context.getPointerStructElem(tagTreePointer).getPdfObject();
        TaggingDummyElement taggingDummyElement = this.existingTagsDummies.get(pdfObject);
        if (taggingDummyElement == null) {
            taggingDummyElement = new TaggingDummyElement(tagTreePointer.getRole());
            this.existingTagsDummies.put(pdfObject, taggingDummyElement);
        }
        this.context.getWaitingTagsManager().assignWaitingState(tagTreePointer, getOrCreateHintKey(taggingDummyElement));
        addKidsHint(taggingDummyElement, iterable);
    }

    public void addKidsHint(IPropertyContainer iPropertyContainer, Iterable<? extends IPropertyContainer> iterable) {
        addKidsHint(iPropertyContainer, iterable, -1);
    }

    public void addKidsHint(IPropertyContainer iPropertyContainer, Iterable<? extends IPropertyContainer> iterable, int i) {
        if (iPropertyContainer instanceof AreaBreakRenderer) {
            return;
        }
        TaggingHintKey orCreateHintKey = getOrCreateHintKey(iPropertyContainer);
        ArrayList arrayList = new ArrayList();
        for (IPropertyContainer iPropertyContainer2 : iterable) {
            if (iPropertyContainer2 instanceof AreaBreakRenderer) {
                return;
            } else {
                arrayList.add(getOrCreateHintKey(iPropertyContainer2));
            }
        }
        addKidsHint(orCreateHintKey, arrayList, i);
    }

    public void addKidsHint(TaggingHintKey taggingHintKey, Collection<TaggingHintKey> collection) {
        addKidsHint(taggingHintKey, collection, -1);
    }

    public void addKidsHint(TaggingHintKey taggingHintKey, Collection<TaggingHintKey> collection, int i) {
        addKidsHint(taggingHintKey, collection, i, false);
    }

    public void setRoleHint(IPropertyContainer iPropertyContainer, String str) {
        getOrCreateHintKey(iPropertyContainer).setOverriddenRole(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isArtifact(com.itextpdf.layout.IPropertyContainer r3) {
        /*
            r2 = this;
            com.itextpdf.layout.tagging.TaggingHintKey r0 = getHintKey(r3)
            if (r0 == 0) goto Lb
            boolean r3 = r0.isArtifact()
            return r3
        Lb:
            boolean r0 = r3 instanceof com.itextpdf.layout.renderer.IRenderer
            if (r0 == 0) goto L21
            r0 = r3
            com.itextpdf.layout.renderer.IRenderer r0 = (com.itextpdf.layout.renderer.IRenderer) r0
            com.itextpdf.layout.IPropertyContainer r1 = r0.getModelElement()
            boolean r1 = r1 instanceof com.itextpdf.layout.tagging.IAccessibleElement
            if (r1 == 0) goto L21
            com.itextpdf.layout.IPropertyContainer r3 = r0.getModelElement()
            com.itextpdf.layout.tagging.IAccessibleElement r3 = (com.itextpdf.layout.tagging.IAccessibleElement) r3
            goto L29
        L21:
            boolean r0 = r3 instanceof com.itextpdf.layout.tagging.IAccessibleElement
            if (r0 == 0) goto L28
            com.itextpdf.layout.tagging.IAccessibleElement r3 = (com.itextpdf.layout.tagging.IAccessibleElement) r3
            goto L29
        L28:
            r3 = 0
        L29:
            if (r3 == 0) goto L3a
            com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties r3 = r3.getAccessibilityProperties()
            java.lang.String r3 = r3.getRole()
            java.lang.String r0 = "Artifact"
            boolean r3 = r0.equals(r3)
            return r3
        L3a:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.tagging.LayoutTaggingHelper.isArtifact(com.itextpdf.layout.IPropertyContainer):boolean");
    }

    public void markArtifactHint(IPropertyContainer iPropertyContainer) {
        markArtifactHint(getOrCreateHintKey(iPropertyContainer));
    }

    public void markArtifactHint(TaggingHintKey taggingHintKey) {
        taggingHintKey.setArtifact();
        taggingHintKey.setFinished();
        TagTreePointer tagTreePointer = new TagTreePointer(this.document);
        if (this.context.getWaitingTagsManager().tryMovePointerToWaitingTag(tagTreePointer, taggingHintKey)) {
            LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.ALREADY_TAGGED_HINT_MARKED_ARTIFACT);
            this.context.getWaitingTagsManager().removeWaitingState(taggingHintKey);
            if (this.immediateFlush) {
                tagTreePointer.flushParentsIfAllKidsFlushed();
            }
        }
        Iterator<TaggingHintKey> it = getKidsHint(taggingHintKey).iterator();
        while (it.hasNext()) {
            markArtifactHint(it.next());
        }
        removeParentHint(taggingHintKey);
    }

    public TagTreePointer useAutoTaggingPointerAndRememberItsPosition(IRenderer iRenderer) {
        TagTreePointer autoTaggingPointer = this.context.getAutoTaggingPointer();
        this.autoTaggingPointerSavedPosition.put(iRenderer, new TagTreePointer(autoTaggingPointer));
        return autoTaggingPointer;
    }

    public void restoreAutoTaggingPointerPosition(IRenderer iRenderer) {
        TagTreePointer autoTaggingPointer = this.context.getAutoTaggingPointer();
        TagTreePointer tagTreePointerRemove = this.autoTaggingPointerSavedPosition.remove(iRenderer);
        if (tagTreePointerRemove != null) {
            autoTaggingPointer.moveToPointer(tagTreePointerRemove);
        }
    }

    public List<TaggingHintKey> getKidsHint(TaggingHintKey taggingHintKey) {
        List<TaggingHintKey> list = this.kidsHints.get(taggingHintKey);
        if (list == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(list);
    }

    public List<TaggingHintKey> getAccessibleKidsHint(TaggingHintKey taggingHintKey) {
        List<TaggingHintKey> list = this.kidsHints.get(taggingHintKey);
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (TaggingHintKey taggingHintKey2 : list) {
            if (isNonAccessibleHint(taggingHintKey2)) {
                arrayList.addAll(getAccessibleKidsHint(taggingHintKey2));
            } else {
                arrayList.add(taggingHintKey2);
            }
        }
        return arrayList;
    }

    public TaggingHintKey getParentHint(IPropertyContainer iPropertyContainer) {
        TaggingHintKey hintKey = getHintKey(iPropertyContainer);
        if (hintKey == null) {
            return null;
        }
        return getParentHint(hintKey);
    }

    public TaggingHintKey getParentHint(TaggingHintKey taggingHintKey) {
        return this.parentHints.get(taggingHintKey);
    }

    public TaggingHintKey getAccessibleParentHint(TaggingHintKey taggingHintKey) {
        do {
            taggingHintKey = getParentHint(taggingHintKey);
            if (taggingHintKey == null) {
                break;
            }
        } while (isNonAccessibleHint(taggingHintKey));
        return taggingHintKey;
    }

    public void releaseFinishedHints() {
        TaggingHintKey next;
        HashSet<TaggingHintKey> hashSet = new HashSet();
        for (Map.Entry<TaggingHintKey, TaggingHintKey> entry : this.parentHints.entrySet()) {
            hashSet.add(entry.getKey());
            hashSet.add(entry.getValue());
        }
        for (TaggingHintKey taggingHintKey : hashSet) {
            if (taggingHintKey.isFinished() && !isNonAccessibleHint(taggingHintKey) && !(taggingHintKey.getAccessibleElement() instanceof TaggingDummyElement)) {
                finishDummyKids(getKidsHint(taggingHintKey));
            }
        }
        HashSet hashSet2 = new HashSet();
        for (TaggingHintKey taggingHintKey2 : hashSet) {
            if (!isNonAccessibleHint(taggingHintKey2)) {
                Iterator<TaggingHintKey> it = getAccessibleKidsHint(taggingHintKey2).iterator();
                while (true) {
                    boolean z = false;
                    while (it.hasNext()) {
                        next = it.next();
                        if (next.isFinished()) {
                            if (z) {
                                break;
                            }
                        } else {
                            z = true;
                        }
                    }
                    hashSet2.add(next);
                }
            }
        }
        for (TaggingHintKey taggingHintKey3 : hashSet) {
            if (taggingHintKey3.isFinished()) {
                releaseHint(taggingHintKey3, hashSet2, true);
            }
        }
    }

    public void releaseAllHints() {
        for (TaggingDummyElement taggingDummyElement : this.existingTagsDummies.values()) {
            finishTaggingHint(taggingDummyElement);
            finishDummyKids(getKidsHint(getHintKey(taggingDummyElement)));
        }
        this.existingTagsDummies.clear();
        releaseFinishedHints();
        HashSet hashSet = new HashSet();
        for (Map.Entry<TaggingHintKey, TaggingHintKey> entry : this.parentHints.entrySet()) {
            hashSet.add(entry.getKey());
            hashSet.add(entry.getValue());
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            releaseHint((TaggingHintKey) it.next(), null, false);
        }
    }

    public boolean createTag(IRenderer iRenderer, TagTreePointer tagTreePointer) {
        TaggingHintKey hintKey = getHintKey(iRenderer);
        boolean z = hintKey == null;
        if (z) {
            hintKey = getOrCreateHintKey(iRenderer, false);
        }
        boolean zCreateTag = createTag(hintKey, tagTreePointer);
        if (z) {
            hintKey.setFinished();
            this.context.getWaitingTagsManager().removeWaitingState(hintKey);
        }
        return zCreateTag;
    }

    public boolean createTag(TaggingHintKey taggingHintKey, TagTreePointer tagTreePointer) {
        if (taggingHintKey.isArtifact()) {
            return false;
        }
        boolean zCreateSingleTag = createSingleTag(taggingHintKey, tagTreePointer);
        if (zCreateSingleTag) {
            for (TaggingHintKey taggingHintKey2 : getAccessibleKidsHint(taggingHintKey)) {
                if (taggingHintKey2.getAccessibleElement() instanceof TaggingDummyElement) {
                    createTag(taggingHintKey2, new TagTreePointer(this.document));
                }
            }
        }
        return zCreateSingleTag;
    }

    public void finishTaggingHint(IPropertyContainer iPropertyContainer) {
        boolean z;
        TaggingHintKey hintKey = getHintKey(iPropertyContainer);
        if (hintKey == null || hintKey.isFinished()) {
            return;
        }
        if (!hintKey.isElementBasedFinishingOnly() || (iPropertyContainer instanceof IElement)) {
            if (!isNonAccessibleHint(hintKey)) {
                String role = hintKey.getAccessibleElement().getAccessibilityProperties().getRole();
                if (hintKey.getOverriddenRole() != null) {
                    role = hintKey.getOverriddenRole();
                }
                List<ITaggingRule> list = this.taggingRules.get(role);
                boolean z2 = true;
                if (list != null) {
                    loop0: while (true) {
                        for (ITaggingRule iTaggingRule : list) {
                            z = z && iTaggingRule.onTagFinish(this, hintKey);
                        }
                    }
                    z2 = z;
                }
                if (!z2) {
                    return;
                }
            }
            hintKey.setFinished();
        }
    }

    public int replaceKidHint(TaggingHintKey taggingHintKey, Collection<TaggingHintKey> collection) {
        TaggingHintKey parentHint = getParentHint(taggingHintKey);
        if (parentHint == null) {
            return -1;
        }
        if (taggingHintKey.isFinished()) {
            LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.CANNOT_REPLACE_FINISHED_HINT);
            return -1;
        }
        int iRemoveParentHint = removeParentHint(taggingHintKey);
        ArrayList arrayList = new ArrayList();
        for (TaggingHintKey taggingHintKey2 : collection) {
            int iRemoveParentHint2 = removeParentHint(taggingHintKey2);
            if (iRemoveParentHint2 == -2 || (iRemoveParentHint2 == -1 && taggingHintKey2.isFinished())) {
                LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.CANNOT_MOVE_FINISHED_HINT);
            } else {
                arrayList.add(taggingHintKey2);
            }
        }
        addKidsHint(parentHint, arrayList, iRemoveParentHint, true);
        return iRemoveParentHint;
    }

    public int moveKidHint(TaggingHintKey taggingHintKey, TaggingHintKey taggingHintKey2) {
        return moveKidHint(taggingHintKey, taggingHintKey2, -1);
    }

    public int moveKidHint(TaggingHintKey taggingHintKey, TaggingHintKey taggingHintKey2, int i) {
        if (taggingHintKey2.isFinished()) {
            LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.CANNOT_MOVE_HINT_TO_FINISHED_PARENT);
            return -1;
        }
        int iRemoveParentHint = removeParentHint(taggingHintKey);
        if (iRemoveParentHint == -2 || (iRemoveParentHint == -1 && taggingHintKey.isFinished())) {
            LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.CANNOT_MOVE_FINISHED_HINT);
            return -1;
        }
        addKidsHint(taggingHintKey2, Collections.singletonList(taggingHintKey), i, true);
        return iRemoveParentHint;
    }

    public PdfDocument getPdfDocument() {
        return this.document;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.itextpdf.layout.tagging.TaggingHintKey getOrCreateHintKey(com.itextpdf.layout.IPropertyContainer r5, boolean r6) {
        /*
            r0 = 109(0x6d, float:1.53E-43)
            java.lang.Object r1 = r5.getProperty(r0)
            com.itextpdf.layout.tagging.TaggingHintKey r1 = (com.itextpdf.layout.tagging.TaggingHintKey) r1
            if (r1 != 0) goto L5e
            boolean r1 = r5 instanceof com.itextpdf.layout.tagging.IAccessibleElement
            if (r1 == 0) goto L12
            r1 = r5
            com.itextpdf.layout.tagging.IAccessibleElement r1 = (com.itextpdf.layout.tagging.IAccessibleElement) r1
            goto L29
        L12:
            boolean r1 = r5 instanceof com.itextpdf.layout.renderer.IRenderer
            if (r1 == 0) goto L28
            r1 = r5
            com.itextpdf.layout.renderer.IRenderer r1 = (com.itextpdf.layout.renderer.IRenderer) r1
            com.itextpdf.layout.IPropertyContainer r2 = r1.getModelElement()
            boolean r2 = r2 instanceof com.itextpdf.layout.tagging.IAccessibleElement
            if (r2 == 0) goto L28
            com.itextpdf.layout.IPropertyContainer r1 = r1.getModelElement()
            com.itextpdf.layout.tagging.IAccessibleElement r1 = (com.itextpdf.layout.tagging.IAccessibleElement) r1
            goto L29
        L28:
            r1 = 0
        L29:
            com.itextpdf.layout.tagging.TaggingHintKey r2 = new com.itextpdf.layout.tagging.TaggingHintKey
            boolean r3 = r5 instanceof com.itextpdf.layout.element.IElement
            r2.<init>(r1, r3)
            if (r1 == 0) goto L48
            com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties r3 = r1.getAccessibilityProperties()
            java.lang.String r3 = r3.getRole()
            java.lang.String r4 = "Artifact"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L48
            r2.setArtifact()
            r2.setFinished()
        L48:
            if (r6 == 0) goto L5d
            boolean r6 = r1 instanceof com.itextpdf.layout.element.ILargeElement
            if (r6 == 0) goto L5a
            com.itextpdf.layout.element.ILargeElement r1 = (com.itextpdf.layout.element.ILargeElement) r1
            boolean r6 = r1.isComplete()
            if (r6 != 0) goto L5a
            r1.setProperty(r0, r2)
            goto L5d
        L5a:
            r5.setProperty(r0, r2)
        L5d:
            r1 = r2
        L5e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.tagging.LayoutTaggingHelper.getOrCreateHintKey(com.itextpdf.layout.IPropertyContainer, boolean):com.itextpdf.layout.tagging.TaggingHintKey");
    }

    private void addKidsHint(TaggingHintKey taggingHintKey, Collection<TaggingHintKey> collection, int i, boolean z) {
        if (collection.isEmpty()) {
            return;
        }
        if (taggingHintKey.isArtifact()) {
            Iterator<TaggingHintKey> it = collection.iterator();
            while (it.hasNext()) {
                markArtifactHint(it.next());
            }
            return;
        }
        if (!z && taggingHintKey.isFinished()) {
            LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.CANNOT_ADD_HINTS_TO_FINISHED_PARENT);
            return;
        }
        List<TaggingHintKey> arrayList = this.kidsHints.get(taggingHintKey);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        TaggingHintKey accessibleParentHint = isNonAccessibleHint(taggingHintKey) ? getAccessibleParentHint(taggingHintKey) : taggingHintKey;
        boolean z2 = accessibleParentHint != null && isTagAlreadyExistsForHint(accessibleParentHint);
        for (TaggingHintKey taggingHintKey2 : collection) {
            if (!taggingHintKey2.isArtifact() && getParentHint(taggingHintKey2) == null) {
                if (!z && taggingHintKey2.isFinished()) {
                    LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.CANNOT_ADD_FINISHED_HINT_AS_A_NEW_KID_HINT);
                } else {
                    if (i > -1) {
                        arrayList.add(i, taggingHintKey2);
                        i++;
                    } else {
                        arrayList.add(taggingHintKey2);
                    }
                    this.parentHints.put(taggingHintKey2, taggingHintKey);
                    if (z2) {
                        if (taggingHintKey2.getAccessibleElement() instanceof TaggingDummyElement) {
                            createTag(taggingHintKey2, new TagTreePointer(this.document));
                        }
                        if (isNonAccessibleHint(taggingHintKey2)) {
                            for (TaggingHintKey taggingHintKey3 : getAccessibleKidsHint(taggingHintKey2)) {
                                if (taggingHintKey3.getAccessibleElement() instanceof TaggingDummyElement) {
                                    createTag(taggingHintKey3, new TagTreePointer(this.document));
                                }
                                moveKidTagIfCreated(accessibleParentHint, taggingHintKey3);
                            }
                        } else {
                            moveKidTagIfCreated(accessibleParentHint, taggingHintKey2);
                        }
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.kidsHints.put(taggingHintKey, arrayList);
    }

    private boolean createSingleTag(TaggingHintKey taggingHintKey, TagTreePointer tagTreePointer) {
        int nearestNextSiblingTagIndex;
        if (taggingHintKey.isFinished()) {
            LoggerFactory.getLogger((Class<?>) LayoutTaggingHelper.class).error(IoLogMessageConstant.ATTEMPT_TO_CREATE_A_TAG_FOR_FINISHED_HINT);
            return false;
        }
        if (isNonAccessibleHint(taggingHintKey)) {
            this.context.getWaitingTagsManager().tryMovePointerToWaitingTag(tagTreePointer, getAccessibleParentHint(taggingHintKey));
            return false;
        }
        WaitingTagsManager waitingTagsManager = this.context.getWaitingTagsManager();
        if (waitingTagsManager.tryMovePointerToWaitingTag(tagTreePointer, taggingHintKey)) {
            return false;
        }
        IAccessibleElement accessibleElement = taggingHintKey.getAccessibleElement();
        TaggingHintKey accessibleParentHint = getAccessibleParentHint(taggingHintKey);
        if (accessibleParentHint == null || !waitingTagsManager.tryMovePointerToWaitingTag(tagTreePointer, accessibleParentHint)) {
            nearestNextSiblingTagIndex = -1;
        } else {
            List<TaggingHintKey> accessibleKidsHint = getAccessibleKidsHint(accessibleParentHint);
            nearestNextSiblingTagIndex = getNearestNextSiblingTagIndex(waitingTagsManager, tagTreePointer, accessibleKidsHint, accessibleKidsHint.indexOf(taggingHintKey));
        }
        tagTreePointer.addTag(nearestNextSiblingTagIndex, accessibleElement.getAccessibilityProperties());
        if (taggingHintKey.getOverriddenRole() != null) {
            tagTreePointer.setRole(taggingHintKey.getOverriddenRole());
        }
        waitingTagsManager.assignWaitingState(tagTreePointer, taggingHintKey);
        Iterator<TaggingHintKey> it = getAccessibleKidsHint(taggingHintKey).iterator();
        while (it.hasNext()) {
            moveKidTagIfCreated(taggingHintKey, it.next());
        }
        return true;
    }

    private int removeParentHint(TaggingHintKey taggingHintKey) {
        TaggingHintKey taggingHintKey2 = this.parentHints.get(taggingHintKey);
        if (taggingHintKey2 == null) {
            return -1;
        }
        TaggingHintKey accessibleParentHint = getAccessibleParentHint(taggingHintKey);
        if (taggingHintKey.isFinished() && taggingHintKey2.isFinished() && (accessibleParentHint == null || accessibleParentHint.isFinished())) {
            return -2;
        }
        return removeParentHint(taggingHintKey, taggingHintKey2);
    }

    private int removeParentHint(TaggingHintKey taggingHintKey, TaggingHintKey taggingHintKey2) {
        this.parentHints.remove(taggingHintKey);
        List<TaggingHintKey> list = this.kidsHints.get(taggingHintKey2);
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (list.get(i) == taggingHintKey) {
                list.remove(i);
                break;
            }
            i++;
        }
        if (list.isEmpty()) {
            this.kidsHints.remove(taggingHintKey2);
        }
        return i;
    }

    private void finishDummyKids(List<TaggingHintKey> list) {
        for (TaggingHintKey taggingHintKey : list) {
            boolean z = taggingHintKey.getAccessibleElement() instanceof TaggingDummyElement;
            if (z) {
                finishTaggingHint((IPropertyContainer) taggingHintKey.getAccessibleElement());
            }
            if (isNonAccessibleHint(taggingHintKey) || z) {
                finishDummyKids(getKidsHint(taggingHintKey));
            }
        }
    }

    private void moveKidTagIfCreated(TaggingHintKey taggingHintKey, TaggingHintKey taggingHintKey2) {
        TagTreePointer tagTreePointer = new TagTreePointer(this.document);
        WaitingTagsManager waitingTagsManager = this.context.getWaitingTagsManager();
        if (waitingTagsManager.tryMovePointerToWaitingTag(tagTreePointer, taggingHintKey2)) {
            TagTreePointer tagTreePointer2 = new TagTreePointer(this.document);
            if (waitingTagsManager.tryMovePointerToWaitingTag(tagTreePointer2, taggingHintKey)) {
                tagTreePointer2.setNextNewKidIndex(getNearestNextSiblingTagIndex(waitingTagsManager, tagTreePointer2, getAccessibleKidsHint(taggingHintKey), getAccessibleKidsHint(taggingHintKey).indexOf(taggingHintKey2)));
                tagTreePointer.relocate(tagTreePointer2);
            }
        }
    }

    private int getNearestNextSiblingTagIndex(WaitingTagsManager waitingTagsManager, TagTreePointer tagTreePointer, List<TaggingHintKey> list, int i) {
        TagTreePointer tagTreePointer2 = new TagTreePointer(this.document);
        while (true) {
            i++;
            if (i >= list.size()) {
                return -1;
            }
            if (waitingTagsManager.tryMovePointerToWaitingTag(tagTreePointer2, list.get(i)) && tagTreePointer.isPointingToSameTag(new TagTreePointer(tagTreePointer2).moveToParent())) {
                return tagTreePointer2.getIndexInParentKidsList();
            }
        }
    }

    private static boolean isNonAccessibleHint(TaggingHintKey taggingHintKey) {
        return taggingHintKey.getAccessibleElement() == null || taggingHintKey.getAccessibleElement().getAccessibilityProperties().getRole() == null;
    }

    private boolean isTagAlreadyExistsForHint(TaggingHintKey taggingHintKey) {
        return this.context.getWaitingTagsManager().isObjectAssociatedWithWaitingTag(taggingHintKey);
    }

    private void releaseHint(TaggingHintKey taggingHintKey, Set<TaggingHintKey> set, boolean z) {
        TaggingHintKey taggingHintKey2 = this.parentHints.get(taggingHintKey);
        List<TaggingHintKey> list = this.kidsHints.get(taggingHintKey);
        if (z && taggingHintKey2 != null && isSomeParentNotFinished(taggingHintKey2)) {
            return;
        }
        if (z && list != null && isSomeKidNotFinished(taggingHintKey)) {
            return;
        }
        if (z && set != null && set.contains(taggingHintKey)) {
            return;
        }
        if (taggingHintKey2 != null) {
            removeParentHint(taggingHintKey, taggingHintKey2);
        }
        if (list != null) {
            Iterator<TaggingHintKey> it = list.iterator();
            while (it.hasNext()) {
                this.parentHints.remove(it.next());
            }
            this.kidsHints.remove(taggingHintKey);
        }
        TagTreePointer tagTreePointer = new TagTreePointer(this.document);
        if (this.context.getWaitingTagsManager().tryMovePointerToWaitingTag(tagTreePointer, taggingHintKey)) {
            this.context.getWaitingTagsManager().removeWaitingState(taggingHintKey);
            if (this.immediateFlush) {
                tagTreePointer.flushParentsIfAllKidsFlushed();
                return;
            }
            return;
        }
        this.context.getWaitingTagsManager().removeWaitingState(taggingHintKey);
    }

    private boolean isSomeParentNotFinished(TaggingHintKey taggingHintKey) {
        while (taggingHintKey != null) {
            if (!taggingHintKey.isFinished()) {
                return true;
            }
            if (!isNonAccessibleHint(taggingHintKey)) {
                return false;
            }
            taggingHintKey = getParentHint(taggingHintKey);
        }
        return false;
    }

    private boolean isSomeKidNotFinished(TaggingHintKey taggingHintKey) {
        for (TaggingHintKey taggingHintKey2 : getKidsHint(taggingHintKey)) {
            if (!taggingHintKey2.isFinished()) {
                return true;
            }
            if (isNonAccessibleHint(taggingHintKey2) && isSomeKidNotFinished(taggingHintKey2)) {
                return true;
            }
        }
        return false;
    }

    private void registerRules(PdfVersion pdfVersion) {
        TableTaggingRule tableTaggingRule = new TableTaggingRule();
        registerSingleRule(StandardRoles.TABLE, tableTaggingRule);
        registerSingleRule(StandardRoles.TFOOT, tableTaggingRule);
        registerSingleRule(StandardRoles.THEAD, tableTaggingRule);
        if (pdfVersion.compareTo(PdfVersion.PDF_1_5) < 0) {
            TableTaggingPriorToOneFiveVersionRule tableTaggingPriorToOneFiveVersionRule = new TableTaggingPriorToOneFiveVersionRule();
            registerSingleRule(StandardRoles.TABLE, tableTaggingPriorToOneFiveVersionRule);
            registerSingleRule(StandardRoles.THEAD, tableTaggingPriorToOneFiveVersionRule);
            registerSingleRule(StandardRoles.TFOOT, tableTaggingPriorToOneFiveVersionRule);
        }
    }

    private void registerSingleRule(String str, ITaggingRule iTaggingRule) {
        List<ITaggingRule> arrayList = this.taggingRules.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.taggingRules.put(str, arrayList);
        }
        arrayList.add(iTaggingRule);
    }
}
