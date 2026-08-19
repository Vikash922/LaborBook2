package com.itextpdf.forms.fields;

import com.itextpdf.commons.utils.Action;
import com.itextpdf.layout.renderer.MetaInfoContainer;

/* JADX INFO: loaded from: classes6.dex */
public final class FormsMetaInfoStaticContainer {
    private static ThreadLocal<MetaInfoContainer> metaInfoForLayout = new ThreadLocal<>();

    private FormsMetaInfoStaticContainer() {
    }

    public static void useMetaInfoDuringTheAction(MetaInfoContainer metaInfoContainer, Action action) {
        try {
            metaInfoForLayout.set(metaInfoContainer);
            action.execute();
        } finally {
            metaInfoForLayout.set(null);
        }
    }

    static MetaInfoContainer getMetaInfoForLayout() {
        return metaInfoForLayout.get();
    }
}
