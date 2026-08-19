package org.bouncycastle.math.p042ec.endo;

import org.bouncycastle.math.p042ec.ECPointMap;

/* JADX INFO: loaded from: classes5.dex */
public interface ECEndomorphism {
    ECPointMap getPointMap();

    boolean hasEfficientPointMap();
}
