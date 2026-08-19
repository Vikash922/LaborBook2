package org.koin.core.definition;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Options.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\n\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\u0017"}, m2722d2 = {"Lorg/koin/core/definition/Options;", "", "isCreatedAtStart", "", "override", "isExtraDefinition", "(ZZZ)V", "()Z", "setCreatedAtStart", "(Z)V", "setExtraDefinition", "getOverride", "setOverride", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class Options {
    private boolean isCreatedAtStart;
    private boolean isExtraDefinition;
    private boolean override;

    public Options() {
        this(false, false, false, 7, null);
    }

    public static /* synthetic */ Options copy$default(Options options, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = options.isCreatedAtStart;
        }
        if ((i & 2) != 0) {
            z2 = options.override;
        }
        if ((i & 4) != 0) {
            z3 = options.isExtraDefinition;
        }
        return options.copy(z, z2, z3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsCreatedAtStart() {
        return this.isCreatedAtStart;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getOverride() {
        return this.override;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsExtraDefinition() {
        return this.isExtraDefinition;
    }

    public final Options copy(boolean isCreatedAtStart, boolean override, boolean isExtraDefinition) {
        return new Options(isCreatedAtStart, override, isExtraDefinition);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Options)) {
            return false;
        }
        Options options = (Options) other;
        return this.isCreatedAtStart == options.isCreatedAtStart && this.override == options.override && this.isExtraDefinition == options.isExtraDefinition;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        boolean z = this.isCreatedAtStart;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.override;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.isExtraDefinition;
        return i2 + (z3 ? 1 : z3);
    }

    public String toString() {
        return "Options(isCreatedAtStart=" + this.isCreatedAtStart + ", override=" + this.override + ", isExtraDefinition=" + this.isExtraDefinition + ')';
    }

    public Options(boolean z, boolean z2, boolean z3) {
        this.isCreatedAtStart = z;
        this.override = z2;
        this.isExtraDefinition = z3;
    }

    public /* synthetic */ Options(boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3);
    }

    public final boolean getOverride() {
        return this.override;
    }

    public final boolean isCreatedAtStart() {
        return this.isCreatedAtStart;
    }

    public final boolean isExtraDefinition() {
        return this.isExtraDefinition;
    }

    public final void setCreatedAtStart(boolean z) {
        this.isCreatedAtStart = z;
    }

    public final void setExtraDefinition(boolean z) {
        this.isExtraDefinition = z;
    }

    public final void setOverride(boolean z) {
        this.override = z;
    }
}
