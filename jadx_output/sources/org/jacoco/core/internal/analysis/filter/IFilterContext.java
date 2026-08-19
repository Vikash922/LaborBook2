package org.jacoco.core.internal.analysis.filter;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface IFilterContext {
    Set<String> getClassAnnotations();

    Set<String> getClassAttributes();

    String getClassName();

    String getSourceDebugExtension();

    String getSourceFileName();

    String getSuperClassName();
}
