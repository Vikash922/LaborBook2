package com.laborbook.keep.screen.addstaff.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.datastore.DataStoreManagerExtensionsKt;
import com.laborbook.keep.databinding.ItemContactListBinding;
import com.laborbook.keep.databinding.ItemNativeAdBinding;
import com.laborbook.keep.model.Staff;
import com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter;
import com.laborbook.keep.screen.addstaff.adapter.ContactListItem;
import com.laborbook.keep.screen.addstaff.model.ContactItem;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntRange;
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

/* JADX INFO: compiled from: ContactItemAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u0000 I2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0004IJKLB\u0013\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u001fH\u0016J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u001fH\u0016J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u001fH\u0016J\u0010\u00100\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0003H\u0016J \u00101\u001a\u00020.2\u0006\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020.2\u0006\u00103\u001a\u00020\u001f2\u0006\u00107\u001a\u00020\u00182\u0006\u00108\u001a\u00020\u001bH\u0002J\u0010\u00109\u001a\u00020\u001f2\u0006\u0010:\u001a\u00020\u001fH\u0002J\u001e\u0010;\u001a\u00020.2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\b\b\u0002\u0010=\u001a\u00020&J\u0006\u0010>\u001a\u00020.J\u000e\u0010?\u001a\u00020.2\u0006\u0010@\u001a\u00020\u0006J\u0016\u0010A\u001a\u00020.2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010B\u001a\u00020!J\u0016\u0010C\u001a\u00020.2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010B\u001a\u00020!J\u0016\u0010D\u001a\u00020&2\u0006\u0010@\u001a\u00020\u00062\u0006\u0010B\u001a\u00020!J\u000e\u0010E\u001a\u00020.2\u0006\u0010F\u001a\u00020\u0006J\u0006\u0010G\u001a\u00020.J\u0006\u0010H\u001a\u00020.R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001f0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020!0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020!0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006M"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lorg/koin/core/component/KoinComponent;", "adUnitId", "", "<init>", "(Ljava/lang/String;)V", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "Lkotlin/Lazy;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "adapterScope", "Lkotlinx/coroutines/CoroutineScope;", "originalList", "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "nativeAds", "", "Lcom/google/android/gms/ads/nativead/NativeAd;", "adPositions", "", "adRetryCount", "", "adViewStartTime", "", "adLastVisibleTime", "mainHandler", "Landroid/os/Handler;", "shouldRefreshAds", "", "getItemViewType", CommonCssConstants.POSITION, "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "", "holder", "onViewRecycled", "loadNativeAd", "listPosition", "originalIndex", "context", "Landroid/content/Context;", "insertAdIntoList", "targetContact", "nativeAd", "findContactIndexBeforeAd", "adPosition", "submitOriginalList", "list", "forceRefreshAds", "refreshAds", "refreshAdByKey", "adKey", "recordAdVisible", "currentTime", "recordAdHidden", "shouldRefreshAdByViewTime", SvgConstants.Tags.FILTER, SearchIntents.EXTRA_QUERY, "releaseAds", "removeAllAds", "Companion", "ContactViewHolder", "AdViewHolder", "ItemDiffCallback", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ContactItemAdapter extends ListAdapter<ContactListItem, RecyclerView.ViewHolder> implements KoinComponent {
    private static final long AD_OFF_SCREEN_REFRESH_MS = 30000;
    private static final long AD_VIEW_TIME_REFRESH_MS = 60000;
    private static final int MAX_RETRY_ATTEMPTS = 3;
    private static final int VIEW_TYPE_AD = 1;
    private static final int VIEW_TYPE_CONTACT = 0;
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

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;
    private List<ContactItem> originalList;
    private boolean shouldRefreshAds;

    /* JADX WARN: Multi-variable type inference failed */
    public ContactItemAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ContactItemAdapter(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContactItemAdapter(String str) {
        super(new ItemDiffCallback());
        this.adUnitId = str;
        final ContactItemAdapter contactItemAdapter = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                Scope rootScope;
                KoinComponent koinComponent = contactItemAdapter;
                Qualifier qualifier2 = qualifier;
                Function0<? extends DefinitionParameters> function0 = objArr;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), qualifier2, function0);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode2 = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode2, (Function0) new Function0<DataStoreManager>() { // from class: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = contactItemAdapter;
                Qualifier qualifier2 = objArr2;
                Function0<? extends DefinitionParameters> function0 = objArr3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), qualifier2, function0);
            }
        });
        this.adapterScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getIO()));
        this.originalList = CollectionsKt.emptyList();
        this.nativeAds = new LinkedHashMap();
        this.adPositions = new LinkedHashSet();
        this.adRetryCount = new LinkedHashMap();
        this.adViewStartTime = new LinkedHashMap();
        this.adLastVisibleTime = new LinkedHashMap();
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    /* JADX INFO: compiled from: ContactItemAdapter.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ContactViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lorg/koin/core/component/KoinComponent;", "binding", "Lcom/laborbook/keep/databinding/ItemContactListBinding;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "<init>", "(Lcom/laborbook/keep/databinding/ItemContactListBinding;Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;)V", "bind", "", "contactItem", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class ContactViewHolder extends RecyclerView.ViewHolder implements KoinComponent {
        private final ItemContactListBinding binding;
        private final ObserverUtil observerUtil;

        @Override // org.koin.core.component.KoinComponent
        public Koin getKoin() {
            return KoinComponent.DefaultImpls.getKoin(this);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContactViewHolder(ItemContactListBinding binding, ObserverUtil observerUtil) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            Intrinsics.checkNotNullParameter(observerUtil, "observerUtil");
            this.binding = binding;
            this.observerUtil = observerUtil;
        }

        public final void bind(final ContactItem contactItem) {
            Intrinsics.checkNotNullParameter(contactItem, "contactItem");
            TextViewBold14 tvInitial = this.binding.tvInitial;
            Intrinsics.checkNotNullExpressionValue(tvInitial, "tvInitial");
            BaseExtensionKt.setRandomLightCircleBackground(tvInitial);
            this.binding.tvName.setText(contactItem.getName());
            this.binding.tvNumber.setText(contactItem.getMobileNumber());
            this.binding.tvInitial.setText(String.valueOf(StringsKt.first(contactItem.getName())));
            this.binding.itemRoot.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$ContactViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ContactItemAdapter.ContactViewHolder.bind$lambda$0(this.f$0, contactItem, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ContactViewHolder this$0, ContactItem contactItem, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(contactItem, "$contactItem");
            Function1<Staff, Unit> onStaffUserAddedListener = this$0.observerUtil.getOnStaffUserAddedListener();
            if (onStaffUserAddedListener != null) {
                onStaffUserAddedListener.invoke(new Staff(contactItem.getName(), contactItem.getMobileNumber(), null, 4, null));
            }
        }
    }

    /* JADX INFO: compiled from: ContactItemAdapter.kt */
    @Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u0013\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$AdViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemNativeAdBinding;", "adUnitId", "", "adapter", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;", "<init>", "(Lcom/laborbook/keep/databinding/ItemNativeAdBinding;Ljava/lang/String;Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;)V", "currentNativeAd", "Lcom/google/android/gms/ads/nativead/NativeAd;", "adKey", "viewStartTime", "", "bind", "", "nativeAd", "key", "unregisterAd", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class AdViewHolder extends RecyclerView.ViewHolder {
        private String adKey;
        private final String adUnitId;
        private final ContactItemAdapter adapter;
        private final ItemNativeAdBinding binding;
        private NativeAd currentNativeAd;
        private long viewStartTime;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdViewHolder(ItemNativeAdBinding binding, String str, ContactItemAdapter adapter) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            this.binding = binding;
            this.adUnitId = str;
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
            this.viewStartTime = jCurrentTimeMillis;
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

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        ContactListItem item = getItem(position);
        if (item instanceof ContactListItem.ContactItemView) {
            return 0;
        }
        if (item instanceof ContactListItem.AdItem) {
            return 1;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 0) {
            ItemContactListBinding itemContactListBindingInflate = ItemContactListBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(itemContactListBindingInflate, "inflate(...)");
            return new ContactViewHolder(itemContactListBindingInflate, getObserverUtil());
        }
        if (viewType == 1) {
            ItemNativeAdBinding itemNativeAdBindingInflate = ItemNativeAdBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(itemNativeAdBindingInflate, "inflate(...)");
            return new AdViewHolder(itemNativeAdBindingInflate, this.adUnitId, this);
        }
        throw new IllegalArgumentException("Unknown view type: " + viewType);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ContactListItem item = getItem(position);
        if (item instanceof ContactListItem.ContactItemView) {
            ContactListItem.ContactItemView contactItemView = (ContactListItem.ContactItemView) item;
            ((ContactViewHolder) holder).bind(contactItemView.getContactItem());
            int iIndexOf = this.originalList.indexOf(contactItemView.getContactItem());
            if (iIndexOf == -1 || (iIndexOf + 1) % 3 != 0) {
                return;
            }
            String string = new StringBuilder().append(iIndexOf).append('_').append(contactItemView.getContactItem().getId()).toString();
            if (this.adPositions.contains(string) || this.nativeAds.containsKey(string)) {
                if (this.shouldRefreshAds && this.nativeAds.containsKey(string)) {
                    NativeAd nativeAd = this.nativeAds.get(string);
                    if (nativeAd != null) {
                        nativeAd.destroy();
                    }
                    this.nativeAds.remove(string);
                    this.adPositions.remove(string);
                    this.adRetryCount.remove(string);
                } else {
                    if (this.nativeAds.containsKey(string)) {
                        return;
                    }
                    Integer num = this.adRetryCount.get(string);
                    if ((num != null ? num.intValue() : 0) >= 3) {
                        return;
                    }
                }
            }
            if (this.adUnitId != null) {
                BuildersKt__Builders_commonKt.launch$default(this.adapterScope, null, null, new C37051(string, position, iIndexOf, holder, null), 3, null);
                return;
            }
            return;
        }
        if (!(item instanceof ContactListItem.AdItem)) {
            throw new NoWhenBranchMatchedException();
        }
        int iFindContactIndexBeforeAd = findContactIndexBeforeAd(position);
        if (iFindContactIndexBeforeAd != -1) {
            String string2 = new StringBuilder().append(iFindContactIndexBeforeAd).append('_').append(this.originalList.get(iFindContactIndexBeforeAd).getId()).toString();
            ((AdViewHolder) holder).bind(this.nativeAds.get(string2), string2);
        } else {
            ((AdViewHolder) holder).bind(null, null);
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$onBindViewHolder$1 */
    /* JADX INFO: compiled from: ContactItemAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$onBindViewHolder$1", m2735f = "ContactItemAdapter.kt", m2736i = {}, m2737l = {232}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $adKey;
        final /* synthetic */ RecyclerView.ViewHolder $holder;
        final /* synthetic */ int $originalIndex;
        final /* synthetic */ int $position;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37051(String str, int i, int i2, RecyclerView.ViewHolder viewHolder, Continuation<? super C37051> continuation) {
            super(2, continuation);
            this.$adKey = str;
            this.$position = i;
            this.$originalIndex = i2;
            this.$holder = viewHolder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ContactItemAdapter.this.new C37051(this.$adKey, this.$position, this.$originalIndex, this.$holder, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37051) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(ContactItemAdapter.this.getDataStoreManager(), this);
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
                Handler handler = ContactItemAdapter.this.mainHandler;
                final ContactItemAdapter contactItemAdapter = ContactItemAdapter.this;
                final String str = this.$adKey;
                final int i2 = this.$position;
                final int i3 = this.$originalIndex;
                final RecyclerView.ViewHolder viewHolder = this.$holder;
                handler.post(new Runnable() { // from class: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$onBindViewHolder$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactItemAdapter.C37051.invokeSuspend$lambda$0(contactItemAdapter, str, i2, i3, viewHolder);
                    }
                });
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(ContactItemAdapter contactItemAdapter, String str, int i, int i2, RecyclerView.ViewHolder viewHolder) {
            if (!contactItemAdapter.adPositions.contains(str)) {
                contactItemAdapter.adPositions.add(str);
            }
            if (contactItemAdapter.shouldRefreshAds) {
                contactItemAdapter.shouldRefreshAds = false;
            }
            Context context = viewHolder.itemView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            contactItemAdapter.loadNativeAd(i + 1, i2, context);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadNativeAd(int listPosition, final int originalIndex, Context context) {
        if (this.adUnitId == null) {
            return;
        }
        final String string = new StringBuilder().append(originalIndex).append('_').append(this.originalList.get(originalIndex).getId()).toString();
        final ContactItem contactItem = this.originalList.get(originalIndex);
        AdLoader adLoaderBuild = new AdLoader.Builder(context, this.adUnitId).forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
            public final void onNativeAdLoaded(NativeAd nativeAd) {
                ContactItemAdapter.loadNativeAd$lambda$0(this.f$0, string, originalIndex, contactItem, nativeAd);
            }
        }).withAdListener(new AdListener() { // from class: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$loadNativeAd$adLoader$2
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(LoadAdError loadAdError) {
                Intrinsics.checkNotNullParameter(loadAdError, "loadAdError");
                Integer num = (Integer) this.this$0.adRetryCount.get(string);
                int iIntValue = (num != null ? num.intValue() : 0) + 1;
                this.this$0.adRetryCount.put(string, Integer.valueOf(iIntValue));
                if (iIntValue >= 3) {
                    this.this$0.adPositions.remove(string);
                    this.this$0.nativeAds.remove(string);
                    this.this$0.adRetryCount.remove(string);
                    return;
                }
                Boolean.valueOf(this.this$0.adPositions.remove(string));
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(adLoaderBuild, "build(...)");
        adLoaderBuild.loadAd(new AdRequest.Builder().build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadNativeAd$lambda$0(ContactItemAdapter this$0, String adKey, int i, ContactItem targetContact, NativeAd nativeAd) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adKey, "$adKey");
        Intrinsics.checkNotNullParameter(targetContact, "$targetContact");
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        BuildersKt__Builders_commonKt.launch$default(this$0.adapterScope, null, null, new ContactItemAdapter$loadNativeAd$adLoader$1$1(this$0, nativeAd, adKey, i, targetContact, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertAdIntoList(int originalIndex, ContactItem targetContact, NativeAd nativeAd) {
        int i;
        String string = new StringBuilder().append(originalIndex).append('_').append(targetContact.getId()).toString();
        if (!Intrinsics.areEqual(this.nativeAds.get(string), nativeAd)) {
            this.nativeAds.put(string, nativeAd);
        }
        List<ContactListItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        List mutableList = CollectionsKt.toMutableList((Collection) currentList);
        Iterator it = mutableList.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            ContactListItem contactListItem = (ContactListItem) it.next();
            if ((contactListItem instanceof ContactListItem.ContactItemView) && Intrinsics.areEqual(((ContactListItem.ContactItemView) contactListItem).getContactItem(), targetContact)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1 || (i = i2 + 1) > mutableList.size() || (((ContactListItem) CollectionsKt.getOrNull(mutableList, i)) instanceof ContactListItem.AdItem)) {
            return;
        }
        mutableList.add(i, new ContactListItem.AdItem(i));
        submitList(mutableList);
    }

    private final int findContactIndexBeforeAd(int adPosition) {
        List<ContactListItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        if (adPosition > 0 && adPosition <= currentList.size()) {
            for (int i = adPosition - 1; -1 < i; i--) {
                ContactListItem contactListItem = (ContactListItem) CollectionsKt.getOrNull(currentList, i);
                if (contactListItem instanceof ContactListItem.ContactItemView) {
                    return this.originalList.indexOf(((ContactListItem.ContactItemView) contactListItem).getContactItem());
                }
            }
        }
        return -1;
    }

    public static /* synthetic */ void submitOriginalList$default(ContactItemAdapter contactItemAdapter, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        contactItemAdapter.submitOriginalList(list, z);
    }

    public final void submitOriginalList(List<ContactItem> list, boolean forceRefreshAds) {
        Intrinsics.checkNotNullParameter(list, "list");
        List<ContactItem> list2 = this.originalList;
        this.originalList = list;
        this.shouldRefreshAds = forceRefreshAds;
        ArrayList arrayList = new ArrayList();
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
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            ContactItem contactItem = (ContactItem) obj;
            arrayList.add(new ContactListItem.ContactItemView(contactItem));
            if (i2 % 3 == 0 && i < list.size() - 1) {
                String string = new StringBuilder().append(i).append('_').append(contactItem.getId()).toString();
                if (this.nativeAds.get(string) != null) {
                    arrayList.add(new ContactListItem.AdItem(arrayList.size()));
                    if (!this.adPositions.contains(string)) {
                        this.adPositions.add(string);
                    }
                } else {
                    this.adPositions.contains(string);
                }
            }
            i = i2;
        }
        submitList(arrayList);
        this.shouldRefreshAds = false;
        if (list2.size() != list.size()) {
            IntRange indices = CollectionsKt.getIndices(list);
            ArrayList arrayList2 = new ArrayList();
            for (Integer num : indices) {
                int iIntValue = num.intValue();
                if ((iIntValue + 1) % 3 == 0 && iIntValue < list.size() - 1) {
                    arrayList2.add(num);
                }
            }
            ArrayList arrayList3 = arrayList2;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                int iIntValue2 = ((Number) it2.next()).intValue();
                arrayList4.add(new StringBuilder().append(iIntValue2).append('_').append(list.get(iIntValue2).getId()).toString());
            }
            Set set = CollectionsKt.toSet(arrayList4);
            this.adPositions.retainAll(set);
            this.nativeAds.keySet().retainAll(set);
            this.adRetryCount.keySet().retainAll(set);
            this.adViewStartTime.keySet().retainAll(set);
            this.adLastVisibleTime.keySet().retainAll(set);
        }
    }

    public final void refreshAds() {
        this.shouldRefreshAds = true;
        List<ContactListItem> currentList = getCurrentList();
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
            java.util.List<com.laborbook.keep.screen.addstaff.model.ContactItem> r2 = r8.originalList
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
            com.laborbook.keep.screen.addstaff.adapter.ContactListItem r4 = (com.laborbook.keep.screen.addstaff.adapter.ContactListItem) r4
            boolean r6 = r4 instanceof com.laborbook.keep.screen.addstaff.adapter.ContactListItem.ContactItemView
            if (r6 == 0) goto L99
            java.util.List<com.laborbook.keep.screen.addstaff.model.ContactItem> r6 = r8.originalList
            com.laborbook.keep.screen.addstaff.adapter.ContactListItem$ContactItemView r4 = (com.laborbook.keep.screen.addstaff.adapter.ContactListItem.ContactItemView) r4
            com.laborbook.keep.screen.addstaff.model.ContactItem r4 = r4.getContactItem()
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
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter.refreshAdByKey(java.lang.String):void");
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

    public final void filter(String query) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(query, "query");
        String str = query;
        int i = 0;
        if (str.length() == 0) {
            arrayList = this.originalList;
        } else {
            List<ContactItem> list = this.originalList;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                ContactItem contactItem = (ContactItem) obj;
                if (StringsKt.contains((CharSequence) contactItem.getName(), (CharSequence) str, true) || StringsKt.contains$default((CharSequence) contactItem.getMobileNumber(), (CharSequence) str, false, 2, (Object) null)) {
                    arrayList2.add(obj);
                }
            }
            arrayList = arrayList2;
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            ContactItem contactItem2 = (ContactItem) obj2;
            arrayList3.add(new ContactListItem.ContactItemView(contactItem2));
            int iIndexOf = this.originalList.indexOf(contactItem2);
            if (iIndexOf != -1 && (iIndexOf + 1) % 3 == 0 && iIndexOf < this.originalList.size() - 1) {
                if (this.nativeAds.get(new StringBuilder().append(iIndexOf).append('_').append(contactItem2.getId()).toString()) != null) {
                    arrayList3.add(new ContactListItem.AdItem(arrayList3.size()));
                }
            }
            i = i2;
        }
        submitList(arrayList3);
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
        List<ContactListItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : currentList) {
            if (!(((ContactListItem) obj) instanceof ContactListItem.AdItem)) {
                arrayList.add(obj);
            }
        }
        submitList(arrayList);
    }

    /* JADX INFO: compiled from: ContactItemAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter$ItemDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class ItemDiffCallback extends DiffUtil.ItemCallback<ContactListItem> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(ContactListItem oldItem, ContactListItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            if ((oldItem instanceof ContactListItem.ContactItemView) && (newItem instanceof ContactListItem.ContactItemView)) {
                return Intrinsics.areEqual(((ContactListItem.ContactItemView) oldItem).getContactItem().getMobileNumber(), ((ContactListItem.ContactItemView) newItem).getContactItem().getMobileNumber());
            }
            return (oldItem instanceof ContactListItem.AdItem) && (newItem instanceof ContactListItem.AdItem) && ((ContactListItem.AdItem) oldItem).getAdPosition() == ((ContactListItem.AdItem) newItem).getAdPosition();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(ContactListItem oldItem, ContactListItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
