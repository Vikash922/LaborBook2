package com.itextpdf.svg.renderers.path;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public interface IPathShapeMapper {
    Map<String, Integer> getArgumentCount();

    Map<String, IPathShape> getMapping();
}
