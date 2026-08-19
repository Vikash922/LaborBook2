package com.laborbook.expense.screen.home.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.datastore.DataStoreManagerExtensionsKt;
import com.laborbook.expense.databinding.ItemExpenseBinding;
import com.laborbook.expense.databinding.ItemNativeAdBinding;
import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.model.TransactionItem;
import com.laborbook.expense.screen.home.adapter.TransactionListAdapter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: compiled from: TransactionListAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u0000 G2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0003GHIB;\u0012\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010'\u001a\u0004\u0018\u00010\u00022\u0006\u0010(\u001a\u00020\bJ\u0010\u0010)\u001a\u00020\b2\u0006\u0010(\u001a\u00020\bH\u0016J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\bH\u0016J\u0018\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\bH\u0016J\u0010\u00100\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0003H\u0016J \u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\b2\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020\t2\u0006\u00103\u001a\u00020\b2\u0006\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u001cH\u0002J\u0010\u00109\u001a\u00020\b2\u0006\u0010:\u001a\u00020\bH\u0002J\u001e\u0010;\u001a\u00020\t2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00070\u00192\b\b\u0002\u0010=\u001a\u00020&J\u0006\u0010>\u001a\u00020\tJ\u000e\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\rJ\u0016\u0010A\u001a\u00020\t2\u0006\u0010@\u001a\u00020\r2\u0006\u0010B\u001a\u00020!J\u0016\u0010C\u001a\u00020\t2\u0006\u0010@\u001a\u00020\r2\u0006\u0010B\u001a\u00020!J\u0016\u0010D\u001a\u00020&2\u0006\u0010@\u001a\u00020\r2\u0006\u0010B\u001a\u00020!J\u0006\u0010E\u001a\u00020\tJ\u0006\u0010F\u001a\u00020\tR \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006J"}, m2722d2 = {"Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/laborbook/expense/model/TransactionItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lorg/koin/core/component/KoinComponent;", "onExpenseClick", "Lkotlin/Function2;", "Lcom/laborbook/expense/model/Transaction;", "", "", "onLoadMore", "Lkotlin/Function0;", "adUnitId", "", "<init>", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "Lkotlin/Lazy;", "adapterScope", "Lkotlinx/coroutines/CoroutineScope;", "originalTransactions", "", "nativeAds", "", "Lcom/google/android/gms/ads/nativead/NativeAd;", "adPositions", "", "adRetryCount", "adViewStartTime", "", "adLastVisibleTime", "mainHandler", "Landroid/os/Handler;", "shouldRefreshAds", "", "getExpenseItemAt", CommonCssConstants.POSITION, "getItemViewType", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", "onViewRecycled", "loadNativeAd", "listPosition", "transactionIndex", "context", "Landroid/content/Context;", "insertAdIntoList", "targetTransaction", "nativeAd", "findTransactionIndexBeforeAd", "adPosition", "submitOriginalList", "transactions", "forceRefreshAds", "refreshAds", "refreshAdByKey", "adKey", "recordAdVisible", "currentTime", "recordAdHidden", "shouldRefreshAdByViewTime", "releaseAds", "removeAllAds", "Companion", "ExpenseViewHolder", "AdViewHolder", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionListAdapter extends ListAdapter<TransactionItem, RecyclerView.ViewHolder> implements KoinComponent {
    private static final long AD_OFF_SCREEN_REFRESH_MS = 30000;
    private static final long AD_VIEW_TIME_REFRESH_MS = 60000;
    private static final int MAX_RETRY_ATTEMPTS = 3;
    public static final int VIEW_TYPE_AD = 1;
    public static final int VIEW_TYPE_EXPENSE = 0;
    private final Map<String, Long> adLastVisibleTime;
    private final Set<String> adPositions;
    private final Map<String, Integer> adRetryCount;
    private final String adUnitId;
    private final Map<String, Long> adViewStartTime;
    private final CoroutineScope adapterScope;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;
    private final Handler mainHandler;
    private final Map<String, NativeAd> nativeAds;
    private final Function2<Transaction, Integer, Unit> onExpenseClick;
    private final Function0<Unit> onLoadMore;
    private List<Transaction> originalTransactions;
    private boolean shouldRefreshAds;

    public /* synthetic */ TransactionListAdapter(Function2 function2, Function0 function0, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, function0, (i & 4) != 0 ? null : str);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TransactionListAdapter(Function2<? super Transaction, ? super Integer, Unit> onExpenseClick, Function0<Unit> onLoadMore, String str) {
        super(new ExpenseDiffCallback());
        Intrinsics.checkNotNullParameter(onExpenseClick, "onExpenseClick");
        Intrinsics.checkNotNullParameter(onLoadMore, "onLoadMore");
        this.onExpenseClick = onExpenseClick;
        this.onLoadMore = onLoadMore;
        this.adUnitId = str;
        final TransactionListAdapter transactionListAdapter = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.laborbook.expense.screen.home.adapter.TransactionListAdapter$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = transactionListAdapter;
                Qualifier qualifier2 = qualifier;
                Function0<? extends DefinitionParameters> function0 = objArr;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), qualifier2, function0);
            }
        });
        this.adapterScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getIO()));
        this.originalTransactions = CollectionsKt.emptyList();
        this.nativeAds = new LinkedHashMap();
        this.adPositions = new LinkedHashSet();
        this.adRetryCount = new LinkedHashMap();
        this.adViewStartTime = new LinkedHashMap();
        this.adLastVisibleTime = new LinkedHashMap();
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    public final TransactionItem getExpenseItemAt(int position) {
        if (position < 0 || position >= getItemCount()) {
            return null;
        }
        return getItem(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        TransactionItem item = getItem(position);
        if (item instanceof TransactionItem.TransactionItemView) {
            return 0;
        }
        if (item instanceof TransactionItem.AdItem) {
            return 1;
        }
        throw new IllegalArgumentException("Unsupported item type");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 0) {
            ItemExpenseBinding itemExpenseBindingInflate = ItemExpenseBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(itemExpenseBindingInflate, "inflate(...)");
            return new ExpenseViewHolder(itemExpenseBindingInflate, this.onExpenseClick);
        }
        if (viewType == 1) {
            ItemNativeAdBinding itemNativeAdBindingInflate = ItemNativeAdBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(itemNativeAdBindingInflate, "inflate(...)");
            return new AdViewHolder(itemNativeAdBindingInflate, this);
        }
        throw new IllegalArgumentException("Invalid view type");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        int iIndexOf;
        Intrinsics.checkNotNullParameter(holder, "holder");
        TransactionItem item = getItem(position);
        if (item instanceof TransactionItem.TransactionItemView) {
            TransactionItem.TransactionItemView transactionItemView = (TransactionItem.TransactionItemView) item;
            ((ExpenseViewHolder) holder).bind(transactionItemView.getTransaction(), position);
            if (this.adUnitId != null && (iIndexOf = this.originalTransactions.indexOf(transactionItemView.getTransaction())) != -1 && (iIndexOf + 1) % 3 == 0) {
                String str = iIndexOf + '_' + transactionItemView.getTransaction().getId();
                if (!this.adPositions.contains(str) && !this.nativeAds.containsKey(str)) {
                    BuildersKt__Builders_commonKt.launch$default(this.adapterScope, null, null, new C36051(str, position, iIndexOf, holder, null), 3, null);
                } else {
                    if (this.shouldRefreshAds && this.nativeAds.containsKey(str)) {
                        NativeAd nativeAd = this.nativeAds.get(str);
                        if (nativeAd != null) {
                            nativeAd.destroy();
                        }
                        this.nativeAds.remove(str);
                        this.adPositions.remove(str);
                        this.adRetryCount.remove(str);
                    } else if (!this.nativeAds.containsKey(str)) {
                        Integer num = this.adRetryCount.get(str);
                        if ((num != null ? num.intValue() : 0) < 3) {
                        }
                    }
                    BuildersKt__Builders_commonKt.launch$default(this.adapterScope, null, null, new C36051(str, position, iIndexOf, holder, null), 3, null);
                }
            }
        } else if (item instanceof TransactionItem.AdItem) {
            int iFindTransactionIndexBeforeAd = findTransactionIndexBeforeAd(position);
            if (iFindTransactionIndexBeforeAd != -1) {
                String str2 = iFindTransactionIndexBeforeAd + '_' + this.originalTransactions.get(iFindTransactionIndexBeforeAd).getId();
                ((AdViewHolder) holder).bind(this.nativeAds.get(str2), str2);
            } else {
                ((AdViewHolder) holder).bind(null, null);
            }
        }
        if (position == getItemCount() - 1) {
            this.onLoadMore.invoke();
        }
    }

    /* JADX INFO: renamed from: com.laborbook.expense.screen.home.adapter.TransactionListAdapter$onBindViewHolder$1 */
    /* JADX INFO: compiled from: TransactionListAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.expense.screen.home.adapter.TransactionListAdapter$onBindViewHolder$1", m2735f = "TransactionListAdapter.kt", m2736i = {}, m2737l = {118}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $adKey;
        final /* synthetic */ RecyclerView.ViewHolder $holder;
        final /* synthetic */ int $position;
        final /* synthetic */ int $transactionIndex;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36051(String str, int i, int i2, RecyclerView.ViewHolder viewHolder, Continuation<? super C36051> continuation) {
            super(2, continuation);
            this.$adKey = str;
            this.$position = i;
            this.$transactionIndex = i2;
            this.$holder = viewHolder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionListAdapter.this.new C36051(this.$adKey, this.$position, this.$transactionIndex, this.$holder, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36051) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(TransactionListAdapter.this.getDataStoreManager(), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                Handler handler = TransactionListAdapter.this.mainHandler;
                final TransactionListAdapter transactionListAdapter = TransactionListAdapter.this;
                final String str = this.$adKey;
                final int i2 = this.$position;
                final int i3 = this.$transactionIndex;
                final RecyclerView.ViewHolder viewHolder = this.$holder;
                handler.post(new Runnable() { // from class: com.laborbook.expense.screen.home.adapter.TransactionListAdapter$onBindViewHolder$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TransactionListAdapter.C36051.invokeSuspend$lambda$0(transactionListAdapter, str, i2, i3, viewHolder);
                    }
                });
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(TransactionListAdapter transactionListAdapter, String str, int i, int i2, RecyclerView.ViewHolder viewHolder) {
            if (!transactionListAdapter.adPositions.contains(str)) {
                transactionListAdapter.adPositions.add(str);
            }
            if (transactionListAdapter.shouldRefreshAds) {
                transactionListAdapter.shouldRefreshAds = false;
            }
            Context context = viewHolder.itemView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            transactionListAdapter.loadNativeAd(i + 1, i2, context);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        if (holder instanceof AdViewHolder) {
            ((AdViewHolder) holder).unregisterAd();
        }
    }

    /* JADX INFO: compiled from: TransactionListAdapter.kt */
    @Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$ExpenseViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/expense/databinding/ItemExpenseBinding;", "onExpenseClick", "Lkotlin/Function2;", "Lcom/laborbook/expense/model/Transaction;", "", "", "<init>", "(Lcom/laborbook/expense/databinding/ItemExpenseBinding;Lkotlin/jvm/functions/Function2;)V", "bind", "transaction", CommonCssConstants.POSITION, "extractDayNumber", "", "dateStr", "extractDayOfWeek", "dateString", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class ExpenseViewHolder extends RecyclerView.ViewHolder {
        private final ItemExpenseBinding binding;
        private final Function2<Transaction, Integer, Unit> onExpenseClick;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public ExpenseViewHolder(ItemExpenseBinding binding, Function2<? super Transaction, ? super Integer, Unit> onExpenseClick) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            Intrinsics.checkNotNullParameter(onExpenseClick, "onExpenseClick");
            this.binding = binding;
            this.onExpenseClick = onExpenseClick;
        }

        public final void bind(final Transaction transaction, final int position) {
            Intrinsics.checkNotNullParameter(transaction, "transaction");
            this.binding.tvExpenseDate.setText(extractDayNumber(transaction.getDateStr()));
            this.binding.tvExpenseDay.setText(extractDayOfWeek(transaction.getDate()));
            this.binding.tvExpenseReason.setText(transaction.getReason());
            if (Intrinsics.areEqual(transaction.getType(), "DEBIT") && transaction.getAmount() > 0.0d) {
                this.binding.tvCashOutAmount.setText("₹" + transaction.getAmount());
            }
            this.binding.container.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.home.adapter.TransactionListAdapter$ExpenseViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionListAdapter.ExpenseViewHolder.bind$lambda$0(this.f$0, transaction, position, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ExpenseViewHolder this$0, Transaction transaction, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(transaction, "$transaction");
            this$0.onExpenseClick.invoke(transaction, Integer.valueOf(i));
        }

        private final String extractDayNumber(String dateStr) {
            String str = (String) CollectionsKt.firstOrNull(StringsKt.split$default((CharSequence) dateStr, new String[]{StringUtils.SPACE}, false, 0, 6, (Object) null));
            return str == null ? dateStr : str;
        }

        private final String extractDayOfWeek(String dateString) {
            try {
                Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).parse(dateString);
                Calendar calendar = Calendar.getInstance();
                if (date != null) {
                    calendar.setTime(date);
                }
                String displayName = calendar.getDisplayName(7, 1, Locale.getDefault());
                if (displayName == null) {
                    return "";
                }
                String strTake = StringsKt.take(displayName, 3);
                return strTake == null ? "" : strTake;
            } catch (Exception unused) {
                return "";
            }
        }
    }

    /* JADX INFO: compiled from: TransactionListAdapter.kt */
    @Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0010\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter$AdViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/expense/databinding/ItemNativeAdBinding;", "adapter", "Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;", "<init>", "(Lcom/laborbook/expense/databinding/ItemNativeAdBinding;Lcom/laborbook/expense/screen/home/adapter/TransactionListAdapter;)V", "currentNativeAd", "Lcom/google/android/gms/ads/nativead/NativeAd;", "adKey", "", "bind", "", "nativeAd", "key", "unregisterAd", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class AdViewHolder extends RecyclerView.ViewHolder {
        private String adKey;
        private final TransactionListAdapter adapter;
        private final ItemNativeAdBinding binding;
        private NativeAd currentNativeAd;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdViewHolder(ItemNativeAdBinding binding, TransactionListAdapter adapter) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            this.binding = binding;
            this.adapter = adapter;
        }

        public final void bind(NativeAd nativeAd, String key) {
            NativeAdView root = this.binding.getRoot();
            Intrinsics.checkNotNull(root, "null cannot be cast to non-null type com.google.android.gms.ads.nativead.NativeAdView");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (nativeAd == null) {
                this.binding.getRoot().setVisibility(8);
                if (key != null) {
                    this.adapter.recordAdHidden(key, jCurrentTimeMillis);
                    return;
                }
                return;
            }
            this.binding.getRoot().setVisibility(0);
            if (key != null && this.adapter.shouldRefreshAdByViewTime(key, jCurrentTimeMillis) && Intrinsics.areEqual(this.currentNativeAd, nativeAd)) {
                this.adapter.refreshAdByKey(key);
                return;
            }
            if (Intrinsics.areEqual(this.currentNativeAd, nativeAd) && Intrinsics.areEqual(this.adKey, key)) {
                if (key != null) {
                    this.adapter.recordAdVisible(key, jCurrentTimeMillis);
                    return;
                }
                return;
            }
            this.adKey = key;
            this.currentNativeAd = nativeAd;
            if (key != null) {
                this.adapter.recordAdVisible(key, jCurrentTimeMillis);
            }
            root.setMediaView(this.binding.adMedia);
            root.setHeadlineView(this.binding.adHeadline);
            root.setBodyView(this.binding.adBody);
            root.setCallToActionView(this.binding.adCallToAction);
            root.setIconView(this.binding.adIcon);
            String callToAction = nativeAd.getCallToAction();
            if (callToAction != null && callToAction.length() != 0) {
                this.binding.adCallToAction.setText(nativeAd.getCallToAction());
                this.binding.adCallToAction.setVisibility(0);
            } else {
                this.binding.adCallToAction.setVisibility(8);
            }
            String headline = nativeAd.getHeadline();
            if (headline != null && headline.length() != 0) {
                this.binding.adHeadline.setText(nativeAd.getHeadline());
                this.binding.adHeadline.setVisibility(0);
            } else {
                this.binding.adHeadline.setVisibility(8);
            }
            String body = nativeAd.getBody();
            if (body != null && body.length() != 0) {
                this.binding.adBody.setText(nativeAd.getBody());
                this.binding.adBody.setVisibility(0);
            } else {
                this.binding.adBody.setVisibility(8);
            }
            if (nativeAd.getIcon() != null) {
                ImageView imageView = this.binding.adIcon;
                NativeAd.Image icon = nativeAd.getIcon();
                imageView.setImageDrawable(icon != null ? icon.getDrawable() : null);
                this.binding.adIcon.setVisibility(0);
                this.binding.adMedia.setVisibility(8);
            } else if (nativeAd.getMediaContent() != null) {
                this.binding.adIcon.setVisibility(8);
                this.binding.adMedia.setVisibility(0);
            } else {
                this.binding.adIcon.setVisibility(8);
                this.binding.adMedia.setVisibility(8);
            }
            root.setNativeAd(nativeAd);
        }

        public final void unregisterAd() {
            String str = this.adKey;
            if (str != null) {
                this.adapter.recordAdHidden(str, System.currentTimeMillis());
            }
            this.currentNativeAd = null;
            this.adKey = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadNativeAd(int listPosition, final int transactionIndex, Context context) {
        if (this.adUnitId == null) {
            return;
        }
        final String str = transactionIndex + '_' + this.originalTransactions.get(transactionIndex).getId();
        final Transaction transaction = this.originalTransactions.get(transactionIndex);
        AdLoader adLoaderBuild = new AdLoader.Builder(context, this.adUnitId).forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.laborbook.expense.screen.home.adapter.TransactionListAdapter$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
            public final void onNativeAdLoaded(NativeAd nativeAd) {
                TransactionListAdapter.loadNativeAd$lambda$0(this.f$0, str, transactionIndex, transaction, nativeAd);
            }
        }).withAdListener(new AdListener() { // from class: com.laborbook.expense.screen.home.adapter.TransactionListAdapter$loadNativeAd$adLoader$2
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                Intrinsics.checkNotNullParameter(loadAdError, "loadAdError");
                Integer num = (Integer) this.this$0.adRetryCount.get(str);
                int iIntValue = (num != null ? num.intValue() : 0) + 1;
                this.this$0.adRetryCount.put(str, Integer.valueOf(iIntValue));
                if (iIntValue >= 3) {
                    this.this$0.adPositions.remove(str);
                    this.this$0.nativeAds.remove(str);
                    this.this$0.adRetryCount.remove(str);
                    return;
                }
                Boolean.valueOf(this.this$0.adPositions.remove(str));
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(adLoaderBuild, "build(...)");
        adLoaderBuild.loadAd(new AdRequest.Builder().build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadNativeAd$lambda$0(TransactionListAdapter this$0, String adKey, int i, Transaction targetTransaction, NativeAd nativeAd) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adKey, "$adKey");
        Intrinsics.checkNotNullParameter(targetTransaction, "$targetTransaction");
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        BuildersKt__Builders_commonKt.launch$default(this$0.adapterScope, null, null, new TransactionListAdapter$loadNativeAd$adLoader$1$1(this$0, nativeAd, adKey, i, targetTransaction, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertAdIntoList(int transactionIndex, Transaction targetTransaction, NativeAd nativeAd) {
        int i;
        List<TransactionItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        List mutableList = CollectionsKt.toMutableList((Collection) currentList);
        Iterator it = mutableList.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            TransactionItem transactionItem = (TransactionItem) it.next();
            if ((transactionItem instanceof TransactionItem.TransactionItemView) && Intrinsics.areEqual(((TransactionItem.TransactionItemView) transactionItem).getTransaction(), targetTransaction)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1 || (i = i2 + 1) > mutableList.size() || (((TransactionItem) CollectionsKt.getOrNull(mutableList, i)) instanceof TransactionItem.AdItem)) {
            return;
        }
        mutableList.add(i, new TransactionItem.AdItem(i));
        submitList(mutableList);
    }

    private final int findTransactionIndexBeforeAd(int adPosition) {
        List<TransactionItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        if (adPosition > 0 && adPosition <= currentList.size()) {
            for (int i = adPosition - 1; -1 < i; i--) {
                TransactionItem transactionItem = (TransactionItem) CollectionsKt.getOrNull(currentList, i);
                if (transactionItem instanceof TransactionItem.TransactionItemView) {
                    return this.originalTransactions.indexOf(((TransactionItem.TransactionItemView) transactionItem).getTransaction());
                }
            }
        }
        return -1;
    }

    public static /* synthetic */ void submitOriginalList$default(TransactionListAdapter transactionListAdapter, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        transactionListAdapter.submitOriginalList(list, z);
    }

    public final void submitOriginalList(List<Transaction> transactions, boolean forceRefreshAds) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        this.originalTransactions = transactions;
        this.shouldRefreshAds = forceRefreshAds;
        if (forceRefreshAds) {
            Iterator<T> it = this.nativeAds.values().iterator();
            while (it.hasNext()) {
                ((NativeAd) it.next()).destroy();
            }
            this.nativeAds.clear();
            this.adPositions.clear();
            this.adRetryCount.clear();
            this.adViewStartTime.clear();
            this.adLastVisibleTime.clear();
        }
    }

    public final void refreshAds() {
        this.shouldRefreshAds = true;
        List<TransactionItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        submitList(CollectionsKt.toMutableList((Collection) currentList));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void refreshAdByKey(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "adKey"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.util.Map<java.lang.String, com.google.android.gms.ads.nativead.NativeAd> r0 = r8.nativeAds
            java.lang.Object r0 = r0.get(r9)
            com.google.android.gms.ads.nativead.NativeAd r0 = (com.google.android.gms.ads.nativead.NativeAd) r0
            if (r0 == 0) goto L12
            r0.destroy()
        L12:
            java.util.Map<java.lang.String, com.google.android.gms.ads.nativead.NativeAd> r0 = r8.nativeAds
            r0.remove(r9)
            java.util.Set<java.lang.String> r0 = r8.adPositions
            r0.remove(r9)
            java.util.Map<java.lang.String, java.lang.Integer> r0 = r8.adRetryCount
            r0.remove(r9)
            java.util.Map<java.lang.String, java.lang.Long> r0 = r8.adViewStartTime
            r0.remove(r9)
            java.util.Map<java.lang.String, java.lang.Long> r0 = r8.adLastVisibleTime
            r0.remove(r9)
            r1 = r9
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            r9 = 1
            java.lang.String[] r2 = new java.lang.String[r9]
            java.lang.String r0 = "_"
            r7 = 0
            r2[r7] = r0
            r5 = 6
            r6 = 0
            r3 = 0
            r4 = 0
            java.util.List r0 = kotlin.text.StringsKt.split$default(r1, r2, r3, r4, r5, r6)
            int r1 = r0.size()
            r2 = 2
            if (r1 != r2) goto La6
            java.lang.Object r0 = r0.get(r7)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Integer r0 = kotlin.text.StringsKt.toIntOrNull(r0)
            if (r0 == 0) goto La6
            int r1 = r0.intValue()
            java.util.List<com.laborbook.expense.model.Transaction> r2 = r8.originalTransactions
            int r2 = r2.size()
            if (r1 >= r2) goto La6
            java.util.List r1 = r8.getCurrentList()
            java.lang.String r2 = "getCurrentList(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.util.Collection r1 = (java.util.Collection) r1
            java.util.List r1 = kotlin.collections.CollectionsKt.toMutableList(r1)
            java.util.Iterator r2 = r1.iterator()
            r3 = r7
        L71:
            boolean r4 = r2.hasNext()
            r5 = -1
            if (r4 == 0) goto La0
            java.lang.Object r4 = r2.next()
            com.laborbook.expense.model.TransactionItem r4 = (com.laborbook.expense.model.TransactionItem) r4
            boolean r6 = r4 instanceof com.laborbook.expense.model.TransactionItem.TransactionItemView
            if (r6 == 0) goto L99
            java.util.List<com.laborbook.expense.model.Transaction> r6 = r8.originalTransactions
            com.laborbook.expense.model.TransactionItem$TransactionItemView r4 = (com.laborbook.expense.model.TransactionItem.TransactionItemView) r4
            com.laborbook.expense.model.Transaction r4 = r4.getTransaction()
            int r4 = r6.indexOf(r4)
            if (r0 != 0) goto L91
            goto L99
        L91:
            int r6 = r0.intValue()
            if (r4 != r6) goto L99
            r4 = r9
            goto L9a
        L99:
            r4 = r7
        L9a:
            if (r4 == 0) goto L9d
            goto La1
        L9d:
            int r3 = r3 + 1
            goto L71
        La0:
            r3 = r5
        La1:
            if (r3 == r5) goto La6
            r8.submitList(r1)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.expense.screen.home.adapter.TransactionListAdapter.refreshAdByKey(java.lang.String):void");
    }

    public final void recordAdVisible(String adKey, long currentTime) {
        Intrinsics.checkNotNullParameter(adKey, "adKey");
        if (!this.adViewStartTime.containsKey(adKey)) {
            this.adViewStartTime.put(adKey, Long.valueOf(currentTime));
        }
        this.adLastVisibleTime.put(adKey, Long.valueOf(currentTime));
    }

    public final void recordAdHidden(String adKey, long currentTime) {
        Intrinsics.checkNotNullParameter(adKey, "adKey");
        this.adLastVisibleTime.put(adKey, Long.valueOf(currentTime));
    }

    public final boolean shouldRefreshAdByViewTime(String adKey, long currentTime) {
        Intrinsics.checkNotNullParameter(adKey, "adKey");
        Long l = this.adViewStartTime.get(adKey);
        if (l != null) {
            long jLongValue = l.longValue();
            Long l2 = this.adLastVisibleTime.get(adKey);
            long jLongValue2 = l2 != null ? l2.longValue() : jLongValue;
            if (currentTime - jLongValue >= 60000) {
                return true;
            }
            long j = currentTime - jLongValue2;
            if (j >= 30000 && j < 60000) {
                return true;
            }
        }
        return false;
    }

    public final void releaseAds() {
        Iterator<T> it = this.nativeAds.values().iterator();
        while (it.hasNext()) {
            ((NativeAd) it.next()).destroy();
        }
        this.nativeAds.clear();
        this.adPositions.clear();
        this.adRetryCount.clear();
        this.adViewStartTime.clear();
        this.adLastVisibleTime.clear();
    }

    public final void removeAllAds() {
        Iterator<T> it = this.nativeAds.values().iterator();
        while (it.hasNext()) {
            ((NativeAd) it.next()).destroy();
        }
        this.nativeAds.clear();
        this.adPositions.clear();
        this.adRetryCount.clear();
        this.adViewStartTime.clear();
        this.adLastVisibleTime.clear();
        List<TransactionItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : currentList) {
            if (!(((TransactionItem) obj) instanceof TransactionItem.AdItem)) {
                arrayList.add(obj);
            }
        }
        submitList(arrayList);
    }
}
