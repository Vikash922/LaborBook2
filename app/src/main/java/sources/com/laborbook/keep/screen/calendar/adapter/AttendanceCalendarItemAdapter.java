package com.laborbook.keep.screen.calendar.adapter;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.boilerplate.uikit.C1111R;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewHintRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldPrimaryColor14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegularPrimaryColor14;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.base.analytics.Analytics;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.analytics.ConstantEventSources;
import com.laborbook.base.navigator.FragmentNavigator;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.ItemCalendarAttendanceBinding;
import com.laborbook.keep.model.CalendarItem;
import com.laborbook.keep.screen.advance.AdvanceDetailsBottomsheetFragment;
import com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment;
import com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment;
import com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter;
import com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: AttendanceCalendarItemAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0015\u0016B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/laborbook/keep/model/CalendarItem;", "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;", "<init>", "()V", "staffName", "", "staffId", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", CommonCssConstants.POSITION, "setStaffName", "name", "setStaffId", "ItemViewHolder", "ItemDiffCallback", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AttendanceCalendarItemAdapter extends ListAdapter<CalendarItem, ItemViewHolder> {
    private String staffId;
    private String staffName;

    public AttendanceCalendarItemAdapter() {
        super(new ItemDiffCallback());
        this.staffName = "";
        this.staffId = "";
    }

    /* JADX INFO: compiled from: AttendanceCalendarItemAdapter.kt */
    @Metadata(m2721d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u001e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eJ\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lorg/koin/core/component/KoinComponent;", "binding", "Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;", "<init>", "(Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;)V", "fragmentNavigator", "Lcom/laborbook/base/navigator/FragmentNavigator;", "getFragmentNavigator", "()Lcom/laborbook/base/navigator/FragmentNavigator;", "fragmentNavigator$delegate", "Lkotlin/Lazy;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "getAnalytics", "()Lcom/laborbook/base/analytics/Analytics;", "analytics$delegate", "isAttendanceMarked", "", "bind", "", "calendarItem", "Lcom/laborbook/keep/model/CalendarItem;", "iStaffName", "", "iStaffId", "setAdvance", "setAttendance", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class ItemViewHolder extends RecyclerView.ViewHolder implements KoinComponent {

        /* JADX INFO: renamed from: analytics$delegate, reason: from kotlin metadata */
        private final Lazy analytics;
        private final ItemCalendarAttendanceBinding binding;

        /* JADX INFO: renamed from: fragmentNavigator$delegate, reason: from kotlin metadata */
        private final Lazy fragmentNavigator;
        private boolean isAttendanceMarked;

        /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
        private final Lazy observerUtil;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public ItemViewHolder(ItemCalendarAttendanceBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
            final ItemViewHolder itemViewHolder = this;
            LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
            final Qualifier qualifier = null;
            final Object[] objArr = 0 == true ? 1 : 0;
            this.fragmentNavigator = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<FragmentNavigator>() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.navigator.FragmentNavigator, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final FragmentNavigator invoke() {
                    Scope rootScope;
                    KoinComponent koinComponent = itemViewHolder;
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
            LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode2 = KoinPlatformTools.INSTANCE.defaultLazyMode();
            final Object[] objArr2 = 0 == true ? 1 : 0;
            final Object[] objArr3 = 0 == true ? 1 : 0;
            this.observerUtil = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final ObserverUtil invoke() {
                    Scope rootScope;
                    KoinComponent koinComponent = itemViewHolder;
                    Qualifier qualifier2 = objArr2;
                    Function0<? extends DefinitionParameters> function0 = objArr3;
                    if (koinComponent instanceof KoinScopeComponent) {
                        rootScope = ((KoinScopeComponent) koinComponent).getScope();
                    } else {
                        rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                    }
                    return rootScope.get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), qualifier2, function0);
                }
            });
            LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode3 = KoinPlatformTools.INSTANCE.defaultLazyMode();
            final Object[] objArr4 = 0 == true ? 1 : 0;
            final Object[] objArr5 = 0 == true ? 1 : 0;
            this.analytics = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode3, (Function0) new Function0<Analytics>() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.analytics.Analytics, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final Analytics invoke() {
                    Scope rootScope;
                    KoinComponent koinComponent = itemViewHolder;
                    Qualifier qualifier2 = objArr4;
                    Function0<? extends DefinitionParameters> function0 = objArr5;
                    if (koinComponent instanceof KoinScopeComponent) {
                        rootScope = ((KoinScopeComponent) koinComponent).getScope();
                    } else {
                        rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                    }
                    return rootScope.get(Reflection.getOrCreateKotlinClass(Analytics.class), qualifier2, function0);
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

        private final ObserverUtil getObserverUtil() {
            return (ObserverUtil) this.observerUtil.getValue();
        }

        private final Analytics getAnalytics() {
            return (Analytics) this.analytics.getValue();
        }

        public final void bind(final CalendarItem calendarItem, final String iStaffName, final String iStaffId) {
            Intrinsics.checkNotNullParameter(calendarItem, "calendarItem");
            Intrinsics.checkNotNullParameter(iStaffName, "iStaffName");
            Intrinsics.checkNotNullParameter(iStaffId, "iStaffId");
            String str = new SimpleDateFormat("dd", Locale.getDefault()).format(Calendar.getInstance().getTime());
            String strTake = StringsKt.take(calendarItem.getDate(), 2);
            if (Intrinsics.areEqual(str.toString(), strTake)) {
                TextViewBold14 tvDate = this.binding.tvDate;
                Intrinsics.checkNotNullExpressionValue(tvDate, "tvDate");
                ExtentionsKt.hide$default(tvDate, 0L, null, 3, null);
                TextViewBoldPrimaryColor14 tvCurrentDate = this.binding.tvCurrentDate;
                Intrinsics.checkNotNullExpressionValue(tvCurrentDate, "tvCurrentDate");
                ExtentionsKt.show$default(tvCurrentDate, 0L, null, 3, null);
                this.binding.tvCurrentDate.setText(strTake);
                TextViewRegular14 tvDay = this.binding.tvDay;
                Intrinsics.checkNotNullExpressionValue(tvDay, "tvDay");
                ExtentionsKt.hide$default(tvDay, 0L, null, 3, null);
                TextViewRegularPrimaryColor14 tvCurrentDay = this.binding.tvCurrentDay;
                Intrinsics.checkNotNullExpressionValue(tvCurrentDay, "tvCurrentDay");
                ExtentionsKt.show$default(tvCurrentDay, 0L, null, 3, null);
                this.binding.tvCurrentDay.setText(StringsKt.take(calendarItem.getDay(), 3));
            } else {
                TextViewBoldPrimaryColor14 tvCurrentDate2 = this.binding.tvCurrentDate;
                Intrinsics.checkNotNullExpressionValue(tvCurrentDate2, "tvCurrentDate");
                ExtentionsKt.hide$default(tvCurrentDate2, 0L, null, 3, null);
                TextViewBold14 tvDate2 = this.binding.tvDate;
                Intrinsics.checkNotNullExpressionValue(tvDate2, "tvDate");
                ExtentionsKt.show$default(tvDate2, 0L, null, 3, null);
                TextViewRegularPrimaryColor14 tvCurrentDay2 = this.binding.tvCurrentDay;
                Intrinsics.checkNotNullExpressionValue(tvCurrentDay2, "tvCurrentDay");
                ExtentionsKt.hide$default(tvCurrentDay2, 0L, null, 3, null);
                TextViewRegular14 tvDay2 = this.binding.tvDay;
                Intrinsics.checkNotNullExpressionValue(tvDay2, "tvDay");
                ExtentionsKt.show$default(tvDay2, 0L, null, 3, null);
                this.binding.tvDay.setText(StringsKt.take(calendarItem.getDay(), 3));
                this.binding.tvDate.setText(strTake);
            }
            setAdvance(calendarItem);
            setAttendance(calendarItem);
            this.binding.ivMore.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$0(this.f$0, iStaffId, iStaffName, calendarItem, view);
                }
            });
            this.binding.ivAttendanceOne.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$2(this.f$0, calendarItem, iStaffId, iStaffName, view);
                }
            });
            this.binding.ivAttendanceTwo.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$4(calendarItem, this, iStaffId, view);
                }
            });
            this.binding.ivOtPill.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$5(calendarItem, this, iStaffId, view);
                }
            });
            this.binding.tvAddAdvance.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$6(calendarItem, this, iStaffId, iStaffName, view);
                }
            });
            this.binding.ivEdit.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$7(calendarItem, this, iStaffId, iStaffName, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ItemViewHolder this$0, String iStaffId, String iStaffName, CalendarItem calendarItem, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(iStaffId, "$iStaffId");
            Intrinsics.checkNotNullParameter(iStaffName, "$iStaffName");
            Intrinsics.checkNotNullParameter(calendarItem, "$calendarItem");
            FragmentNavigator fragmentNavigator = this$0.getFragmentNavigator();
            AttendanceMarkBottomsheetFragment.Companion companion = AttendanceMarkBottomsheetFragment.INSTANCE;
            String date = calendarItem.getDate();
            String attendanceStatus = calendarItem.getAttendanceStatus();
            if (attendanceStatus == null) {
                attendanceStatus = "";
            }
            String str = attendanceStatus;
            Double otMinutes = calendarItem.getOtMinutes();
            double dDoubleValue = otMinutes != null ? otMinutes.doubleValue() : 0.0d;
            Double otPerHour = calendarItem.getOtPerHour();
            fragmentNavigator.start((BottomSheetDialogFragment) companion.newInstance(iStaffId, iStaffName, date, str, dDoubleValue, otPerHour != null ? otPerHour.doubleValue() : 0.0d));
            this$0.getAnalytics().logEvent(ConstantEventNames.VIEW_MORE_ATTENDANCE_OPTIONS, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), MapsKt.hashMapOf(new Pair("source", ConstantEventSources.MORE)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void bind$lambda$2(com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter.ItemViewHolder r23, com.laborbook.keep.model.CalendarItem r24, java.lang.String r25, java.lang.String r26, android.view.View r27) {
            /*
                Method dump skipped, instruction units count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$2(com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder, com.laborbook.keep.model.CalendarItem, java.lang.String, java.lang.String, android.view.View):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void bind$lambda$4(com.laborbook.keep.model.CalendarItem r24, com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter.ItemViewHolder r25, java.lang.String r26, android.view.View r27) {
            /*
                Method dump skipped, instruction units count: 409
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter.ItemViewHolder.bind$lambda$4(com.laborbook.keep.model.CalendarItem, com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter$ItemViewHolder, java.lang.String, android.view.View):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$5(CalendarItem calendarItem, ItemViewHolder this$0, String iStaffId, View view) {
            Intrinsics.checkNotNullParameter(calendarItem, "$calendarItem");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(iStaffId, "$iStaffId");
            Double otTotalAmount = calendarItem.getOtTotalAmount();
            if ((otTotalAmount != null ? otTotalAmount.doubleValue() : 0.0d) <= 0.0d) {
                Double otMinutes = calendarItem.getOtMinutes();
                if ((otMinutes != null ? otMinutes.doubleValue() : 0.0d) <= 0.0d) {
                    Double otPerHour = calendarItem.getOtPerHour();
                    if ((otPerHour != null ? otPerHour.doubleValue() : 0.0d) <= 0.0d) {
                        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) OvertimeBottomSheetFragment.INSTANCE.newInstance(iStaffId, calendarItem.getDate(), (12 & 4) != 0 ? 0.0d : 0.0d, (12 & 8) != 0 ? 0.0d : 0.0d));
                        this$0.getAnalytics().logEvent(ConstantEventNames.MARK_ATTENDANCE, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), MapsKt.hashMapOf(new Pair("source", ConstantEventSources.OT_BUTTON)));
                        return;
                    }
                }
            }
            FragmentNavigator fragmentNavigator = this$0.getFragmentNavigator();
            OvertimeBottomSheetFragment.Companion companion = OvertimeBottomSheetFragment.INSTANCE;
            String date = calendarItem.getDate();
            Double otMinutes2 = calendarItem.getOtMinutes();
            double dDoubleValue = otMinutes2 != null ? otMinutes2.doubleValue() : 0.0d;
            Double otPerHour2 = calendarItem.getOtPerHour();
            fragmentNavigator.start((BottomSheetDialogFragment) companion.newInstance(iStaffId, date, dDoubleValue, otPerHour2 != null ? otPerHour2.doubleValue() : 0.0d));
            this$0.getAnalytics().logEvent(ConstantEventNames.EDIT_ATTENDANCE, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), MapsKt.hashMapOf(new Pair("source", ConstantEventSources.OT_BUTTON)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$6(CalendarItem calendarItem, ItemViewHolder this$0, String iStaffId, String iStaffName, View view) {
            Intrinsics.checkNotNullParameter(calendarItem, "$calendarItem");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(iStaffId, "$iStaffId");
            Intrinsics.checkNotNullParameter(iStaffName, "$iStaffName");
            String advance = calendarItem.getAdvance();
            boolean z = (advance == null || advance.length() == 0 || Intrinsics.areEqual(calendarItem.getAdvance(), AppEventsConstants.EVENT_PARAM_VALUE_NO)) ? false : true;
            String reason = calendarItem.getReason();
            boolean z2 = reason == null || StringsKt.isBlank(reason);
            if (z || !z2) {
                FragmentNavigator fragmentNavigator = this$0.getFragmentNavigator();
                AdvanceDetailsBottomsheetFragment.Companion companion = AdvanceDetailsBottomsheetFragment.INSTANCE;
                String date = calendarItem.getDate();
                String advance2 = calendarItem.getAdvance();
                if (advance2 == null) {
                    advance2 = "";
                }
                String reason2 = calendarItem.getReason();
                if (reason2 == null) {
                    reason2 = "";
                }
                String attendanceStatus = calendarItem.getAttendanceStatus();
                if (attendanceStatus == null) {
                    attendanceStatus = "";
                }
                Double otMinutes = calendarItem.getOtMinutes();
                double dDoubleValue = otMinutes != null ? otMinutes.doubleValue() : 0.0d;
                Double otPerHour = calendarItem.getOtPerHour();
                double dDoubleValue2 = otPerHour != null ? otPerHour.doubleValue() : 0.0d;
                Double otTotalAmount = calendarItem.getOtTotalAmount();
                fragmentNavigator.start((BottomSheetDialogFragment) companion.newInstance(iStaffId, iStaffName, date, advance2, reason2, attendanceStatus, dDoubleValue, dDoubleValue2, otTotalAmount != null ? otTotalAmount.doubleValue() : 0.0d, calendarItem.getAdvancePaymentMethod()));
            } else {
                FragmentNavigator fragmentNavigator2 = this$0.getFragmentNavigator();
                PayAdvanceBottomsheetFragment.Companion companion2 = PayAdvanceBottomsheetFragment.INSTANCE;
                String date2 = calendarItem.getDate();
                String advance3 = calendarItem.getAdvance();
                if (advance3 == null) {
                    advance3 = "";
                }
                String reason3 = calendarItem.getReason();
                if (reason3 == null) {
                    reason3 = "";
                }
                fragmentNavigator2.start((BottomSheetDialogFragment) companion2.newInstance(iStaffId, iStaffName, date2, advance3, reason3));
            }
            Analytics.logEvent$default(this$0.getAnalytics(), ConstantEventNames.OPEN_ADD_ADVANCE_BS, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), null, 8, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$7(CalendarItem calendarItem, ItemViewHolder this$0, String iStaffId, String iStaffName, View view) {
            Intrinsics.checkNotNullParameter(calendarItem, "$calendarItem");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(iStaffId, "$iStaffId");
            Intrinsics.checkNotNullParameter(iStaffName, "$iStaffName");
            String advance = calendarItem.getAdvance();
            boolean z = (advance == null || advance.length() == 0 || Intrinsics.areEqual(calendarItem.getAdvance(), AppEventsConstants.EVENT_PARAM_VALUE_NO)) ? false : true;
            String reason = calendarItem.getReason();
            boolean z2 = reason == null || StringsKt.isBlank(reason);
            if (z || !z2) {
                FragmentNavigator fragmentNavigator = this$0.getFragmentNavigator();
                AdvanceDetailsBottomsheetFragment.Companion companion = AdvanceDetailsBottomsheetFragment.INSTANCE;
                String date = calendarItem.getDate();
                String advance2 = calendarItem.getAdvance();
                if (advance2 == null) {
                    advance2 = "";
                }
                String reason2 = calendarItem.getReason();
                if (reason2 == null) {
                    reason2 = "";
                }
                String attendanceStatus = calendarItem.getAttendanceStatus();
                if (attendanceStatus == null) {
                    attendanceStatus = "";
                }
                Double otMinutes = calendarItem.getOtMinutes();
                double dDoubleValue = otMinutes != null ? otMinutes.doubleValue() : 0.0d;
                Double otPerHour = calendarItem.getOtPerHour();
                double dDoubleValue2 = otPerHour != null ? otPerHour.doubleValue() : 0.0d;
                Double otTotalAmount = calendarItem.getOtTotalAmount();
                fragmentNavigator.start((BottomSheetDialogFragment) companion.newInstance(iStaffId, iStaffName, date, advance2, reason2, attendanceStatus, dDoubleValue, dDoubleValue2, otTotalAmount != null ? otTotalAmount.doubleValue() : 0.0d, calendarItem.getAdvancePaymentMethod()));
            } else {
                FragmentNavigator fragmentNavigator2 = this$0.getFragmentNavigator();
                PayAdvanceBottomsheetFragment.Companion companion2 = PayAdvanceBottomsheetFragment.INSTANCE;
                String date2 = calendarItem.getDate();
                String advance3 = calendarItem.getAdvance();
                if (advance3 == null) {
                    advance3 = "";
                }
                String reason3 = calendarItem.getReason();
                if (reason3 == null) {
                    reason3 = "";
                }
                fragmentNavigator2.start((BottomSheetDialogFragment) companion2.newInstance(iStaffId, iStaffName, date2, advance3, reason3));
            }
            Analytics.logEvent$default(this$0.getAnalytics(), ConstantEventNames.OPEN_ADD_ADVANCE_BS, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), null, 8, null);
        }

        private final void setAdvance(CalendarItem calendarItem) {
            String advance = calendarItem.getAdvance();
            boolean z = (advance == null || advance.length() == 0 || Intrinsics.areEqual(calendarItem.getAdvance(), AppEventsConstants.EVENT_PARAM_VALUE_NO)) ? false : true;
            String reason = calendarItem.getReason();
            boolean z2 = reason == null || StringsKt.isBlank(reason);
            this.binding.tvAddAdvance.setMaxLines(1);
            this.binding.tvAddAdvance.setEllipsize(TextUtils.TruncateAt.END);
            if (z) {
                this.binding.tvAddAdvance.setTextColor(this.binding.tvAddAdvance.getContext().getResources().getColor(C1111R.color.absent));
                this.binding.tvAddAdvance.setText(this.binding.tvAddAdvance.getContext().getString(C3656R.string.rupee) + ' ' + calendarItem.getAdvance());
                return;
            }
            if (!z2) {
                this.binding.tvAddAdvance.setTextColor(this.binding.tvAddAdvance.getContext().getResources().getColor(C1111R.color.absent));
                TextViewHintRegular12 textViewHintRegular12 = this.binding.tvAddAdvance;
                String reason2 = calendarItem.getReason();
                String string = reason2 != null ? StringsKt.trim((CharSequence) reason2).toString() : null;
                if (string == null) {
                    string = "";
                }
                textViewHintRegular12.setText(string);
                return;
            }
            this.binding.tvAddAdvance.setTextColor(this.binding.tvAddAdvance.getContext().getResources().getColor(C1111R.color.hint_text_color));
            this.binding.tvAddAdvance.setText(this.binding.tvAddAdvance.getContext().getString(C3656R.string.add_advance));
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0037  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void setAttendance(com.laborbook.keep.model.CalendarItem r15) {
            /*
                Method dump skipped, instruction units count: 1303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter.ItemViewHolder.setAttendance(com.laborbook.keep.model.CalendarItem):void");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ItemViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemCalendarAttendanceBinding itemCalendarAttendanceBindingInflate = ItemCalendarAttendanceBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(itemCalendarAttendanceBindingInflate, "inflate(...)");
        return new ItemViewHolder(itemCalendarAttendanceBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ItemViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        CalendarItem item = getItem(position);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        holder.bind(item, this.staffName, this.staffId);
    }

    public final void setStaffName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.staffName = name;
    }

    public final void setStaffId(String staffId) {
        Intrinsics.checkNotNullParameter(staffId, "staffId");
        this.staffId = staffId;
    }

    /* JADX INFO: compiled from: AttendanceCalendarItemAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/laborbook/keep/model/CalendarItem;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class ItemDiffCallback extends DiffUtil.ItemCallback<CalendarItem> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(CalendarItem oldItem, CalendarItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getDate(), newItem.getDate());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(CalendarItem oldItem, CalendarItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getAttendanceStatus(), newItem.getAttendanceStatus()) && Intrinsics.areEqual(oldItem.getAdvance(), newItem.getAdvance()) && Intrinsics.areEqual(oldItem.getReason(), newItem.getReason()) && Intrinsics.areEqual(oldItem.getOtTotalAmount(), newItem.getOtTotalAmount()) && Intrinsics.areEqual(oldItem.getAdvancePaymentMethod(), newItem.getAdvancePaymentMethod());
        }
    }
}
