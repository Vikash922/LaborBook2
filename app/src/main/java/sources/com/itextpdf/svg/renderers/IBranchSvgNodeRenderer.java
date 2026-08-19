package com.itextpdf.svg.renderers;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface IBranchSvgNodeRenderer extends ISvgNodeRenderer {
    void addChild(ISvgNodeRenderer iSvgNodeRenderer);

    List<ISvgNodeRenderer> getChildren();
}
