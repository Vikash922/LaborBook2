package com.rebuilt.app.keep.screen.home.adapter;

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
import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import com.rebuilt.app.base.BaseExtensionKt;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt;
import com.rebuilt.app.base.navigator.FragmentNavigator;
import com.rebuilt.app.keep.databinding.ItemContactListBinding;
import com.rebuilt.app.keep.databinding.ItemNativeAdBinding;
import com.rebuilt.app.keep.model.StaffUser;
import com.rebuilt.app.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment;
import com.rebuilt.app.keep.screen.home.adapter.StaffListItem;
import com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter;
import com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag;
import java.util.ArrayList;
import java.util.Collection;
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
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
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
import kotlinx.coroutines.flow.FlowKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: StaffUserAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u0000 I2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0004IJKLB+\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\u0018H\u0016J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0018H\u0016J\u0018\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0018H\u0016J\u0010\u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u0003H\u0016J \u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00182\u0006\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00182\u0006\u00107\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u0014H\u0002J\u0010\u00109\u001a\u00020\u00182\u0006\u0010:\u001a\u00020\u0018H\u0002J\u001e\u0010;\u001a\u00020\u00072\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010=\u001a\u00020\u001fJ\u0006\u0010>\u001a\u00020\u0007J\u000e\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\tJ\u0016\u0010A\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u001aJ\u0016\u0010C\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u001aJ\u0016\u0010D\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u001aJ\u000e\u0010E\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\tJ\u0006\u0010G\u001a\u00020\u0007J\u0006\u0010H\u001a\u00020\u0007R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b\"\u0010#R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006M"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lorg/koin/core/component/KoinComponent;", "onNavigate", "Lkotlin/Function0;", "", "adUnitId", "", "onLockedStaffClick", "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "getOnNavigate", "()Lkotlin/jvm/functions/Function0;", "originalList", "", "Lcom/laborbook/keep/model/StaffUser;", "nativeAds", "", "Lcom/google/android/gms/ads/nativead/NativeAd;", "adPositions", "", "adRetryCount", "", "adViewStartTime", "", "adLastVisibleTime", "mainHandler", "Landroid/os/Handler;", "shouldRefreshAds", "", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "Lkotlin/Lazy;", "adapterScope", "Lkotlinx/coroutines/CoroutineScope;", "getItemViewType", CommonCssConstants.POSITION, "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", "onViewRecycled", "loadNativeAd", "listPosition", "originalIndex", "context", "Landroid/content/Context;", "insertAdIntoList", "targetStaff", "nativeAd", "findStaffIndexBeforeAd", "adPosition", "submitOriginalList", "list", "forceRefreshAds", "refreshAds", "refreshAdByKey", "adKey", "recordAdVisible", "currentTime", "recordAdHidden", "shouldRefreshAdByViewTime", SvgConstants.Tags.FILTER, SearchIntents.EXTRA_QUERY, "releaseAds", "removeAllAds", "Companion", "StaffViewHolder", "AdViewHolder", "ItemDiffCallback", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class StaffUserAdapter extends ListAdapter<StaffListItem, RecyclerView.ViewHolder> implements KoinComponent {
    private static final long AD_OFF_SCREEN_REFRESH_MS = 30000;
    private static final long AD_VIEW_TIME_REFRESH_MS = 60000;
    private static final int MAX_RETRY_ATTEMPTS = 3;
    private static final int VIEW_TYPE_AD = 1;
    private static final int VIEW_TYPE_STAFF = 0;
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
    private final Function0<Unit> onLockedStaffClick;
    private final Function0<Unit> onNavigate;
    private List<StaffUser> originalList;
    private boolean shouldRefreshAds;

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public final Function0<Unit> getOnNavigate() {
        return this.onNavigate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public StaffUserAdapter(Function0<Unit> onNavigate, String adUnitId, Function0<Unit> onLockedStaffClick) {
        super(new ItemDiffCallback());
        Intrinsics.checkNotNullParameter(onNavigate, "onNavigate");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(onLockedStaffClick, "onLockedStaffClick");
        this.onNavigate = onNavigate;
        this.adUnitId = adUnitId;
        this.onLockedStaffClick = onLockedStaffClick;
        this.originalList = CollectionsKt.emptyList();
        this.nativeAds = new LinkedHashMap();
        this.adPositions = new LinkedHashSet();
        this.adRetryCount = new LinkedHashMap();
        this.adViewStartTime = new LinkedHashMap();
        this.adLastVisibleTime = new LinkedHashMap();
        this.mainHandler = new Handler(Looper.getMainLooper());
        final StaffUserAdapter staffUserAdapter = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = staffUserAdapter;
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    /* JADX INFO: compiled from: StaffUserAdapter.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J2\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lorg/koin/core/component/KoinComponent;", "binding", "Lcom/laborbook/keep/databinding/ItemContactListBinding;", "<init>", "(Lcom/laborbook/keep/databinding/ItemContactListBinding;)V", "fragmentNavigator", "Lcom/laborbook/base/navigator/FragmentNavigator;", "getFragmentNavigator", "()Lcom/laborbook/base/navigator/FragmentNavigator;", "fragmentNavigator$delegate", "Lkotlin/Lazy;", "bind", "", "staffUser", "Lcom/laborbook/keep/model/StaffUser;", "isLocked", "", "onNavigate", "Lkotlin/Function0;", "onLockedClick", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class StaffViewHolder extends RecyclerView.ViewHolder implements KoinComponent {
        private final ItemContactListBinding binding;

        /* JADX INFO: renamed from: fragmentNavigator$delegate, reason: from kotlin metadata */
        private final Lazy fragmentNavigator;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public StaffViewHolder(ItemContactListBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
            final StaffViewHolder staffViewHolder = this;
            LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
            final Qualifier qualifier = null;
            final Object[] objArr = 0 == true ? 1 : 0;
            this.fragmentNavigator = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<FragmentNavigator>() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v5, types: [com.rebuilt.app.base.navigator.FragmentNavigator, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final FragmentNavigator invoke() {
                    Scope rootScope;
                    KoinComponent koinComponent = staffViewHolder;
                    Qualifier qualifier2 = qualifier;
                    Function0<? extends DefinitionParameters> function0 = objArr;
                    if (koinComponent instanceof KoinScopeComponent) {
                        rootScope = ((KoinScopeComponent) koinComponent).getScope();
                    } else {
                        rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                    }
                    return rootScope.get(Reflection.getOrCreateKotlinClass(FragmentNavigator.class), qualifier2, function0);
                }
            });
        }

        @Override // org.koin.core.component.KoinComponent
        public Koin getKoin() {
            return KoinComponent.DefaultImpls.getKoin(this);
        }

        private final FragmentNavigator getFragmentNavigator() {
            return (FragmentNavigator) this.fragmentNavigator.getValue();
        }

        public final void bind(final StaffUser staffUser, boolean isLocked, final Function0<Unit> onNavigate, final Function0<Unit> onLockedClick) {
            Intrinsics.checkNotNullParameter(staffUser, "staffUser");
            Intrinsics.checkNotNullParameter(onNavigate, "onNavigate");
            Intrinsics.checkNotNullParameter(onLockedClick, "onLockedClick");
            TextViewBold14 tvInitial = this.binding.tvInitial;
            Intrinsics.checkNotNullExpressionValue(tvInitial, "tvInitial");
            BaseExtensionKt.setRandomLightCircleBackground(tvInitial);
            this.binding.tvName.setText(staffUser.getName());
            this.binding.tvNumber.setText(staffUser.getMobileNumber());
            TextViewBold14 textViewBold14 = this.binding.tvInitial;
            String upperCase = String.valueOf(StringsKt.first(staffUser.getName())).toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            textViewBold14.setText(upperCase);
            if (isLocked) {
                this.binding.ivLock.setVisibility(0);
                this.binding.itemRoot.setAlpha(0.5f);
                this.binding.itemRoot.setClickable(true);
                this.binding.itemRoot.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$StaffViewHolder$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        StaffUserAdapter.StaffViewHolder.bind$lambda$0(onLockedClick, view);
                    }
                });
                return;
            }
            this.binding.ivLock.setVisibility(8);
            this.binding.itemRoot.setAlpha(1.0f);
            this.binding.itemRoot.setClickable(true);
            this.binding.itemRoot.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$StaffViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StaffUserAdapter.StaffViewHolder.bind$lambda$1(onNavigate, this, staffUser, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(Function0 onLockedClick, View view) {
            Intrinsics.checkNotNullParameter(onLockedClick, "$onLockedClick");
            onLockedClick.invoke();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$1(Function0 onNavigate, StaffViewHolder this$0, StaffUser staffUser, View view) {
            Intrinsics.checkNotNullParameter(onNavigate, "$onNavigate");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(staffUser, "$staffUser");
            onNavigate.invoke();
            this$0.getFragmentNavigator().start(LaborMonthlyCalendarFragment.INSTANCE.newInstance(staffUser.getId(), staffUser.getMobileNumber()));
        }
    }

    /* JADX INFO: compiled from: StaffUserAdapter.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u0013\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$AdViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemNativeAdBinding;", "adUnitId", "", "adapter", "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;", "<init>", "(Lcom/laborbook/keep/databinding/ItemNativeAdBinding;Ljava/lang/String;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;)V", "currentNativeAd", "Lcom/google/android/gms/ads/nativead/NativeAd;", "adKey", "viewStartTime", "", "bind", "", "nativeAd", "key", "unregisterAd", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class AdViewHolder extends RecyclerView.ViewHolder {
        private String adKey;
        private final String adUnitId;
        private final StaffUserAdapter adapter;
        private final ItemNativeAdBinding binding;
        private NativeAd currentNativeAd;
        private long viewStartTime;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdViewHolder(ItemNativeAdBinding binding, String adUnitId, StaffUserAdapter adapter) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            this.binding = binding;
            this.adUnitId = adUnitId;
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
        StaffListItem item = getItem(position);
        if (item instanceof StaffListItem.StaffItem) {
            return 0;
        }
        if (item instanceof StaffListItem.AdItem) {
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
            return new StaffViewHolder(itemContactListBindingInflate);
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
        StaffListItem item = getItem(position);
        if (item instanceof StaffListItem.StaffItem) {
            StaffListItem.StaffItem staffItem = (StaffListItem.StaffItem) item;
            ((StaffViewHolder) holder).bind(staffItem.getStaffUser(), staffItem.isLocked(), this.onNavigate, this.onLockedStaffClick);
            int iIndexOf = this.originalList.indexOf(staffItem.getStaffUser());
            if (iIndexOf == -1 || (iIndexOf + 1) % 3 != 0) {
                return;
            }
            String str = iIndexOf + '_' + staffItem.getStaffUser().getId();
            if (this.adPositions.contains(str) || this.nativeAds.containsKey(str)) {
                if (this.shouldRefreshAds && this.nativeAds.containsKey(str)) {
                    NativeAd nativeAd = this.nativeAds.get(str);
                    if (nativeAd != null) {
                        nativeAd.destroy();
                    }
                    this.nativeAds.remove(str);
                    this.adPositions.remove(str);
                    this.adRetryCount.remove(str);
                } else {
                    if (this.nativeAds.containsKey(str)) {
                        return;
                    }
                    Integer num = this.adRetryCount.get(str);
                    if ((num != null ? num.intValue() : 0) >= 3) {
                        return;
                    }
                }
            }
            BuildersKt__Builders_commonKt.launch$default(this.adapterScope, null, null, new C37831(str, position, iIndexOf, holder, null), 3, null);
            return;
        }
        if (!(item instanceof StaffListItem.AdItem)) {
            throw new NoWhenBranchMatchedException();
        }
        int iFindStaffIndexBeforeAd = findStaffIndexBeforeAd(position);
        if (iFindStaffIndexBeforeAd != -1) {
            String str2 = iFindStaffIndexBeforeAd + '_' + this.originalList.get(iFindStaffIndexBeforeAd).getId();
            ((AdViewHolder) holder).bind(this.nativeAds.get(str2), str2);
        } else {
            ((AdViewHolder) holder).bind(null, null);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$onBindViewHolder$1 */
    /* JADX INFO: compiled from: StaffUserAdapter.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$onBindViewHolder$1", m2735f = "StaffUserAdapter.kt", m2736i = {}, m2737l = {262}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37831 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $adKey;
        final /* synthetic */ RecyclerView.ViewHolder $holder;
        final /* synthetic */ int $originalIndex;
        final /* synthetic */ int $position;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37831(String str, int i, int i2, RecyclerView.ViewHolder viewHolder, Continuation<? super C37831> continuation) {
            super(2, continuation);
            this.$adKey = str;
            this.$position = i;
            this.$originalIndex = i2;
            this.$holder = viewHolder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffUserAdapter.this.new C37831(this.$adKey, this.$position, this.$originalIndex, this.$holder, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37831) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(StaffUserAdapter.this.getDataStoreManager(), this);
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
                Handler handler = StaffUserAdapter.this.mainHandler;
                final StaffUserAdapter staffUserAdapter = StaffUserAdapter.this;
                final String str = this.$adKey;
                final int i2 = this.$position;
                final int i3 = this.$originalIndex;
                final RecyclerView.ViewHolder viewHolder = this.$holder;
                handler.post(new Runnable() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$onBindViewHolder$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StaffUserAdapter.C37831.invokeSuspend$lambda$0(staffUserAdapter, str, i2, i3, viewHolder);
                    }
                });
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(StaffUserAdapter staffUserAdapter, String str, int i, int i2, RecyclerView.ViewHolder viewHolder) {
            if (!staffUserAdapter.adPositions.contains(str)) {
                staffUserAdapter.adPositions.add(str);
            }
            if (staffUserAdapter.shouldRefreshAds) {
                staffUserAdapter.shouldRefreshAds = false;
            }
            Context context = viewHolder.itemView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            staffUserAdapter.loadNativeAd(i + 1, i2, context);
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
        final String str = originalIndex + '_' + this.originalList.get(originalIndex).getId();
        final StaffUser staffUser = this.originalList.get(originalIndex);
        AdLoader adLoaderBuild = new AdLoader.Builder(context, this.adUnitId).forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
            public final void onNativeAdLoaded(NativeAd nativeAd) {
                StaffUserAdapter.loadNativeAd$lambda$0(this.f$0, str, originalIndex, staffUser, nativeAd);
            }
        }).withAdListener(new AdListener() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$loadNativeAd$adLoader$2
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
    public static final void loadNativeAd$lambda$0(StaffUserAdapter this$0, String adKey, int i, StaffUser targetStaff, NativeAd nativeAd) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adKey, "$adKey");
        Intrinsics.checkNotNullParameter(targetStaff, "$targetStaff");
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        BuildersKt__Builders_commonKt.launch$default(this$0.adapterScope, null, null, new StaffUserAdapter$loadNativeAd$adLoader$1$1(this$0, nativeAd, adKey, i, targetStaff, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertAdIntoList(int originalIndex, StaffUser targetStaff, NativeAd nativeAd) {
        int i;
        String str = originalIndex + '_' + targetStaff.getId();
        if (!Intrinsics.areEqual(this.nativeAds.get(str), nativeAd)) {
            this.nativeAds.put(str, nativeAd);
        }
        List<StaffListItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        List mutableList = CollectionsKt.toMutableList((Collection) currentList);
        Iterator it = mutableList.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            StaffListItem staffListItem = (StaffListItem) it.next();
            if ((staffListItem instanceof StaffListItem.StaffItem) && Intrinsics.areEqual(((StaffListItem.StaffItem) staffListItem).getStaffUser(), targetStaff)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1 || (i = i2 + 1) > mutableList.size() || (((StaffListItem) CollectionsKt.getOrNull(mutableList, i)) instanceof StaffListItem.AdItem)) {
            return;
        }
        mutableList.add(i, new StaffListItem.AdItem(i));
        submitList(mutableList);
    }

    private final int findStaffIndexBeforeAd(int adPosition) {
        List<StaffListItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        if (adPosition > 0 && adPosition <= currentList.size()) {
            for (int i = adPosition - 1; -1 < i; i--) {
                StaffListItem staffListItem = (StaffListItem) CollectionsKt.getOrNull(currentList, i);
                if (staffListItem instanceof StaffListItem.StaffItem) {
                    return this.originalList.indexOf(((StaffListItem.StaffItem) staffListItem).getStaffUser());
                }
            }
        }
        return -1;
    }

    public static /* synthetic */ void submitOriginalList$default(StaffUserAdapter staffUserAdapter, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        staffUserAdapter.submitOriginalList(list, z);
    }

    public final void submitOriginalList(List<StaffUser> list, boolean forceRefreshAds) {
        Intrinsics.checkNotNullParameter(list, "list");
        List<StaffUser> list2 = this.originalList;
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
        BuildersKt__Builders_commonKt.launch$default(this.adapterScope, null, null, new C37842(list, arrayList, list2, null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$submitOriginalList$2 */
    /* JADX INFO: compiled from: StaffUserAdapter.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$submitOriginalList$2", m2735f = "StaffUserAdapter.kt", m2736i = {}, m2737l = {WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37842 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<StaffListItem> $items;
        final /* synthetic */ List<StaffUser> $list;
        final /* synthetic */ List<StaffUser> $previousList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37842(List<StaffUser> list, List<StaffListItem> list2, List<StaffUser> list3, Continuation<? super C37842> continuation) {
            super(2, continuation);
            this.$list = list;
            this.$items = list2;
            this.$previousList = list3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffUserAdapter.this.new C37842(this.$list, this.$items, this.$previousList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37842) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(StaffUserAdapter.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), Boxing.boxBoolean(false)), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            final boolean zBooleanValue = ((Boolean) obj).booleanValue();
            FirebaseRemoteConfig remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
            final boolean zIsSubscriptionsEnabled = SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(remoteConfig);
            final int freeUserMaxStaffCount = SubscriptionsFeatureFlag.INSTANCE.getFreeUserMaxStaffCount(remoteConfig);
            Handler handler = StaffUserAdapter.this.mainHandler;
            final List<StaffUser> list = this.$list;
            final StaffUserAdapter staffUserAdapter = StaffUserAdapter.this;
            final List<StaffListItem> list2 = this.$items;
            final List<StaffUser> list3 = this.$previousList;
            handler.post(new Runnable() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$submitOriginalList$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StaffUserAdapter.C37842.invokeSuspend$lambda$3(list, staffUserAdapter, list2, list3, zIsSubscriptionsEnabled, zBooleanValue, freeUserMaxStaffCount);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$3(List list, StaffUserAdapter staffUserAdapter, List list2, List list3, boolean z, boolean z2, int i) {
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                StaffUser staffUser = (StaffUser) obj;
                list2.add(new StaffListItem.StaffItem(staffUser, z && !z2 && i2 >= i));
                if (i3 % 3 == 0 && i2 < list.size() - 1) {
                    String str = i2 + '_' + staffUser.getId();
                    if (((NativeAd) staffUserAdapter.nativeAds.get(str)) == null) {
                        staffUserAdapter.adPositions.contains(str);
                    } else {
                        list2.add(new StaffListItem.AdItem(list2.size()));
                        if (!staffUserAdapter.adPositions.contains(str)) {
                            staffUserAdapter.adPositions.add(str);
                        }
                    }
                }
                i2 = i3;
            }
            staffUserAdapter.submitList(list2);
            staffUserAdapter.shouldRefreshAds = false;
            if (list3.size() != list.size()) {
                IntRange indices = CollectionsKt.getIndices(list);
                ArrayList arrayList = new ArrayList();
                for (Integer num : indices) {
                    int iIntValue = num.intValue();
                    if ((iIntValue + 1) % 3 == 0 && iIntValue < list.size() - 1) {
                        arrayList.add(num);
                    }
                }
                ArrayList arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    int iIntValue2 = ((Number) it.next()).intValue();
                    arrayList3.add(iIntValue2 + '_' + ((StaffUser) list.get(iIntValue2)).getId());
                }
                Set set = CollectionsKt.toSet(arrayList3);
                staffUserAdapter.adPositions.retainAll(set);
                staffUserAdapter.nativeAds.keySet().retainAll(set);
                staffUserAdapter.adRetryCount.keySet().retainAll(set);
                staffUserAdapter.adViewStartTime.keySet().retainAll(set);
                staffUserAdapter.adLastVisibleTime.keySet().retainAll(set);
            }
        }
    }

    public final void refreshAds() {
        this.shouldRefreshAds = true;
        List<StaffListItem> currentList = getCurrentList();
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
            java.util.List<com.rebuilt.app.keep.model.StaffUser> r2 = r8.originalList
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
            com.rebuilt.app.keep.screen.home.adapter.StaffListItem r4 = (com.rebuilt.app.keep.screen.home.adapter.StaffListItem) r4
            boolean r6 = r4 instanceof com.rebuilt.app.keep.screen.home.adapter.StaffListItem.StaffItem
            if (r6 == 0) goto L99
            java.util.List<com.rebuilt.app.keep.model.StaffUser> r6 = r8.originalList
            com.rebuilt.app.keep.screen.home.adapter.StaffListItem$StaffItem r4 = (com.rebuilt.app.keep.screen.home.adapter.StaffListItem.StaffItem) r4
            com.rebuilt.app.keep.model.StaffUser r4 = r4.getStaffUser()
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
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter.refreshAdByKey(java.lang.String):void");
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
        if (str.length() == 0) {
            arrayList = this.originalList;
        } else {
            List<StaffUser> list = this.originalList;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                StaffUser staffUser = (StaffUser) obj;
                if (StringsKt.contains((CharSequence) staffUser.getName(), (CharSequence) str, true) || StringsKt.contains$default((CharSequence) staffUser.getMobileNumber(), (CharSequence) str, false, 2, (Object) null)) {
                    arrayList2.add(obj);
                }
            }
            arrayList = arrayList2;
        }
        BuildersKt__Builders_commonKt.launch$default(this.adapterScope, null, null, new C37811(arrayList, null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$filter$1 */
    /* JADX INFO: compiled from: StaffUserAdapter.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$filter$1", m2735f = "StaffUserAdapter.kt", m2736i = {}, m2737l = {536}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37811 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<StaffUser> $filteredStaffList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37811(List<StaffUser> list, Continuation<? super C37811> continuation) {
            super(2, continuation);
            this.$filteredStaffList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffUserAdapter.this.new C37811(this.$filteredStaffList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37811) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(StaffUserAdapter.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), Boxing.boxBoolean(false)), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            final boolean zBooleanValue = ((Boolean) obj).booleanValue();
            FirebaseRemoteConfig remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
            final boolean zIsSubscriptionsEnabled = SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(remoteConfig);
            final int freeUserMaxStaffCount = SubscriptionsFeatureFlag.INSTANCE.getFreeUserMaxStaffCount(remoteConfig);
            Handler handler = StaffUserAdapter.this.mainHandler;
            final List<StaffUser> list = this.$filteredStaffList;
            final StaffUserAdapter staffUserAdapter = StaffUserAdapter.this;
            handler.post(new Runnable() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$filter$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StaffUserAdapter.C37811.invokeSuspend$lambda$1(list, staffUserAdapter, zIsSubscriptionsEnabled, zBooleanValue, freeUserMaxStaffCount);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1(List list, StaffUserAdapter staffUserAdapter, boolean z, boolean z2, int i) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                StaffUser staffUser = (StaffUser) obj;
                int iIndexOf = staffUserAdapter.originalList.indexOf(staffUser);
                arrayList.add(new StaffListItem.StaffItem(staffUser, z && !z2 && iIndexOf >= i));
                if (iIndexOf != -1 && (iIndexOf + 1) % 3 == 0 && iIndexOf < staffUserAdapter.originalList.size() - 1) {
                    if (((NativeAd) staffUserAdapter.nativeAds.get(iIndexOf + '_' + staffUser.getId())) != null) {
                        arrayList.add(new StaffListItem.AdItem(arrayList.size()));
                    }
                }
                i2 = i3;
            }
            staffUserAdapter.submitList(arrayList);
        }
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
        List<StaffListItem> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : currentList) {
            if (!(((StaffListItem) obj) instanceof StaffListItem.AdItem)) {
                arrayList.add(obj);
            }
        }
        submitList(arrayList);
    }

    /* JADX INFO: compiled from: StaffUserAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$ItemDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class ItemDiffCallback extends DiffUtil.ItemCallback<StaffListItem> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(StaffListItem oldItem, StaffListItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            if ((oldItem instanceof StaffListItem.StaffItem) && (newItem instanceof StaffListItem.StaffItem)) {
                return Intrinsics.areEqual(((StaffListItem.StaffItem) oldItem).getStaffUser().getMobileNumber(), ((StaffListItem.StaffItem) newItem).getStaffUser().getMobileNumber());
            }
            return (oldItem instanceof StaffListItem.AdItem) && (newItem instanceof StaffListItem.AdItem) && ((StaffListItem.AdItem) oldItem).getAdPosition() == ((StaffListItem.AdItem) newItem).getAdPosition();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(StaffListItem oldItem, StaffListItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
