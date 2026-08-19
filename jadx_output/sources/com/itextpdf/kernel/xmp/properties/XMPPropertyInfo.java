package com.itextpdf.kernel.xmp.properties;

import com.itextpdf.kernel.xmp.options.PropertyOptions;

/* JADX INFO: loaded from: classes6.dex */
public interface XMPPropertyInfo extends XMPProperty {
    String getNamespace();

    @Override // com.itextpdf.kernel.xmp.properties.XMPProperty
    PropertyOptions getOptions();

    String getPath();

    @Override // com.itextpdf.kernel.xmp.properties.XMPProperty
    String getValue();
}
