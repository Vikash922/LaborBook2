package com.itextpdf.layout.tagging;

/* JADX INFO: loaded from: classes6.dex */
public final class TaggingHintKey {
    private IAccessibleElement elem;
    private boolean elementBasedFinishingOnly;
    private boolean isArtifact;
    private boolean isFinished;
    private String overriddenRole;

    TaggingHintKey(IAccessibleElement iAccessibleElement, boolean z) {
        this.elem = iAccessibleElement;
        this.elementBasedFinishingOnly = z;
    }

    public IAccessibleElement getAccessibleElement() {
        return this.elem;
    }

    boolean isFinished() {
        return this.isFinished;
    }

    void setFinished() {
        this.isFinished = true;
    }

    boolean isArtifact() {
        return this.isArtifact;
    }

    void setArtifact() {
        this.isArtifact = true;
    }

    String getOverriddenRole() {
        return this.overriddenRole;
    }

    void setOverriddenRole(String str) {
        this.overriddenRole = str;
    }

    boolean isElementBasedFinishingOnly() {
        return this.elementBasedFinishingOnly;
    }
}
