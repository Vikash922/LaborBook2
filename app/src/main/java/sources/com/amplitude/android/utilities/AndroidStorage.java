package com.amplitude.android.utilities;

import android.content.Context;
import android.content.SharedPreferences;
import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.common.Logger;
import com.amplitude.core.Configuration;
import com.amplitude.core.Storage;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.EventPipeline;
import com.amplitude.core.utilities.Diagnostics;
import com.amplitude.core.utilities.EventsFileManager;
import com.amplitude.core.utilities.EventsFileStorage;
import com.amplitude.core.utilities.FileResponseHandler;
import com.amplitude.core.utilities.ResponseHandler;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: AndroidStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0001LB/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010#\u001a\u00020\u0006H\u0002JN\u0010$\u001a@\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000fj\u0004\u0018\u0001`\u00172\u0006\u0010%\u001a\u00020\u0006H\u0016J\u0019\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020(H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020\u0006H\u0002J(\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0016J\u0012\u00105\u001a\u0004\u0018\u00010\u00062\u0006\u00106\u001a\u000207H\u0016J\u000e\u00108\u001a\b\u0012\u0004\u0012\u00020(09H\u0016J\u0010\u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u0006H\u0016J\u0019\u0010<\u001a\u00020\u00162\u0006\u00106\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010=J\u0010\u0010>\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0006H\u0016J\u0010\u0010?\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0006H\u0016J\u0011\u0010A\u001a\u00020\u0016H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010BJ\u0018\u0010C\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u00062\u0006\u0010D\u001a\u00020EH\u0016J!\u0010F\u001a\u00020\u00162\u0006\u00106\u001a\u0002072\u0006\u0010G\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010HJ\u0019\u0010I\u001a\u00020\u00162\u0006\u0010J\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010KR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000RT\u0010\r\u001aH\u0012\u0004\u0012\u00020\u0006\u0012>\u0012<\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00160\u000fj\u0002`\u00170\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001dX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006M"}, m2722d2 = {"Lcom/amplitude/android/utilities/AndroidStorage;", "Lcom/amplitude/core/Storage;", "Lcom/amplitude/core/utilities/EventsFileStorage;", "context", "Landroid/content/Context;", "storageKey", "", "logger", "Lcom/amplitude/common/Logger;", "prefix", "diagnostics", "Lcom/amplitude/core/utilities/Diagnostics;", "(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V", "eventCallbacksMap", "", "Lkotlin/Function3;", "Lcom/amplitude/core/events/BaseEvent;", "", "Lkotlin/ParameterName;", "name", "status", "message", "", "Lcom/amplitude/core/EventCallBack;", "eventsFile", "Lcom/amplitude/core/utilities/EventsFileManager;", "getPrefix$android_release", "()Ljava/lang/String;", "sharedPreferences", "Landroid/content/SharedPreferences;", "getSharedPreferences$android_release", "()Landroid/content/SharedPreferences;", "storageDirectory", "Ljava/io/File;", "getStorageKey", "getDir", "getEventCallback", "insertId", "getEventsString", "content", "", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPrefix", "getResponseHandler", "Lcom/amplitude/core/utilities/ResponseHandler;", "eventPipeline", "Lcom/amplitude/core/platform/EventPipeline;", "configuration", "Lcom/amplitude/core/Configuration;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "read", "key", "Lcom/amplitude/core/Storage$Constants;", "readEventsContent", "", "releaseFile", "filePath", "remove", "(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeEventCallback", "removeFile", "", "rollover", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "splitEventFile", DatabaseConstants.EVENT_TABLE_NAME, "Lorg/json/JSONArray;", "write", "value", "(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeEvent", "event", "(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AndroidStorage implements Storage, EventsFileStorage {
    public static final String STORAGE_PREFIX = "amplitude-android";
    private final Diagnostics diagnostics;
    private final Map<String, Function3<BaseEvent, Integer, String, Unit>> eventCallbacksMap;
    private final EventsFileManager eventsFile;
    private final Logger logger;
    private final String prefix;
    private final SharedPreferences sharedPreferences;
    private final File storageDirectory;
    private final String storageKey;

    /* JADX INFO: renamed from: com.amplitude.android.utilities.AndroidStorage$writeEvent$1 */
    /* JADX INFO: compiled from: AndroidStorage.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.utilities.AndroidStorage", m2735f = "AndroidStorage.kt", m2736i = {0, 0}, m2737l = {43}, m2738m = "writeEvent", m2739n = {"this", "event"}, m2740s = {"L$0", "L$1"})
    static final class C10521 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10521(Continuation<? super C10521> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidStorage.this.writeEvent(null, this);
        }
    }

    public AndroidStorage(Context context, String storageKey, Logger logger, String str, Diagnostics diagnostics) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(storageKey, "storageKey");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(diagnostics, "diagnostics");
        this.storageKey = storageKey;
        this.logger = logger;
        this.prefix = str;
        this.diagnostics = diagnostics;
        SharedPreferences sharedPreferences = context.getSharedPreferences(getPrefix() + SignatureVisitor.SUPER + storageKey, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…y\", Context.MODE_PRIVATE)");
        this.sharedPreferences = sharedPreferences;
        File dir = context.getDir(getDir(), 0);
        Intrinsics.checkNotNullExpressionValue(dir, "context.getDir(getDir(), Context.MODE_PRIVATE)");
        this.storageDirectory = dir;
        this.eventsFile = new EventsFileManager(dir, storageKey, new AndroidKVS(sharedPreferences), logger, diagnostics);
        this.eventCallbacksMap = new LinkedHashMap();
    }

    public final String getStorageKey() {
        return this.storageKey;
    }

    /* JADX INFO: renamed from: getPrefix$android_release, reason: from getter */
    public final String getPrefix() {
        return this.prefix;
    }

    /* JADX INFO: renamed from: getSharedPreferences$android_release, reason: from getter */
    public final SharedPreferences getSharedPreferences() {
        return this.sharedPreferences;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.amplitude.core.Storage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object writeEvent(com.amplitude.core.events.BaseEvent r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.amplitude.android.utilities.AndroidStorage.C10521
            if (r0 == 0) goto L14
            r0 = r6
            com.amplitude.android.utilities.AndroidStorage$writeEvent$1 r0 = (com.amplitude.android.utilities.AndroidStorage.C10521) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.amplitude.android.utilities.AndroidStorage$writeEvent$1 r0 = new com.amplitude.android.utilities.AndroidStorage$writeEvent$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r5 = r0.L$1
            com.amplitude.core.events.BaseEvent r5 = (com.amplitude.core.events.BaseEvent) r5
            java.lang.Object r0 = r0.L$0
            com.amplitude.android.utilities.AndroidStorage r0 = (com.amplitude.android.utilities.AndroidStorage) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L53
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            com.amplitude.core.utilities.EventsFileManager r6 = r4.eventsFile
            com.amplitude.core.utilities.JSONUtil r2 = com.amplitude.core.utilities.JSONUtil.INSTANCE
            java.lang.String r2 = r2.eventToString(r5)
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.storeEvent(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            r0 = r4
        L53:
            kotlin.jvm.functions.Function3 r6 = r5.getCallback()
            if (r6 != 0) goto L5a
            goto L69
        L5a:
            java.lang.String r5 = r5.getInsertId()
            if (r5 != 0) goto L61
            goto L69
        L61:
            java.util.Map<java.lang.String, kotlin.jvm.functions.Function3<com.amplitude.core.events.BaseEvent, java.lang.Integer, java.lang.String, kotlin.Unit>> r0 = r0.eventCallbacksMap
            java.lang.Object r5 = r0.put(r5, r6)
            kotlin.jvm.functions.Function3 r5 = (kotlin.jvm.functions.Function3) r5
        L69:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.utilities.AndroidStorage.writeEvent(com.amplitude.core.events.BaseEvent, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.amplitude.core.Storage
    public Object write(Storage.Constants constants, String str, Continuation<? super Unit> continuation) {
        getSharedPreferences().edit().putString(constants.getRawVal(), str).apply();
        return Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage
    public Object remove(Storage.Constants constants, Continuation<? super Unit> continuation) {
        getSharedPreferences().edit().remove(constants.getRawVal()).apply();
        return Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public Object rollover(Continuation<? super Unit> continuation) {
        Object objRollover = this.eventsFile.rollover(continuation);
        return objRollover == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRollover : Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage
    public String read(Storage.Constants key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.sharedPreferences.getString(key.getRawVal(), null);
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public List<Object> readEventsContent() {
        return this.eventsFile.read();
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public void releaseFile(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.eventsFile.release(filePath);
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public Object getEventsString(Object obj, Continuation<? super String> continuation) {
        return this.eventsFile.getEventString((String) obj, continuation);
    }

    @Override // com.amplitude.core.Storage
    public ResponseHandler getResponseHandler(EventPipeline eventPipeline, Configuration configuration, CoroutineScope scope, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(eventPipeline, "eventPipeline");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return new FileResponseHandler(this, eventPipeline, configuration, scope, dispatcher, this.logger);
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public boolean removeFile(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return this.eventsFile.remove(filePath);
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public Function3<BaseEvent, Integer, String, Unit> getEventCallback(String insertId) {
        Intrinsics.checkNotNullParameter(insertId, "insertId");
        return this.eventCallbacksMap.get(insertId);
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public void removeEventCallback(String insertId) {
        Intrinsics.checkNotNullParameter(insertId, "insertId");
        this.eventCallbacksMap.remove(insertId);
    }

    @Override // com.amplitude.core.utilities.EventsFileStorage
    public void splitEventFile(String filePath, JSONArray events) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(events, "events");
        this.eventsFile.splitFile(filePath, events);
    }

    private final String getPrefix() {
        String str = this.prefix;
        return str == null ? STORAGE_PREFIX : str;
    }

    private final String getDir() {
        String str = this.prefix;
        if (str != null) {
            return Intrinsics.stringPlus(str, "-disk-queue");
        }
        return "amplitude-disk-queue";
    }
}
