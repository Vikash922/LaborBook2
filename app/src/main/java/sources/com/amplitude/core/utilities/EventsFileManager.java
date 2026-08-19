package com.amplitude.core.utilities;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.common.Logger;
import com.amplitude.core.events.Identify;
import com.amplitude.p009id.utilities.FileUtilsKt;
import com.amplitude.p009id.utilities.KeyValueStore;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlin.p024io.FilesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.jacoco.core.runtime.AgentOptions;
import org.json.JSONArray;
import org.json.JSONObject;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: EventsFileManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\u0018\u0000 <2\u00020\u0001:\u0001<B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u001d\u001a\u00020\u0003H\u0002J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0003H\u0002J\u0019\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010#J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0003H\u0002J\b\u0010%\u001a\u00020&H\u0002J\u0011\u0010'\u001a\u00020\u001fH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020&H\u0002J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00050+J\u000e\u0010,\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020&2\u0006\u0010\"\u001a\u00020\u0005J\u0010\u0010.\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0002J\b\u0010/\u001a\u00020\u001fH\u0002J\u0011\u00100\u001a\u00020\u001fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010(J\u0016\u00101\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00052\u0006\u00102\u001a\u000203J\u0019\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010#J(\u00106\u001a\u00020\u001f2\f\u00102\u001a\b\u0012\u0004\u0012\u0002070+2\u0006\u0010 \u001a\u00020\u00032\b\b\u0002\u00108\u001a\u00020&H\u0002J\"\u00109\u001a\u00020\u001f2\u0006\u0010:\u001a\u00020;2\u0006\u0010 \u001a\u00020\u00032\b\b\u0002\u00108\u001a\u00020&H\u0002R\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u001a\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006="}, m2722d2 = {"Lcom/amplitude/core/utilities/EventsFileManager;", "", "directory", "Ljava/io/File;", "storageKey", "", "kvs", "Lcom/amplitude/id/utilities/KeyValueStore;", "logger", "Lcom/amplitude/common/Logger;", "diagnostics", "Lcom/amplitude/core/utilities/Diagnostics;", "(Ljava/io/File;Ljava/lang/String;Lcom/amplitude/id/utilities/KeyValueStore;Lcom/amplitude/common/Logger;Lcom/amplitude/core/utilities/Diagnostics;)V", "curFile", "", "getCurFile", "()Ljava/util/Map;", "fileIndexKey", "filePathSet", "", "getFilePathSet", "()Ljava/util/Set;", "readMutex", "Lkotlinx/coroutines/sync/Mutex;", "kotlin.jvm.PlatformType", "storageVersionKey", "writeMutex", "getWriteMutex", "()Lkotlinx/coroutines/sync/Mutex;", "currentFile", "finish", "", ShareInternalUtility.STAGING_PARAM, "getEventString", "filePath", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSortKeyForFile", "guardDirectory", "", "handleV1Files", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "incrementFileIndex", "read", "", "release", "remove", "rename", "reset", "rollover", "splitFile", DatabaseConstants.EVENT_TABLE_NAME, "Lorg/json/JSONArray;", "storeEvent", "event", "writeEventsToSplitFile", "Lorg/json/JSONObject;", AgentOptions.APPEND, "writeToFile", "content", "", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class EventsFileManager {
    public static final String DELIMITER = "\u0000";
    public static final int MAX_FILE_SIZE = 975000;
    private final Map<String, File> curFile;
    private final Diagnostics diagnostics;
    private final File directory;
    private final String fileIndexKey;
    private final Set<String> filePathSet;
    private final KeyValueStore kvs;
    private final Logger logger;
    private final Mutex readMutex;
    private final String storageKey;
    private final String storageVersionKey;
    private final Mutex writeMutex;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ConcurrentHashMap<String, Mutex> writeMutexMap = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Mutex> readMutexMap = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.amplitude.core.utilities.EventsFileManager$getEventString$1 */
    /* JADX INFO: compiled from: EventsFileManager.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.EventsFileManager", m2735f = "EventsFileManager.kt", m2736i = {0, 0, 0}, m2737l = {362}, m2738m = "getEventString", m2739n = {"this", "filePath", "$this$withLock_u24default$iv"}, m2740s = {"L$0", "L$1", "L$2"})
    static final class C10711 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C10711(Continuation<? super C10711> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EventsFileManager.this.getEventString(null, this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.EventsFileManager$handleV1Files$1 */
    /* JADX INFO: compiled from: EventsFileManager.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.EventsFileManager", m2735f = "EventsFileManager.kt", m2736i = {0, 0}, m2737l = {362}, m2738m = "handleV1Files", m2739n = {"this", "$this$withLock_u24default$iv"}, m2740s = {"L$0", "L$1"})
    static final class C10721 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10721(Continuation<? super C10721> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EventsFileManager.this.handleV1Files(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.EventsFileManager$rollover$1 */
    /* JADX INFO: compiled from: EventsFileManager.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.EventsFileManager", m2735f = "EventsFileManager.kt", m2736i = {0, 0}, m2737l = {362}, m2738m = "rollover", m2739n = {"this", "$this$withLock_u24default$iv"}, m2740s = {"L$0", "L$1"})
    static final class C10731 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10731(Continuation<? super C10731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EventsFileManager.this.rollover(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.EventsFileManager$storeEvent$1 */
    /* JADX INFO: compiled from: EventsFileManager.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.EventsFileManager", m2735f = "EventsFileManager.kt", m2736i = {0, 0, 0}, m2737l = {362}, m2738m = "storeEvent", m2739n = {"this", "event", "$this$withLock_u24default$iv"}, m2740s = {"L$0", "L$1", "L$2"})
    static final class C10741 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C10741(Continuation<? super C10741> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EventsFileManager.this.storeEvent(null, this);
        }
    }

    public EventsFileManager(File directory, String storageKey, KeyValueStore kvs, Logger logger, Diagnostics diagnostics) throws InterruptedException {
        Mutex mutexPutIfAbsent;
        Mutex mutexPutIfAbsent2;
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(storageKey, "storageKey");
        Intrinsics.checkNotNullParameter(kvs, "kvs");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(diagnostics, "diagnostics");
        this.directory = directory;
        this.storageKey = storageKey;
        this.kvs = kvs;
        this.logger = logger;
        this.diagnostics = diagnostics;
        this.fileIndexKey = Intrinsics.stringPlus("amplitude.events.file.index.", storageKey);
        this.storageVersionKey = Intrinsics.stringPlus("amplitude.events.file.version.", storageKey);
        Set<String> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(Concurrent…shMap<String, Boolean>())");
        this.filePathSet = setNewSetFromMap;
        this.curFile = new ConcurrentHashMap();
        ConcurrentHashMap<String, Mutex> concurrentHashMap = writeMutexMap;
        Mutex mutexMutex$default = concurrentHashMap.get(storageKey);
        if (mutexMutex$default == null && (mutexPutIfAbsent2 = concurrentHashMap.putIfAbsent(storageKey, (mutexMutex$default = MutexKt.Mutex$default(false, 1, null)))) != null) {
            mutexMutex$default = mutexPutIfAbsent2;
        }
        this.writeMutex = mutexMutex$default;
        ConcurrentHashMap<String, Mutex> concurrentHashMap2 = readMutexMap;
        Mutex mutexMutex$default2 = concurrentHashMap2.get(storageKey);
        if (mutexMutex$default2 == null && (mutexPutIfAbsent = concurrentHashMap2.putIfAbsent(storageKey, (mutexMutex$default2 = MutexKt.Mutex$default(false, 1, null)))) != null) {
            mutexMutex$default2 = mutexPutIfAbsent;
        }
        this.readMutex = mutexMutex$default2;
        guardDirectory();
        BuildersKt__BuildersKt.runBlocking$default(null, new C10701(null), 1, null);
    }

    public final Set<String> getFilePathSet() {
        return this.filePathSet;
    }

    public final Map<String, File> getCurFile() {
        return this.curFile;
    }

    /* JADX INFO: compiled from: EventsFileManager.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u000e"}, m2722d2 = {"Lcom/amplitude/core/utilities/EventsFileManager$Companion;", "", "()V", "DELIMITER", "", "MAX_FILE_SIZE", "", "readMutexMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lkotlinx/coroutines/sync/Mutex;", "getReadMutexMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "writeMutexMap", "getWriteMutexMap", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ConcurrentHashMap<String, Mutex> getWriteMutexMap() {
            return EventsFileManager.writeMutexMap;
        }

        public final ConcurrentHashMap<String, Mutex> getReadMutexMap() {
            return EventsFileManager.readMutexMap;
        }
    }

    public final Mutex getWriteMutex() {
        return this.writeMutex;
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.EventsFileManager$1 */
    /* JADX INFO: compiled from: EventsFileManager.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.EventsFileManager$1", m2735f = "EventsFileManager.kt", m2736i = {}, m2737l = {47}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C10701(Continuation<? super C10701> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EventsFileManager.this.new C10701(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10701) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (EventsFileManager.this.handleV1Files(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009e A[Catch: all -> 0x00fc, TRY_LEAVE, TryCatch #2 {all -> 0x00fc, blocks: (B:18:0x005f, B:39:0x00ec, B:21:0x0067, B:24:0x0073, B:28:0x0093, B:30:0x009e, B:32:0x00ab, B:35:0x00b0, B:36:0x00cb, B:38:0x00e0, B:42:0x00f4, B:43:0x00fb, B:27:0x0078), top: B:51:0x005f, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e0 A[Catch: all -> 0x00fc, TryCatch #2 {all -> 0x00fc, blocks: (B:18:0x005f, B:39:0x00ec, B:21:0x0067, B:24:0x0073, B:28:0x0093, B:30:0x009e, B:32:0x00ab, B:35:0x00b0, B:36:0x00cb, B:38:0x00e0, B:42:0x00f4, B:43:0x00fb, B:27:0x0078), top: B:51:0x005f, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f4 A[Catch: all -> 0x00fc, TRY_ENTER, TryCatch #2 {all -> 0x00fc, blocks: (B:18:0x005f, B:39:0x00ec, B:21:0x0067, B:24:0x0073, B:28:0x0093, B:30:0x009e, B:32:0x00ab, B:35:0x00b0, B:36:0x00cb, B:38:0x00e0, B:42:0x00f4, B:43:0x00fb, B:27:0x0078), top: B:51:0x005f, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object storeEvent(java.lang.String r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.utilities.EventsFileManager.storeEvent(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean incrementFileIndex() {
        return this.kvs.putLong(this.fileIndexKey, this.kvs.getLong(this.fileIndexKey, 0L) + 1);
    }

    public final List<String> read() {
        File[] fileArrListFiles = this.directory.listFiles(new FilenameFilter() { // from class: com.amplitude.core.utilities.EventsFileManager$$ExternalSyntheticLambda0
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return EventsFileManager.m2997read$lambda3(this.f$0, file, str);
            }
        });
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        List listSortedWith = ArraysKt.sortedWith(fileArrListFiles, new Comparator() { // from class: com.amplitude.core.utilities.EventsFileManager$read$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                File it = (File) t;
                EventsFileManager eventsFileManager = this.this$0;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                String sortKeyForFile = eventsFileManager.getSortKeyForFile(it);
                File it2 = (File) t2;
                EventsFileManager eventsFileManager2 = this.this$0;
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                return ComparisonsKt.compareValues(sortKeyForFile, eventsFileManager2.getSortKeyForFile(it2));
            }
        });
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSortedWith, 10));
        Iterator it = listSortedWith.iterator();
        while (it.hasNext()) {
            arrayList.add(((File) it.next()).getAbsolutePath());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: read$lambda-3, reason: not valid java name */
    public static final boolean m2997read$lambda3(EventsFileManager this$0, File file, String name) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(name, "name");
        return (!StringsKt.contains$default((CharSequence) name, (CharSequence) this$0.storageKey, false, 2, (Object) null) || StringsKt.endsWith$default(name, ".tmp", false, 2, (Object) null) || StringsKt.endsWith$default(name, ".properties", false, 2, (Object) null)) ? false : true;
    }

    public final boolean remove(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.filePathSet.remove(filePath);
        return new File(filePath).delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object rollover(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.amplitude.core.utilities.EventsFileManager.C10731
            if (r0 == 0) goto L14
            r0 = r9
            com.amplitude.core.utilities.EventsFileManager$rollover$1 r0 = (com.amplitude.core.utilities.EventsFileManager.C10731) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.amplitude.core.utilities.EventsFileManager$rollover$1 r0 = new com.amplitude.core.utilities.EventsFileManager$rollover$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3b
            if (r2 != r4) goto L33
            java.lang.Object r1 = r0.L$1
            kotlinx.coroutines.sync.Mutex r1 = (kotlinx.coroutines.sync.Mutex) r1
            java.lang.Object r0 = r0.L$0
            com.amplitude.core.utilities.EventsFileManager r0 = (com.amplitude.core.utilities.EventsFileManager) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L57
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.getWriteMutex()
            java.lang.String r2 = "writeMutex"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r2)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r0 = r9.lock(r3, r0)
            if (r0 != r1) goto L55
            return r1
        L55:
            r0 = r8
            r1 = r9
        L57:
            java.io.File r9 = r0.currentFile()     // Catch: java.lang.Throwable -> L76
            boolean r2 = r9.exists()     // Catch: java.lang.Throwable -> L76
            if (r2 == 0) goto L6e
            long r4 = r9.length()     // Catch: java.lang.Throwable -> L76
            r6 = 0
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 <= 0) goto L6e
            r0.finish(r9)     // Catch: java.lang.Throwable -> L76
        L6e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L76
            r1.unlock(r3)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L76:
            r9 = move-exception
            r1.unlock(r3)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.utilities.EventsFileManager.rollover(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void splitFile(String filePath, JSONArray events) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(events, "events");
        File file = new File(filePath);
        if (file.exists()) {
            String name = file.getName();
            File file2 = new File(this.directory, Intrinsics.stringPlus(name, "-1.tmp"));
            File file3 = new File(this.directory, Intrinsics.stringPlus(name, "-2.tmp"));
            Pair<List<JSONObject>, List<JSONObject>> pairSplit = JSONUtilKt.split(events);
            writeEventsToSplitFile$default(this, pairSplit.getFirst(), file2, false, 4, null);
            writeEventsToSplitFile$default(this, pairSplit.getSecond(), file3, false, 4, null);
            remove(filePath);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getEventString(java.lang.String r20, kotlin.coroutines.Continuation<? super java.lang.String> r21) {
        /*
            Method dump skipped, instruction units count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.utilities.EventsFileManager.getEventString(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void release(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.filePathSet.remove(filePath);
    }

    private final void finish(File file) {
        if (file == null) {
            return;
        }
        rename(file);
        incrementFileIndex();
        reset();
    }

    private final void rename(File file) {
        if (!file.exists() || FilesKt.getExtension(file).length() == 0) {
            return;
        }
        String nameWithoutExtension = FilesKt.getNameWithoutExtension(file);
        File file2 = new File(this.directory, nameWithoutExtension);
        if (file2.exists()) {
            this.logger.debug("File already exists: " + file2 + ", handle gracefully.");
            file.renameTo(new File(this.directory, nameWithoutExtension + SignatureVisitor.SUPER + System.currentTimeMillis() + SignatureVisitor.SUPER + new Random().nextInt(1000)));
            return;
        }
        file.renameTo(new File(this.directory, FilesKt.getNameWithoutExtension(file)));
    }

    private final File currentFile() {
        File file = this.curFile.get(this.storageKey);
        if (file == null) {
            File[] fileArrListFiles = this.directory.listFiles(new FilenameFilter() { // from class: com.amplitude.core.utilities.EventsFileManager$$ExternalSyntheticLambda1
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str) {
                    return EventsFileManager.m2995currentFile$lambda11$lambda10(this.f$0, file2, str);
                }
            });
            if (fileArrListFiles == null) {
                fileArrListFiles = new File[0];
            }
            file = (File) ArraysKt.getOrNull(fileArrListFiles, 0);
        }
        long j = this.kvs.getLong(this.fileIndexKey, 0L);
        Map<String, File> map = this.curFile;
        String str = this.storageKey;
        if (file == null) {
            file = new File(this.directory, this.storageKey + SignatureVisitor.SUPER + j + ".tmp");
        }
        map.put(str, file);
        File file2 = this.curFile.get(this.storageKey);
        Intrinsics.checkNotNull(file2);
        return file2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: currentFile$lambda-11$lambda-10, reason: not valid java name */
    public static final boolean m2995currentFile$lambda11$lambda10(EventsFileManager this_run, File file, String name) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        Intrinsics.checkNotNullExpressionValue(name, "name");
        return StringsKt.contains$default((CharSequence) name, (CharSequence) this_run.storageKey, false, 2, (Object) null) && StringsKt.endsWith$default(name, ".tmp", false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSortKeyForFile(File file) {
        String strReplace$default = StringsKt.replace$default(FilesKt.getNameWithoutExtension(file), Intrinsics.stringPlus(this.storageKey, Identify.UNSET_VALUE), "", false, 4, (Object) null);
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) strReplace$default, SignatureVisitor.SUPER, 0, false, 6, (Object) null);
        if (iIndexOf$default < 0) {
            return strReplace$default;
        }
        if (strReplace$default == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = strReplace$default.substring(0, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        String strPadStart = StringsKt.padStart(strSubstring, 10, '0');
        if (strReplace$default == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring2 = strReplace$default.substring(iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        return Intrinsics.stringPlus(strPadStart, strSubstring2);
    }

    static /* synthetic */ void writeToFile$default(EventsFileManager eventsFileManager, byte[] bArr, File file, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        eventsFileManager.writeToFile(bArr, file, z);
    }

    private final void writeToFile(byte[] content, File file, boolean append) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file, append);
            try {
                FileOutputStream fileOutputStream2 = fileOutputStream;
                fileOutputStream2.write(content);
                fileOutputStream2.flush();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (FileNotFoundException e) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Error writing to file: ", e.getMessage()));
            this.logger.error(Intrinsics.stringPlus("File not found: ", file.getPath()));
        } catch (IOException e2) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Error writing to file: ", e2.getMessage()));
            this.logger.error(Intrinsics.stringPlus("Failed to write to file: ", file.getPath()));
        } catch (SecurityException e3) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Error writing to file: ", e3.getMessage()));
            this.logger.error(Intrinsics.stringPlus("Security exception when saving event: ", e3.getMessage()));
        } catch (Exception e4) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Error writing to file: ", e4.getMessage()));
            this.logger.error(Intrinsics.stringPlus("Failed to write to file: ", file.getPath()));
        }
    }

    static /* synthetic */ void writeEventsToSplitFile$default(EventsFileManager eventsFileManager, List list, File file, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        eventsFileManager.writeEventsToSplitFile(list, file, z);
    }

    private final void writeEventsToSplitFile(List<? extends JSONObject> events, File file, boolean append) {
        try {
            String strJoinToString$default = CollectionsKt.joinToString$default(events, DELIMITER, null, DELIMITER, 0, null, new Function1<JSONObject, CharSequence>() { // from class: com.amplitude.core.utilities.EventsFileManager$writeEventsToSplitFile$contents$1
                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(JSONObject it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    String string = it.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "it.toString()");
                    return StringsKt.replace$default(string, EventsFileManager.DELIMITER, "", false, 4, (Object) null);
                }
            }, 26, null);
            file.createNewFile();
            Charset charset = Charsets.UTF_8;
            if (strJoinToString$default == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = strJoinToString$default.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            writeToFile(bytes, file, append);
            rename(file);
        } catch (UnsupportedEncodingException e) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Failed to encode event: ", e.getMessage()));
            this.logger.error(Intrinsics.stringPlus("Failed to encode event: ", e.getMessage()));
        } catch (IOException e2) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Failed to create or write to split file: ", e2.getMessage()));
            this.logger.error(Intrinsics.stringPlus("Failed to create or write to split file: ", file.getPath()));
        } catch (Exception e3) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Failed to write to split file: ", e3.getMessage()));
            this.logger.error("Failed to write to split file: " + ((Object) file.getPath()) + " for error: " + ((Object) e3.getMessage()));
        }
    }

    private final void reset() {
        this.curFile.remove(this.storageKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleV1Files(kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.utilities.EventsFileManager.handleV1Files(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleV1Files$lambda-15$lambda-13, reason: not valid java name */
    public static final boolean m2996handleV1Files$lambda15$lambda13(EventsFileManager this$0, File file, String name) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(name, "name");
        return StringsKt.contains$default((CharSequence) name, (CharSequence) this$0.storageKey, false, 2, (Object) null) && !StringsKt.endsWith$default(name, ".properties", false, 2, (Object) null);
    }

    private final boolean guardDirectory() {
        try {
            FileUtilsKt.createDirectory(this.directory);
            return true;
        } catch (IOException e) {
            this.diagnostics.addErrorLog(Intrinsics.stringPlus("Failed to create directory: ", e.getMessage()));
            this.logger.error(Intrinsics.stringPlus("Failed to create directory for events storage: ", this.directory.getPath()));
            return false;
        }
    }
}
