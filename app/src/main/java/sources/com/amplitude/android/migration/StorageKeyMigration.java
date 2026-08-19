package com.amplitude.android.migration;

import com.amplitude.android.utilities.AndroidStorage;
import com.amplitude.common.Logger;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StorageKeyMigration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\b\u001a\u00020\tH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\tH\u0002J\u0019\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\u0011\u0010\u0010\u001a\u00020\tH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\nJ\u0011\u0010\u0011\u001a\u00020\tH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, m2722d2 = {"Lcom/amplitude/android/migration/StorageKeyMigration;", "", "source", "Lcom/amplitude/android/utilities/AndroidStorage;", "destination", "logger", "Lcom/amplitude/common/Logger;", "(Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/android/utilities/AndroidStorage;Lcom/amplitude/common/Logger;)V", "execute", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "moveFileIndex", "moveSimpleValue", "key", "Lcom/amplitude/core/Storage$Constants;", "(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "moveSimpleValues", "moveSourceEventFilesToDestination", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class StorageKeyMigration {
    private final AndroidStorage destination;
    private final Logger logger;
    private final AndroidStorage source;

    /* JADX INFO: renamed from: com.amplitude.android.migration.StorageKeyMigration$execute$1 */
    /* JADX INFO: compiled from: StorageKeyMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.StorageKeyMigration", m2735f = "StorageKeyMigration.kt", m2736i = {0}, m2737l = {18, 19}, m2738m = "execute", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10431 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10431(Continuation<? super C10431> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StorageKeyMigration.this.execute(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.StorageKeyMigration$moveSimpleValue$1 */
    /* JADX INFO: compiled from: StorageKeyMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.StorageKeyMigration", m2735f = "StorageKeyMigration.kt", m2736i = {0, 0, 1, 1}, m2737l = {75, 82}, m2738m = "moveSimpleValue", m2739n = {"this", "key", "this", "key"}, m2740s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C10441 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10441(Continuation<? super C10441> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StorageKeyMigration.this.moveSimpleValue(null, this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.StorageKeyMigration$moveSimpleValues$1 */
    /* JADX INFO: compiled from: StorageKeyMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.StorageKeyMigration", m2735f = "StorageKeyMigration.kt", m2736i = {0, 1, 2, 3, 4, 5, 6}, m2737l = {56, 57, 58, 60, 61, 62, 63}, m2738m = "moveSimpleValues", m2739n = {"this", "this", "this", "this", "this", "this", "this"}, m2740s = {"L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0"})
    static final class C10451 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10451(Continuation<? super C10451> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StorageKeyMigration.this.moveSimpleValues(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.StorageKeyMigration$moveSourceEventFilesToDestination$1 */
    /* JADX INFO: compiled from: StorageKeyMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.StorageKeyMigration", m2735f = "StorageKeyMigration.kt", m2736i = {0}, m2737l = {24}, m2738m = "moveSourceEventFilesToDestination", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10461 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10461(Continuation<? super C10461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StorageKeyMigration.this.moveSourceEventFilesToDestination(this);
        }
    }

    public StorageKeyMigration(AndroidStorage source, AndroidStorage destination, Logger logger) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.source = source;
        this.destination = destination;
        this.logger = logger;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.amplitude.android.migration.StorageKeyMigration.C10431
            if (r0 == 0) goto L14
            r0 = r6
            com.amplitude.android.migration.StorageKeyMigration$execute$1 r0 = (com.amplitude.android.migration.StorageKeyMigration.C10431) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.amplitude.android.migration.StorageKeyMigration$execute$1 r0 = new com.amplitude.android.migration.StorageKeyMigration$execute$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6d
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L35:
            java.lang.Object r2 = r0.L$0
            com.amplitude.android.migration.StorageKeyMigration r2 = (com.amplitude.android.migration.StorageKeyMigration) r2
            kotlin.ResultKt.throwOnFailure(r6)
            goto L61
        L3d:
            kotlin.ResultKt.throwOnFailure(r6)
            com.amplitude.android.utilities.AndroidStorage r6 = r5.source
            java.lang.String r6 = r6.getStorageKey()
            com.amplitude.android.utilities.AndroidStorage r2 = r5.destination
            java.lang.String r2 = r2.getStorageKey()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)
            if (r6 == 0) goto L55
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L55:
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r5.moveSourceEventFilesToDestination(r0)
            if (r6 != r1) goto L60
            return r1
        L60:
            r2 = r5
        L61:
            r6 = 0
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r6 = r2.moveSimpleValues(r0)
            if (r6 != r1) goto L6d
            return r1
        L6d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.StorageKeyMigration.execute(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveSourceEventFilesToDestination(kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instruction units count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.StorageKeyMigration.moveSourceEventFilesToDestination(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveSimpleValues(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.StorageKeyMigration.moveSimpleValues(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.amplitude.android.migration.StorageKeyMigration] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.amplitude.core.Storage$Constants, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12, types: [com.amplitude.core.Storage$Constants, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v17, types: [com.amplitude.core.Storage$Constants] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v15, types: [com.amplitude.android.utilities.AndroidStorage] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveSimpleValue(com.amplitude.core.Storage.Constants r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.StorageKeyMigration.moveSimpleValue(com.amplitude.core.Storage$Constants, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void moveFileIndex() {
        try {
            String strStringPlus = Intrinsics.stringPlus("amplitude.events.file.index.", this.source.getStorageKey());
            String strStringPlus2 = Intrinsics.stringPlus("amplitude.events.file.index.", this.destination.getStorageKey());
            if (this.source.getSharedPreferences().contains(strStringPlus)) {
                try {
                    this.destination.getSharedPreferences().edit().putLong(strStringPlus2, this.source.getSharedPreferences().getLong(strStringPlus, -1L)).commit();
                    this.source.getSharedPreferences().edit().remove(strStringPlus).commit();
                } catch (Exception e) {
                    this.logger.error(Intrinsics.stringPlus("can't write file index: ", e.getMessage()));
                }
            }
        } catch (Exception e2) {
            this.logger.error(Intrinsics.stringPlus("can't move file index: ", e2.getMessage()));
        }
    }
}
