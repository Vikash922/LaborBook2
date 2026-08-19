package com.itextpdf.layout.renderer;

import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.margincollapse.MarginsCollapseInfo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
class OrphansWidowsLayoutHelper {
    private OrphansWidowsLayoutHelper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.itextpdf.layout.layout.LayoutResult orphansWidowsAwareLayout(com.itextpdf.layout.renderer.ParagraphRenderer r10, com.itextpdf.layout.layout.LayoutContext r11, com.itextpdf.layout.properties.ParagraphOrphansControl r12, com.itextpdf.layout.properties.ParagraphWidowsControl r13) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.OrphansWidowsLayoutHelper.orphansWidowsAwareLayout(com.itextpdf.layout.renderer.ParagraphRenderer, com.itextpdf.layout.layout.LayoutContext, com.itextpdf.layout.properties.ParagraphOrphansControl, com.itextpdf.layout.properties.ParagraphWidowsControl):com.itextpdf.layout.layout.LayoutResult");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static OrphansWidowsLayoutAttempt attemptLayout(ParagraphRenderer paragraphRenderer, LayoutContext layoutContext, LayoutArea layoutArea) {
        OrphansWidowsLayoutAttempt orphansWidowsLayoutAttempt = new OrphansWidowsLayoutAttempt();
        LayoutContext layoutContext2 = new LayoutContext(layoutArea, layoutContext.getMarginsCollapseInfo() != null ? MarginsCollapseInfo.createDeepCopy(layoutContext.getMarginsCollapseInfo()) : null, new ArrayList(layoutContext.getFloatRendererAreas()), layoutContext.isClippedHeight());
        orphansWidowsLayoutAttempt.attemptContext = layoutContext2;
        orphansWidowsLayoutAttempt.attemptResult = paragraphRenderer.directLayout(layoutContext2);
        return orphansWidowsLayoutAttempt;
    }

    private static LayoutResult handleAttemptAsSuccessful(OrphansWidowsLayoutAttempt orphansWidowsLayoutAttempt, LayoutContext layoutContext) {
        layoutContext.getFloatRendererAreas().clear();
        layoutContext.getFloatRendererAreas().addAll(orphansWidowsLayoutAttempt.attemptContext.getFloatRendererAreas());
        if (layoutContext.getMarginsCollapseInfo() != null) {
            MarginsCollapseInfo.updateFromCopy(layoutContext.getMarginsCollapseInfo(), orphansWidowsLayoutAttempt.attemptContext.getMarginsCollapseInfo());
        }
        return orphansWidowsLayoutAttempt.attemptResult;
    }

    private static class OrphansWidowsLayoutAttempt {
        LayoutContext attemptContext;
        LayoutResult attemptResult;

        private OrphansWidowsLayoutAttempt() {
        }
    }
}
