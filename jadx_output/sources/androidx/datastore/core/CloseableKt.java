package androidx.datastore.core;

import com.itextpdf.svg.SvgConstants;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Closeable.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a9\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\u0004\b\u0001\u0010\u0001*\u0002H\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010\u0005H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0007"}, m2722d2 = {SvgConstants.Tags.USE, SvgConstants.Attributes.PATH_DATA_CATMULL_CURVE, "T", "Landroidx/datastore/core/Closeable;", "block", "Lkotlin/Function1;", "(Landroidx/datastore/core/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "datastore-core_release"}, m2723k = 2, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class CloseableKt {
    public static final <T extends Closeable, R> R use(T t, Function1<? super T, ? extends R> block) throws Throwable {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            R rInvoke = block.invoke(t);
            InlineMarker.finallyStart(1);
            try {
                t.close();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            if (th != null) {
                throw th;
            }
            InlineMarker.finallyEnd(1);
            return rInvoke;
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            try {
                t.close();
            } catch (Throwable th3) {
                ExceptionsKt.addSuppressed(th2, th3);
            }
            throw th2;
        }
    }
}
