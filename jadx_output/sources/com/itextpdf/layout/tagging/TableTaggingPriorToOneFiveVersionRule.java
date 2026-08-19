package com.itextpdf.layout.tagging;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.kernel.pdf.tagutils.WaitingTagsManager;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
class TableTaggingPriorToOneFiveVersionRule implements ITaggingRule {
    private Set<TaggingHintKey> finishForbidden = new HashSet();

    TableTaggingPriorToOneFiveVersionRule() {
    }

    @Override // com.itextpdf.layout.tagging.ITaggingRule
    public boolean onTagFinish(LayoutTaggingHelper layoutTaggingHelper, TaggingHintKey taggingHintKey) {
        if (taggingHintKey.getAccessibleElement() != null) {
            String role = taggingHintKey.getAccessibleElement().getAccessibilityProperties().getRole();
            if (StandardRoles.THEAD.equals(role) || StandardRoles.TFOOT.equals(role)) {
                this.finishForbidden.add(taggingHintKey);
                return false;
            }
        }
        for (TaggingHintKey taggingHintKey2 : layoutTaggingHelper.getAccessibleKidsHint(taggingHintKey)) {
            String role2 = taggingHintKey2.getAccessibleElement().getAccessibilityProperties().getRole();
            if (StandardRoles.TBODY.equals(role2) || StandardRoles.THEAD.equals(role2) || StandardRoles.TFOOT.equals(role2)) {
                removeTagUnavailableInPriorToOneDotFivePdf(taggingHintKey2, layoutTaggingHelper);
            }
        }
        return true;
    }

    private void removeTagUnavailableInPriorToOneDotFivePdf(TaggingHintKey taggingHintKey, LayoutTaggingHelper layoutTaggingHelper) {
        layoutTaggingHelper.replaceKidHint(taggingHintKey, layoutTaggingHelper.getAccessibleKidsHint(taggingHintKey));
        PdfDocument pdfDocument = layoutTaggingHelper.getPdfDocument();
        WaitingTagsManager waitingTagsManager = pdfDocument.getTagStructureContext().getWaitingTagsManager();
        TagTreePointer tagTreePointer = new TagTreePointer(pdfDocument);
        if (waitingTagsManager.tryMovePointerToWaitingTag(tagTreePointer, taggingHintKey)) {
            waitingTagsManager.removeWaitingState(taggingHintKey);
            tagTreePointer.removeTag();
        }
        if (this.finishForbidden.remove(taggingHintKey)) {
            taggingHintKey.setFinished();
        }
    }
}
