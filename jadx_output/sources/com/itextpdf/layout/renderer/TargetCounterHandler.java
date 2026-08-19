package com.itextpdf.layout.renderer;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class TargetCounterHandler {
    private Map<String, Integer> previousRenderersPages;
    private Map<String, Integer> renderersPages;

    public TargetCounterHandler(TargetCounterHandler targetCounterHandler) {
        this.renderersPages = new HashMap();
        this.previousRenderersPages = new HashMap();
        this.renderersPages = targetCounterHandler.renderersPages;
        this.previousRenderersPages = targetCounterHandler.previousRenderersPages;
    }

    public TargetCounterHandler() {
        this.renderersPages = new HashMap();
        this.previousRenderersPages = new HashMap();
    }

    public static void addPageByID(IRenderer iRenderer) {
        TargetCounterHandler targetCounterHandler;
        String str = (String) iRenderer.getProperty(126);
        if (str == null || (targetCounterHandler = getTargetCounterHandler(iRenderer)) == null || iRenderer.getOccupiedArea() == null) {
            return;
        }
        targetCounterHandler.renderersPages.put(str, Integer.valueOf(iRenderer.getOccupiedArea().getPageNumber()));
    }

    public static Integer getPageByID(IRenderer iRenderer, String str) {
        TargetCounterHandler targetCounterHandler = getTargetCounterHandler(iRenderer);
        if (targetCounterHandler == null) {
            return null;
        }
        return targetCounterHandler.previousRenderersPages.get(str);
    }

    public static boolean isValueDefinedForThisId(IRenderer iRenderer, String str) {
        TargetCounterHandler targetCounterHandler = getTargetCounterHandler(iRenderer);
        return targetCounterHandler != null && targetCounterHandler.renderersPages.containsKey(str);
    }

    public boolean isRelayoutRequired() {
        for (Map.Entry<String, Integer> entry : this.renderersPages.entrySet()) {
            if (!entry.getValue().equals(this.previousRenderersPages.get(entry.getKey()))) {
                return true;
            }
        }
        return false;
    }

    public void prepareHandlerToRelayout() {
        this.previousRenderersPages = new HashMap(this.renderersPages);
    }

    private static TargetCounterHandler getTargetCounterHandler(IRenderer iRenderer) {
        while (iRenderer.getParent() != null) {
            iRenderer = iRenderer.getParent();
        }
        if (iRenderer instanceof DocumentRenderer) {
            return ((DocumentRenderer) iRenderer).getTargetCounterHandler();
        }
        return null;
    }
}
