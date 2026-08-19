package com.amplitude.android.migration;

import com.amplitude.android.TrackingOptions;
import com.amplitude.common.android.LogcatLogger;
import com.amplitude.core.Amplitude;
import com.amplitude.core.events.Revenue;
import com.amplitude.p009id.Identity;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: RemnantDataMigration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \"2\u00020\u0001:\u0001\"B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0011\u0010\u0011\u001a\u00020\u0012H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0012H\u0002JD\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u00120\u0019H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001dJ\u0011\u0010\u001e\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u0011\u0010\u001f\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u0011\u0010 \u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u0011\u0010!\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, m2722d2 = {"Lcom/amplitude/android/migration/RemnantDataMigration;", "", "amplitude", "Lcom/amplitude/core/Amplitude;", "(Lcom/amplitude/core/Amplitude;)V", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "databaseStorage", "Lcom/amplitude/android/migration/DatabaseStorage;", "getDatabaseStorage", "()Lcom/amplitude/android/migration/DatabaseStorage;", "setDatabaseStorage", "(Lcom/amplitude/android/migration/DatabaseStorage;)V", "convertLegacyEvent", "", "event", "Lorg/json/JSONObject;", "execute", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "moveDeviceAndUserId", "moveEvent", "destinationStorage", "Lcom/amplitude/core/Storage;", "removeFromSource", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "rowId", "(Lorg/json/JSONObject;Lcom/amplitude/core/Storage;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "moveEvents", "moveIdentifies", "moveInterceptedIdentifies", "moveSessionData", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class RemnantDataMigration {
    public static final String DEVICE_ID_KEY = "device_id";
    public static final String LAST_EVENT_ID_KEY = "last_event_id";
    public static final String LAST_EVENT_TIME_KEY = "last_event_time";
    public static final String PREVIOUS_SESSION_ID_KEY = "previous_session_id";
    public static final String USER_ID_KEY = "user_id";
    private final Amplitude amplitude;
    public DatabaseStorage databaseStorage;

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$execute$1 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.RemnantDataMigration", m2735f = "RemnantDataMigration.kt", m2736i = {0, 0, 1, 2}, m2737l = {37, 40, 41, 43}, m2738m = "execute", m2739n = {"this", "firstRunSinceUpgrade", "this", "this"}, m2740s = {"L$0", "I$0", "L$0", "L$0"})
    static final class C10341 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10341(Continuation<? super C10341> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemnantDataMigration.this.execute(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveEvent$1 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.RemnantDataMigration", m2735f = "RemnantDataMigration.kt", m2736i = {0, 0}, m2737l = {Opcodes.I2C}, m2738m = "moveEvent", m2739n = {"removeFromSource", "rowId"}, m2740s = {"L$0", "J$0"})
    static final class C10351 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10351(Continuation<? super C10351> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemnantDataMigration.this.moveEvent(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveEvents$1 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.RemnantDataMigration", m2735f = "RemnantDataMigration.kt", m2736i = {0}, m2737l = {106}, m2738m = "moveEvents", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10361 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10361(Continuation<? super C10361> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemnantDataMigration.this.moveEvents(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveIdentifies$1 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.RemnantDataMigration", m2735f = "RemnantDataMigration.kt", m2736i = {0}, m2737l = {120}, m2738m = "moveIdentifies", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10381 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10381(Continuation<? super C10381> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemnantDataMigration.this.moveIdentifies(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveInterceptedIdentifies$1 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.RemnantDataMigration", m2735f = "RemnantDataMigration.kt", m2736i = {0}, m2737l = {134}, m2738m = "moveInterceptedIdentifies", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10401 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10401(Continuation<? super C10401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemnantDataMigration.this.moveInterceptedIdentifies(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveSessionData$1 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.RemnantDataMigration", m2735f = "RemnantDataMigration.kt", m2736i = {0, 0, 0, 0, 0, 1, 1, 1, 2}, m2737l = {81, 86, 91}, m2738m = "moveSessionData", m2739n = {"this", "currentLastEventTime", "currentLastEventId", "lastEventTime", "lastEventId", "this", "currentLastEventId", "lastEventId", "this"}, m2740s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$0"})
    static final class C10421 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C10421(Continuation<? super C10421> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemnantDataMigration.this.moveSessionData(this);
        }
    }

    public RemnantDataMigration(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        this.amplitude = amplitude;
    }

    public final Amplitude getAmplitude() {
        return this.amplitude;
    }

    public final DatabaseStorage getDatabaseStorage() {
        DatabaseStorage databaseStorage = this.databaseStorage;
        if (databaseStorage != null) {
            return databaseStorage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("databaseStorage");
        return null;
    }

    public final void setDatabaseStorage(DatabaseStorage databaseStorage) {
        Intrinsics.checkNotNullParameter(databaseStorage, "<set-?>");
        this.databaseStorage = databaseStorage;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.amplitude.android.migration.RemnantDataMigration.C10341
            if (r0 == 0) goto L14
            r0 = r9
            com.amplitude.android.migration.RemnantDataMigration$execute$1 r0 = (com.amplitude.android.migration.RemnantDataMigration.C10341) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.amplitude.android.migration.RemnantDataMigration$execute$1 r0 = new com.amplitude.android.migration.RemnantDataMigration$execute$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L58
            if (r2 == r7) goto L4e
            if (r2 == r6) goto L46
            if (r2 == r5) goto L3d
            if (r2 != r4) goto L35
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lba
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3d:
            java.lang.Object r2 = r0.L$0
            com.amplitude.android.migration.RemnantDataMigration r2 = (com.amplitude.android.migration.RemnantDataMigration) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lae
        L46:
            java.lang.Object r2 = r0.L$0
            com.amplitude.android.migration.RemnantDataMigration r2 = (com.amplitude.android.migration.RemnantDataMigration) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto La3
        L4e:
            int r2 = r0.I$0
            java.lang.Object r7 = r0.L$0
            com.amplitude.android.migration.RemnantDataMigration r7 = (com.amplitude.android.migration.RemnantDataMigration) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L95
        L58:
            kotlin.ResultKt.throwOnFailure(r9)
            com.amplitude.android.migration.DatabaseStorageProvider r9 = com.amplitude.android.migration.DatabaseStorageProvider.INSTANCE
            com.amplitude.core.Amplitude r2 = r8.getAmplitude()
            com.amplitude.android.migration.DatabaseStorage r9 = r9.getStorage(r2)
            r8.setDatabaseStorage(r9)
            com.amplitude.core.Amplitude r9 = r8.getAmplitude()
            com.amplitude.core.Storage r9 = r9.getStorage()
            com.amplitude.core.Storage$Constants r2 = com.amplitude.core.Storage.Constants.LAST_EVENT_TIME
            java.lang.String r9 = r9.read(r2)
            if (r9 != 0) goto L7a
            r9 = r3
            goto L7e
        L7a:
            java.lang.Long r9 = kotlin.text.StringsKt.toLongOrNull(r9)
        L7e:
            if (r9 != 0) goto L82
            r2 = r7
            goto L84
        L82:
            r9 = 0
            r2 = r9
        L84:
            r8.moveDeviceAndUserId()
            r0.L$0 = r8
            r0.I$0 = r2
            r0.label = r7
            java.lang.Object r9 = r8.moveSessionData(r0)
            if (r9 != r1) goto L94
            return r1
        L94:
            r7 = r8
        L95:
            if (r2 == 0) goto Laf
            r0.L$0 = r7
            r0.label = r6
            java.lang.Object r9 = r7.moveInterceptedIdentifies(r0)
            if (r9 != r1) goto La2
            return r1
        La2:
            r2 = r7
        La3:
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r9 = r2.moveIdentifies(r0)
            if (r9 != r1) goto Lae
            return r1
        Lae:
            r7 = r2
        Laf:
            r0.L$0 = r3
            r0.label = r4
            java.lang.Object r9 = r7.moveEvents(r0)
            if (r9 != r1) goto Lba
            return r1
        Lba:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.RemnantDataMigration.execute(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void moveDeviceAndUserId() {
        try {
            String value = getDatabaseStorage().getValue("device_id");
            String value2 = getDatabaseStorage().getValue("user_id");
            if (value == null && value2 == null) {
                return;
            }
            Identity identityLoad = this.amplitude.getIdentityStorage().load();
            if (identityLoad.getDeviceId() == null && value != null) {
                this.amplitude.getIdentityStorage().saveDeviceId(value);
            }
            if (identityLoad.getUserId() != null || value2 == null) {
                return;
            }
            this.amplitude.getIdentityStorage().saveUserId(value2);
        } catch (Exception e) {
            LogcatLogger.INSTANCE.getLogger().error(Intrinsics.stringPlus("device/user id migration failed: ", e.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0136 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0159 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveSessionData(kotlin.coroutines.Continuation<? super kotlin.Unit> r17) {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.RemnantDataMigration.moveSessionData(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveEvents(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.amplitude.android.migration.RemnantDataMigration.C10361
            if (r0 == 0) goto L14
            r0 = r9
            com.amplitude.android.migration.RemnantDataMigration$moveEvents$1 r0 = (com.amplitude.android.migration.RemnantDataMigration.C10361) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.amplitude.android.migration.RemnantDataMigration$moveEvents$1 r0 = new com.amplitude.android.migration.RemnantDataMigration$moveEvents$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r2 = r0.L$1
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.L$0
            com.amplitude.android.migration.RemnantDataMigration r4 = (com.amplitude.android.migration.RemnantDataMigration) r4
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L77
            goto L4b
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            com.amplitude.android.migration.DatabaseStorage r9 = r8.getDatabaseStorage()     // Catch: java.lang.Exception -> L77
            java.util.List r9 = r9.readEventsContent()     // Catch: java.lang.Exception -> L77
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Exception -> L77
            r4 = r8
            r2 = r9
        L4b:
            boolean r9 = r2.hasNext()     // Catch: java.lang.Exception -> L77
            if (r9 == 0) goto L8b
            java.lang.Object r9 = r2.next()     // Catch: java.lang.Exception -> L77
            org.json.JSONObject r9 = (org.json.JSONObject) r9     // Catch: java.lang.Exception -> L77
            com.amplitude.core.Amplitude r5 = r4.getAmplitude()     // Catch: java.lang.Exception -> L77
            com.amplitude.core.Storage r5 = r5.getStorage()     // Catch: java.lang.Exception -> L77
            com.amplitude.android.migration.RemnantDataMigration$moveEvents$2 r6 = new com.amplitude.android.migration.RemnantDataMigration$moveEvents$2     // Catch: java.lang.Exception -> L77
            com.amplitude.android.migration.DatabaseStorage r7 = r4.getDatabaseStorage()     // Catch: java.lang.Exception -> L77
            r6.<init>(r7)     // Catch: java.lang.Exception -> L77
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6     // Catch: java.lang.Exception -> L77
            r0.L$0 = r4     // Catch: java.lang.Exception -> L77
            r0.L$1 = r2     // Catch: java.lang.Exception -> L77
            r0.label = r3     // Catch: java.lang.Exception -> L77
            java.lang.Object r9 = r4.moveEvent(r9, r5, r6, r0)     // Catch: java.lang.Exception -> L77
            if (r9 != r1) goto L4b
            return r1
        L77:
            r9 = move-exception
            com.amplitude.common.android.LogcatLogger$Companion r0 = com.amplitude.common.android.LogcatLogger.INSTANCE
            com.amplitude.common.android.LogcatLogger r0 = r0.getLogger()
            java.lang.String r1 = "events migration failed: "
            java.lang.String r9 = r9.getMessage()
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r9)
            r0.error(r9)
        L8b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.RemnantDataMigration.moveEvents(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveEvents$2 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    /* synthetic */ class C10372 extends FunctionReferenceImpl implements Function1<Long, Unit> {
        C10372(Object obj) {
            super(1, obj, DatabaseStorage.class, "removeEvent", "removeEvent(J)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l) {
            invoke(l.longValue());
            return Unit.INSTANCE;
        }

        public final void invoke(long j) {
            ((DatabaseStorage) this.receiver).removeEvent(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveIdentifies(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.amplitude.android.migration.RemnantDataMigration.C10381
            if (r0 == 0) goto L14
            r0 = r9
            com.amplitude.android.migration.RemnantDataMigration$moveIdentifies$1 r0 = (com.amplitude.android.migration.RemnantDataMigration.C10381) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.amplitude.android.migration.RemnantDataMigration$moveIdentifies$1 r0 = new com.amplitude.android.migration.RemnantDataMigration$moveIdentifies$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r2 = r0.L$1
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.L$0
            com.amplitude.android.migration.RemnantDataMigration r4 = (com.amplitude.android.migration.RemnantDataMigration) r4
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L77
            goto L4b
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            com.amplitude.android.migration.DatabaseStorage r9 = r8.getDatabaseStorage()     // Catch: java.lang.Exception -> L77
            java.util.List r9 = r9.readIdentifiesContent()     // Catch: java.lang.Exception -> L77
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Exception -> L77
            r4 = r8
            r2 = r9
        L4b:
            boolean r9 = r2.hasNext()     // Catch: java.lang.Exception -> L77
            if (r9 == 0) goto L8b
            java.lang.Object r9 = r2.next()     // Catch: java.lang.Exception -> L77
            org.json.JSONObject r9 = (org.json.JSONObject) r9     // Catch: java.lang.Exception -> L77
            com.amplitude.core.Amplitude r5 = r4.getAmplitude()     // Catch: java.lang.Exception -> L77
            com.amplitude.core.Storage r5 = r5.getStorage()     // Catch: java.lang.Exception -> L77
            com.amplitude.android.migration.RemnantDataMigration$moveIdentifies$2 r6 = new com.amplitude.android.migration.RemnantDataMigration$moveIdentifies$2     // Catch: java.lang.Exception -> L77
            com.amplitude.android.migration.DatabaseStorage r7 = r4.getDatabaseStorage()     // Catch: java.lang.Exception -> L77
            r6.<init>(r7)     // Catch: java.lang.Exception -> L77
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6     // Catch: java.lang.Exception -> L77
            r0.L$0 = r4     // Catch: java.lang.Exception -> L77
            r0.L$1 = r2     // Catch: java.lang.Exception -> L77
            r0.label = r3     // Catch: java.lang.Exception -> L77
            java.lang.Object r9 = r4.moveEvent(r9, r5, r6, r0)     // Catch: java.lang.Exception -> L77
            if (r9 != r1) goto L4b
            return r1
        L77:
            r9 = move-exception
            com.amplitude.common.android.LogcatLogger$Companion r0 = com.amplitude.common.android.LogcatLogger.INSTANCE
            com.amplitude.common.android.LogcatLogger r0 = r0.getLogger()
            java.lang.String r1 = "identifies migration failed: "
            java.lang.String r9 = r9.getMessage()
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r9)
            r0.error(r9)
        L8b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.RemnantDataMigration.moveIdentifies(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveIdentifies$2 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    /* synthetic */ class C10392 extends FunctionReferenceImpl implements Function1<Long, Unit> {
        C10392(Object obj) {
            super(1, obj, DatabaseStorage.class, "removeIdentify", "removeIdentify(J)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l) {
            invoke(l.longValue());
            return Unit.INSTANCE;
        }

        public final void invoke(long j) {
            ((DatabaseStorage) this.receiver).removeIdentify(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveInterceptedIdentifies(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.amplitude.android.migration.RemnantDataMigration.C10401
            if (r0 == 0) goto L14
            r0 = r9
            com.amplitude.android.migration.RemnantDataMigration$moveInterceptedIdentifies$1 r0 = (com.amplitude.android.migration.RemnantDataMigration.C10401) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.amplitude.android.migration.RemnantDataMigration$moveInterceptedIdentifies$1 r0 = new com.amplitude.android.migration.RemnantDataMigration$moveInterceptedIdentifies$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r2 = r0.L$1
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.L$0
            com.amplitude.android.migration.RemnantDataMigration r4 = (com.amplitude.android.migration.RemnantDataMigration) r4
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L77
            goto L4b
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            com.amplitude.android.migration.DatabaseStorage r9 = r8.getDatabaseStorage()     // Catch: java.lang.Exception -> L77
            java.util.List r9 = r9.readInterceptedIdentifiesContent()     // Catch: java.lang.Exception -> L77
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Exception -> L77
            r4 = r8
            r2 = r9
        L4b:
            boolean r9 = r2.hasNext()     // Catch: java.lang.Exception -> L77
            if (r9 == 0) goto L8b
            java.lang.Object r9 = r2.next()     // Catch: java.lang.Exception -> L77
            org.json.JSONObject r9 = (org.json.JSONObject) r9     // Catch: java.lang.Exception -> L77
            com.amplitude.core.Amplitude r5 = r4.getAmplitude()     // Catch: java.lang.Exception -> L77
            com.amplitude.core.Storage r5 = r5.getIdentifyInterceptStorage()     // Catch: java.lang.Exception -> L77
            com.amplitude.android.migration.RemnantDataMigration$moveInterceptedIdentifies$2 r6 = new com.amplitude.android.migration.RemnantDataMigration$moveInterceptedIdentifies$2     // Catch: java.lang.Exception -> L77
            com.amplitude.android.migration.DatabaseStorage r7 = r4.getDatabaseStorage()     // Catch: java.lang.Exception -> L77
            r6.<init>(r7)     // Catch: java.lang.Exception -> L77
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6     // Catch: java.lang.Exception -> L77
            r0.L$0 = r4     // Catch: java.lang.Exception -> L77
            r0.L$1 = r2     // Catch: java.lang.Exception -> L77
            r0.label = r3     // Catch: java.lang.Exception -> L77
            java.lang.Object r9 = r4.moveEvent(r9, r5, r6, r0)     // Catch: java.lang.Exception -> L77
            if (r9 != r1) goto L4b
            return r1
        L77:
            r9 = move-exception
            com.amplitude.common.android.LogcatLogger$Companion r0 = com.amplitude.common.android.LogcatLogger.INSTANCE
            com.amplitude.common.android.LogcatLogger r0 = r0.getLogger()
            java.lang.String r1 = "intercepted identifies migration failed: "
            java.lang.String r9 = r9.getMessage()
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r9)
            r0.error(r9)
        L8b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.RemnantDataMigration.moveInterceptedIdentifies(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.amplitude.android.migration.RemnantDataMigration$moveInterceptedIdentifies$2 */
    /* JADX INFO: compiled from: RemnantDataMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    /* synthetic */ class C10412 extends FunctionReferenceImpl implements Function1<Long, Unit> {
        C10412(Object obj) {
            super(1, obj, DatabaseStorage.class, "removeInterceptedIdentify", "removeInterceptedIdentify(J)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l) {
            invoke(l.longValue());
            return Unit.INSTANCE;
        }

        public final void invoke(long j) {
            ((DatabaseStorage) this.receiver).removeInterceptedIdentify(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object moveEvent(org.json.JSONObject r7, com.amplitude.core.Storage r8, kotlin.jvm.functions.Function1<? super java.lang.Long, kotlin.Unit> r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof com.amplitude.android.migration.RemnantDataMigration.C10351
            if (r0 == 0) goto L14
            r0 = r10
            com.amplitude.android.migration.RemnantDataMigration$moveEvent$1 r0 = (com.amplitude.android.migration.RemnantDataMigration.C10351) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.amplitude.android.migration.RemnantDataMigration$moveEvent$1 r0 = new com.amplitude.android.migration.RemnantDataMigration$moveEvent$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            long r7 = r0.J$0
            java.lang.Object r9 = r0.L$0
            kotlin.jvm.functions.Function1 r9 = (kotlin.jvm.functions.Function1) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L59
            goto L51
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r10)
            long r4 = r6.convertLegacyEvent(r7)     // Catch: java.lang.Exception -> L59
            com.amplitude.core.events.BaseEvent r7 = com.amplitude.core.utilities.JSONUtilKt.toBaseEvent(r7)     // Catch: java.lang.Exception -> L59
            r0.L$0 = r9     // Catch: java.lang.Exception -> L59
            r0.J$0 = r4     // Catch: java.lang.Exception -> L59
            r0.label = r3     // Catch: java.lang.Exception -> L59
            java.lang.Object r7 = r8.writeEvent(r7, r0)     // Catch: java.lang.Exception -> L59
            if (r7 != r1) goto L50
            return r1
        L50:
            r7 = r4
        L51:
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r7)     // Catch: java.lang.Exception -> L59
            r9.invoke(r7)     // Catch: java.lang.Exception -> L59
            goto L6d
        L59:
            r7 = move-exception
            com.amplitude.common.android.LogcatLogger$Companion r8 = com.amplitude.common.android.LogcatLogger.INSTANCE
            com.amplitude.common.android.LogcatLogger r8 = r8.getLogger()
            java.lang.String r9 = "event migration failed: "
            java.lang.String r7 = r7.getMessage()
            java.lang.String r7 = kotlin.jvm.internal.Intrinsics.stringPlus(r9, r7)
            r8.error(r7)
        L6d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.RemnantDataMigration.moveEvent(org.json.JSONObject, com.amplitude.core.Storage, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final long convertLegacyEvent(JSONObject event) throws JSONException {
        long j = event.getLong(DatabaseConstants.ROW_ID_FIELD);
        event.put("event_id", j);
        JSONObject jSONObjectOptJSONObject = event.optJSONObject("library");
        if (jSONObjectOptJSONObject != null) {
            event.put("library", new StringBuilder().append((Object) jSONObjectOptJSONObject.getString("name")).append('/').append((Object) jSONObjectOptJSONObject.getString("version")).toString());
        }
        Object objOpt = event.opt(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP);
        if (objOpt != null) {
            event.put("time", objOpt);
        }
        Object objOpt2 = event.opt("uuid");
        if (objOpt2 != null) {
            event.put("insert_id", objOpt2);
        }
        JSONObject jSONObjectOptJSONObject2 = event.optJSONObject("api_properties");
        if (jSONObjectOptJSONObject2 != null) {
            Object objOpt3 = jSONObjectOptJSONObject2.opt("androidADID");
            if (objOpt3 != null) {
                event.put(TrackingOptions.AMP_TRACKING_OPTION_ADID, objOpt3);
            }
            Object objOpt4 = jSONObjectOptJSONObject2.opt("android_app_set_id");
            if (objOpt4 != null) {
                event.put("android_app_set_id", objOpt4);
            }
            Object objOpt5 = jSONObjectOptJSONObject2.opt("productId");
            if (objOpt5 != null) {
                event.put("productId", objOpt5);
            }
            Object objOpt6 = jSONObjectOptJSONObject2.opt(FirebaseAnalytics.Param.QUANTITY);
            if (objOpt6 != null) {
                event.put(FirebaseAnalytics.Param.QUANTITY, objOpt6);
            }
            Object objOpt7 = jSONObjectOptJSONObject2.opt("price");
            if (objOpt7 != null) {
                event.put("price", objOpt7);
            }
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(FirebaseAnalytics.Param.LOCATION);
            if (jSONObjectOptJSONObject3 != null) {
                Object objOpt8 = jSONObjectOptJSONObject3.opt("lat");
                if (objOpt8 != null) {
                    event.put("location_lat", objOpt8);
                }
                Object objOpt9 = jSONObjectOptJSONObject3.opt("lng");
                if (objOpt9 != null) {
                    event.put("location_lng", objOpt9);
                }
            }
        }
        Object objOpt10 = event.opt(Revenue.REVENUE_PRODUCT_ID);
        if (objOpt10 != null) {
            event.put("productId", objOpt10);
        }
        Object objOpt11 = event.opt(Revenue.REVENUE_QUANTITY);
        if (objOpt11 != null) {
            event.put(FirebaseAnalytics.Param.QUANTITY, objOpt11);
        }
        Object objOpt12 = event.opt(Revenue.REVENUE_PRICE);
        if (objOpt12 != null) {
            event.put("price", objOpt12);
        }
        Object objOpt13 = event.opt(Revenue.REVENUE_TYPE);
        if (objOpt13 != null) {
            event.put("revenueType", objOpt13);
        }
        return j;
    }
}
