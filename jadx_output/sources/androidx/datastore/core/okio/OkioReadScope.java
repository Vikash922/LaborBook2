package androidx.datastore.core.okio;

import androidx.datastore.core.ReadScope;
import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: OkioStorage.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJ\b\u0010\u0012\u001a\u00020\u0013H\u0004J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\u000e\u0010\u0015\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m2722d2 = {"Landroidx/datastore/core/okio/OkioReadScope;", "T", "Landroidx/datastore/core/ReadScope;", "fileSystem", "Lokio/FileSystem;", SvgConstants.Tags.PATH, "Lokio/Path;", "serializer", "Landroidx/datastore/core/okio/OkioSerializer;", "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V", "closed", "Landroidx/datastore/core/okio/AtomicBoolean;", "getFileSystem", "()Lokio/FileSystem;", "getPath", "()Lokio/Path;", "getSerializer", "()Landroidx/datastore/core/okio/OkioSerializer;", "checkClose", "", "close", "readData", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core-okio"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public class OkioReadScope<T> implements ReadScope<T> {
    private final AtomicBoolean closed;
    private final FileSystem fileSystem;
    private final Path path;
    private final OkioSerializer<T> serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioReadScope$readData$1 */
    /* JADX INFO: compiled from: OkioStorage.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.core.okio.OkioReadScope", m2735f = "OkioStorage.kt", m2736i = {0, 0}, m2737l = {Opcodes.GETFIELD}, m2738m = "readData$suspendImpl", m2739n = {"$this", "$this$use$iv$iv"}, m2740s = {"L$0", "L$1"})
    static final class C04171<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04171(OkioReadScope<T> okioReadScope, Continuation<? super C04171> continuation) {
            super(continuation);
            this.this$0 = okioReadScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OkioReadScope.readData$suspendImpl(this.this$0, this);
        }
    }

    @Override // androidx.datastore.core.ReadScope
    public Object readData(Continuation<? super T> continuation) {
        return readData$suspendImpl(this, continuation);
    }

    public OkioReadScope(FileSystem fileSystem, Path path, OkioSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.fileSystem = fileSystem;
        this.path = path;
        this.serializer = serializer;
        this.closed = new AtomicBoolean(false);
    }

    protected final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    protected final Path getPath() {
        return this.path;
    }

    protected final OkioSerializer<T> getSerializer() {
        return this.serializer;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0088 A[Catch: FileNotFoundException -> 0x008d, TRY_ENTER, TryCatch #4 {FileNotFoundException -> 0x008d, blocks: (B:41:0x0088, B:42:0x008c, B:19:0x0043), top: B:58:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008c A[Catch: FileNotFoundException -> 0x008d, TRY_LEAVE, TryCatch #4 {FileNotFoundException -> 0x008d, blocks: (B:41:0x0088, B:42:0x008c, B:19:0x0043), top: B:58:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0077 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ <T> java.lang.Object readData$suspendImpl(androidx.datastore.core.okio.OkioReadScope<T> r7, kotlin.coroutines.Continuation<? super T> r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof androidx.datastore.core.okio.OkioReadScope.C04171
            if (r0 == 0) goto L14
            r0 = r8
            androidx.datastore.core.okio.OkioReadScope$readData$1 r0 = (androidx.datastore.core.okio.OkioReadScope.C04171) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            androidx.datastore.core.okio.OkioReadScope$readData$1 r0 = new androidx.datastore.core.okio.OkioReadScope$readData$1
            r0.<init>(r7, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r7 = r0.L$1
            java.io.Closeable r7 = (java.io.Closeable) r7
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.okio.OkioReadScope r0 = (androidx.datastore.core.okio.OkioReadScope) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L33
            goto L67
        L33:
            r8 = move-exception
            goto L75
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            r7.checkClose()
            okio.FileSystem r8 = r7.fileSystem     // Catch: java.io.FileNotFoundException -> L8d
            okio.Path r2 = r7.path     // Catch: java.io.FileNotFoundException -> L8d
            okio.Source r8 = r8.source(r2)     // Catch: java.io.FileNotFoundException -> L8d
            okio.BufferedSource r8 = okio.Okio.buffer(r8)     // Catch: java.io.FileNotFoundException -> L8d
            java.io.Closeable r8 = (java.io.Closeable) r8     // Catch: java.io.FileNotFoundException -> L8d
            r2 = r8
            okio.BufferedSource r2 = (okio.BufferedSource) r2     // Catch: java.lang.Throwable -> L70
            androidx.datastore.core.okio.OkioSerializer<T> r5 = r7.serializer     // Catch: java.lang.Throwable -> L70
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L70
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L70
            r0.label = r3     // Catch: java.lang.Throwable -> L70
            java.lang.Object r0 = r5.readFrom(r2, r0)     // Catch: java.lang.Throwable -> L70
            if (r0 != r1) goto L63
            return r1
        L63:
            r6 = r0
            r0 = r7
            r7 = r8
            r8 = r6
        L67:
            if (r7 == 0) goto L6e
            r7.close()     // Catch: java.lang.Throwable -> L6d
            goto L6e
        L6d:
            r4 = move-exception
        L6e:
            r7 = r0
            goto L86
        L70:
            r0 = move-exception
            r6 = r0
            r0 = r7
            r7 = r8
            r8 = r6
        L75:
            if (r7 == 0) goto L82
            r7.close()     // Catch: java.lang.Throwable -> L7b
            goto L82
        L7b:
            r7 = move-exception
            kotlin.ExceptionsKt.addSuppressed(r8, r7)     // Catch: java.io.FileNotFoundException -> L80
            goto L82
        L80:
            r7 = move-exception
            goto L90
        L82:
            r7 = r0
            r6 = r4
            r4 = r8
            r8 = r6
        L86:
            if (r4 != 0) goto L8c
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)     // Catch: java.io.FileNotFoundException -> L8d
            goto La0
        L8c:
            throw r4     // Catch: java.io.FileNotFoundException -> L8d
        L8d:
            r8 = move-exception
            r0 = r7
            r7 = r8
        L90:
            okio.FileSystem r8 = r0.fileSystem
            okio.Path r1 = r0.path
            boolean r8 = r8.exists(r1)
            if (r8 != 0) goto La1
            androidx.datastore.core.okio.OkioSerializer<T> r7 = r0.serializer
            java.lang.Object r8 = r7.getDefaultValue()
        La0:
            return r8
        La1:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.okio.OkioReadScope.readData$suspendImpl(androidx.datastore.core.okio.OkioReadScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    protected final void checkClose() {
        if (this.closed.get()) {
            throw new IllegalStateException("This scope has already been closed.".toString());
        }
    }
}
