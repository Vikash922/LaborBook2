package com.laborbook.keep.screen.attendance;

import android.R;
import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.FragmentAttendanceMarkBottomsheetBinding;
import com.laborbook.keep.model.AttendanceItem;
import com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment;
import com.laborbook.keep.screen.calendar.utils.Constants;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: AttendanceMarkBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J&\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J&\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\"2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\b\u0010%\u001a\u00020\u0019H\u0002J\b\u0010&\u001a\u00020\u0019H\u0002J\b\u0010'\u001a\u00020\u0019H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015¨\u0006)"}, m2722d2 = {"Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentAttendanceMarkBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "attendanceStatus", "date", "name", "userId", "hasOvertime", "", "existingOtMinutes", "", "existingOtPerHour", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "Lkotlin/Lazy;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "setViews", "setOnClickListeners", "resetRadioButtonBackgrounds", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AttendanceMarkBottomsheetFragment extends BaseBottomsheetFragment<FragmentAttendanceMarkBottomsheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private double existingOtMinutes;
    private double existingOtPerHour;
    private boolean hasOvertime;

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;
    private String userId;
    private String attendanceStatus = "";
    private String date = "";
    private String name = "";

    @JvmStatic
    public static final AttendanceMarkBottomsheetFragment newInstance(String str, String str2, String str3, String str4, double d, double d2) {
        return INSTANCE.newInstance(str, str2, str3, str4, d, d2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AttendanceMarkBottomsheetFragment() {
        final AttendanceMarkBottomsheetFragment attendanceMarkBottomsheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = attendanceMarkBottomsheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), qualifier, objArr);
            }
        });
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.ATTENDANCE_BS;
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.userId = arguments.getString("user_id");
            this.name = arguments.getString("name");
            this.date = arguments.getString("date");
            this.attendanceStatus = arguments.getString("attendance_status");
            this.existingOtMinutes = arguments.getDouble("ot_minutes", 0.0d);
            double d = arguments.getDouble("ot_per_hour", 0.0d);
            this.existingOtPerHour = d;
            this.hasOvertime = this.existingOtMinutes > 0.0d && d > 0.0d;
        }
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public FragmentAttendanceMarkBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentAttendanceMarkBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentAttendanceMarkBottomsheetBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setOnClickListeners();
        setViews();
    }

    private final void setViews() {
        FragmentAttendanceMarkBottomsheetBinding binding = getBinding();
        if (binding != null) {
            PrimaryButton primaryButton = binding.btnMarkAttendance;
            String str = this.attendanceStatus;
            primaryButton.setEnabled(!(str == null || str.length() == 0));
            TextView btnRemoveAttendance = binding.btnRemoveAttendance;
            Intrinsics.checkNotNullExpressionValue(btnRemoveAttendance, "btnRemoveAttendance");
            TextView textView = btnRemoveAttendance;
            String str2 = this.attendanceStatus;
            textView.setVisibility(str2 == null || str2.length() == 0 ? 8 : 0);
            binding.tvStaffName.setText(this.name);
            TextViewBold14 textViewBold14 = binding.tvDate;
            String str3 = this.date;
            textViewBold14.setText(str3 != null ? BaseExtensionKt.toFormattedDate(str3) : null);
            if (this.hasOvertime) {
                binding.ivOtPill.setImageResource(C3656R.drawable.ic_ot_pill);
            } else {
                binding.ivOtPill.setImageResource(C3656R.drawable.ic_ot_pill_unfilled);
            }
            resetRadioButtonBackgrounds();
            String str4 = this.attendanceStatus;
            if (str4 != null) {
                int iHashCode = str4.hashCode();
                if (iHashCode == 65) {
                    if (str4.equals("A")) {
                        binding.absent.setChecked(true);
                        binding.absent.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg_selected));
                        binding.absent.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                        return;
                    }
                    return;
                }
                if (iHashCode == 72) {
                    if (str4.equals("H")) {
                        binding.halfPresent.setChecked(true);
                        binding.halfPresent.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg_selected));
                        binding.halfPresent.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                        return;
                    }
                    return;
                }
                if (iHashCode == 80) {
                    if (str4.equals("P")) {
                        binding.present.setChecked(true);
                        binding.present.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg_selected));
                        binding.present.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                        return;
                    }
                    return;
                }
                if (iHashCode == 2545) {
                    if (str4.equals(Constants.ATTENDANCE_STATUS_PAID_LEAVE)) {
                        binding.paidLeave.setChecked(true);
                        binding.paidLeave.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg_selected));
                        binding.paidLeave.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                        return;
                    }
                    return;
                }
                if (iHashCode == 78285) {
                    if (str4.equals(Constants.ATTENDANCE_STATUS_ONE_AND_HALF_PRESENT)) {
                        binding.presentHalf.setChecked(true);
                        binding.presentHalf.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg_selected));
                        binding.presentHalf.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                        return;
                    }
                    return;
                }
                if (iHashCode == 78293 && str4.equals(Constants.ATTENDANCE_STATUS_DOUBLE_PRESENT)) {
                    binding.doublePresent.setChecked(true);
                    binding.doublePresent.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg_selected));
                    binding.doublePresent.setTextColor(ContextCompat.getColor(requireContext(), R.color.white));
                }
            }
        }
    }

    private final void setOnClickListeners() {
        final FragmentAttendanceMarkBottomsheetBinding binding = getBinding();
        if (binding != null) {
            binding.btnMarkAttendance.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceMarkBottomsheetFragment.setOnClickListeners$lambda$9$lambda$2(this.f$0, view);
                }
            });
            binding.btnRemoveAttendance.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceMarkBottomsheetFragment.setOnClickListeners$lambda$9$lambda$3(this.f$0, view);
                }
            });
            ImageView imageView = binding.ivClose;
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AttendanceMarkBottomsheetFragment.setOnClickListeners$lambda$9$lambda$4(this.f$0, view);
                    }
                });
            }
            binding.ivOtPill.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AttendanceMarkBottomsheetFragment.setOnClickListeners$lambda$9$lambda$5(this.f$0, view);
                }
            });
            final List<RadioButton> listListOf = CollectionsKt.listOf((Object[]) new RadioButton[]{binding.absent, binding.halfPresent, binding.present, binding.presentHalf, binding.doublePresent, binding.paidLeave});
            for (final RadioButton radioButton : listListOf) {
                radioButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AttendanceMarkBottomsheetFragment.setOnClickListeners$lambda$9$lambda$8$lambda$7(radioButton, this, listListOf, binding, view);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$9$lambda$2(AttendanceMarkBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function1<AttendanceItem, Unit> onDailyAttendanceMarkListener = this$0.getObserverUtil().getOnDailyAttendanceMarkListener();
        if (onDailyAttendanceMarkListener != null) {
            onDailyAttendanceMarkListener.invoke(new AttendanceItem(this$0.date, this$0.attendanceStatus, null, 4, null));
        }
        Pair[] pairArr = new Pair[1];
        String str = this$0.attendanceStatus;
        if (str == null) {
            str = "";
        }
        pairArr[0] = new Pair("status", str);
        this$0.recordClickEvent(ConstantEventNames.MARK_ATTENDANCE_FROM_BS, MapsKt.hashMapOf(pairArr));
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$9$lambda$3(AttendanceMarkBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.attendanceStatus = Constants.ATTENDANCE_STATUS_NULL;
        Function1<AttendanceItem, Unit> onDailyAttendanceMarkListener = this$0.getObserverUtil().getOnDailyAttendanceMarkListener();
        if (onDailyAttendanceMarkListener != null) {
            onDailyAttendanceMarkListener.invoke(new AttendanceItem(this$0.date, this$0.attendanceStatus, null, 4, null));
        }
        Pair[] pairArr = new Pair[1];
        String str = this$0.attendanceStatus;
        if (str == null) {
            str = "";
        }
        pairArr[0] = new Pair("status", str);
        this$0.recordClickEvent(ConstantEventNames.REMOVE_ATTENDANCE_FROM_BS, MapsKt.hashMapOf(pairArr));
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$9$lambda$4(AttendanceMarkBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$9$lambda$5(AttendanceMarkBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.hasOvertime) {
            OvertimeBottomSheetFragment.Companion companion = OvertimeBottomSheetFragment.INSTANCE;
            String str = this$0.userId;
            String str2 = str == null ? "" : str;
            String str3 = this$0.date;
            companion.newInstance(str2, str3 == null ? "" : str3, this$0.existingOtMinutes, this$0.existingOtPerHour).show(this$0.getParentFragmentManager(), OvertimeBottomSheetFragment.TAG);
            return;
        }
        OvertimeBottomSheetFragment.Companion companion2 = OvertimeBottomSheetFragment.INSTANCE;
        String str4 = this$0.userId;
        if (str4 == null) {
            str4 = "";
        }
        String str5 = this$0.date;
        if (str5 == null) {
            str5 = "";
        }
        companion2.newInstance(str4, str5, (12 & 4) != 0 ? 0.0d : 0.0d, (12 & 8) != 0 ? 0.0d : 0.0d).show(this$0.getParentFragmentManager(), OvertimeBottomSheetFragment.TAG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$9$lambda$8$lambda$7(RadioButton radioButton, AttendanceMarkBottomsheetFragment this$0, List radioButtons, FragmentAttendanceMarkBottomsheetBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(radioButton, "$radioButton");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(radioButtons, "$radioButtons");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        String string = radioButton.getTag().toString();
        this$0.resetRadioButtonBackgrounds();
        radioButton.setBackground(ContextCompat.getDrawable(this$0.requireContext(), C3656R.drawable.custom_radio_button_bg_selected));
        radioButton.setTextColor(ContextCompat.getColor(this$0.requireContext(), R.color.white));
        Iterator it = radioButtons.iterator();
        while (it.hasNext()) {
            RadioButton radioButton2 = (RadioButton) it.next();
            if (!Intrinsics.areEqual(radioButton2, radioButton)) {
                radioButton2.setChecked(false);
            }
        }
        radioButton.setChecked(true);
        this$0.attendanceStatus = string;
        PrimaryButton primaryButton = this_apply.btnMarkAttendance;
        String str = this$0.attendanceStatus;
        primaryButton.setEnabled(!(str == null || str.length() == 0));
        TextView btnRemoveAttendance = this_apply.btnRemoveAttendance;
        Intrinsics.checkNotNullExpressionValue(btnRemoveAttendance, "btnRemoveAttendance");
        TextView textView = btnRemoveAttendance;
        String str2 = this$0.attendanceStatus;
        textView.setVisibility(!(str2 == null || str2.length() == 0) ? 0 : 8);
        Pair[] pairArr = new Pair[1];
        String str3 = this$0.attendanceStatus;
        if (str3 == null) {
            str3 = "";
        }
        pairArr[0] = new Pair("status", str3);
        this$0.recordClickEvent(ConstantEventNames.SELECT_ATTENDANCE_FROM_BS, MapsKt.hashMapOf(pairArr));
    }

    private final void resetRadioButtonBackgrounds() {
        FragmentAttendanceMarkBottomsheetBinding binding = getBinding();
        if (binding != null) {
            binding.absent.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg));
            binding.absent.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.custom_radio_text_color));
            binding.halfPresent.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg));
            binding.halfPresent.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.custom_radio_text_color));
            binding.present.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg));
            binding.present.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.custom_radio_text_color));
            binding.presentHalf.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg));
            binding.presentHalf.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.custom_radio_text_color));
            binding.doublePresent.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg));
            binding.doublePresent.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.custom_radio_text_color));
            binding.paidLeave.setBackground(ContextCompat.getDrawable(requireContext(), C3656R.drawable.custom_radio_button_bg));
            binding.paidLeave.setTextColor(ContextCompat.getColor(requireContext(), C3656R.color.custom_radio_text_color));
        }
    }

    /* JADX INFO: compiled from: AttendanceMarkBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J<\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\fH\u0007¨\u0006\u000e"}, m2722d2 = {"Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;", "userId", "", "name", "date", "attendance", "otMinutes", "", "otPerHour", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AttendanceMarkBottomsheetFragment newInstance(String userId, String name, String date, String attendance, double otMinutes, double otPerHour) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(attendance, "attendance");
            AttendanceMarkBottomsheetFragment attendanceMarkBottomsheetFragment = new AttendanceMarkBottomsheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString("user_id", userId);
            bundle.putString("name", name);
            bundle.putString("date", date);
            bundle.putString("attendance_status", attendance);
            bundle.putDouble("ot_minutes", otMinutes);
            bundle.putDouble("ot_per_hour", otPerHour);
            attendanceMarkBottomsheetFragment.setArguments(bundle);
            return attendanceMarkBottomsheetFragment;
        }
    }
}
