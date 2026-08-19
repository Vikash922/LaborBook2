package com.laborbook.keep.screen.calendar.utils;

import com.laborbook.keep.model.AttendanceItem;
import com.laborbook.keep.model.Staff;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: compiled from: ObserverUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR(\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR(\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\t\"\u0004\b\u0013\u0010\u000bR(\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bRv\u0010\u0017\u001a^\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001e\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R7\u0010%\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\t\"\u0004\b(\u0010\u000bR7\u0010)\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(*\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR7\u0010-\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\t\"\u0004\b/\u0010\u000b¨\u00060"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "", "<init>", "()V", "onDailyAttendanceMarkListener", "Lkotlin/Function1;", "Lcom/laborbook/keep/model/AttendanceItem;", "", "getOnDailyAttendanceMarkListener", "()Lkotlin/jvm/functions/Function1;", "setOnDailyAttendanceMarkListener", "(Lkotlin/jvm/functions/Function1;)V", "onStaffUserAddedListener", "Lcom/laborbook/keep/model/Staff;", "getOnStaffUserAddedListener", "setOnStaffUserAddedListener", "addedStaff", "", "getAddedStaff", "setAddedStaff", "refreshStaffs", "getRefreshStaffs", "setRefreshStaffs", "refreshCalendar", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "shouldRefresh", "isAdvanceTransactionSuccess", "", "advance", "", "accessedDate", "getRefreshCalendar", "()Lkotlin/jvm/functions/Function4;", "setRefreshCalendar", "(Lkotlin/jvm/functions/Function4;)V", "goBackFromCalendar", "shouldGoBack", "getGoBackFromCalendar", "setGoBackFromCalendar", "clearSearchText", "shouldClear", "getClearSearchText", "setClearSearchText", "showReviewBottomSheet", "getShowReviewBottomSheet", "setShowReviewBottomSheet", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ObserverUtil {
    private Function1<? super Boolean, Unit> addedStaff;
    private Function1<? super Boolean, Unit> clearSearchText;
    private Function1<? super Boolean, Unit> goBackFromCalendar;
    private Function1<? super AttendanceItem, Unit> onDailyAttendanceMarkListener;
    private Function1<? super Staff, Unit> onStaffUserAddedListener;
    private Function4<? super Boolean, ? super Boolean, ? super String, ? super Integer, Unit> refreshCalendar;
    private Function1<? super Boolean, Unit> refreshStaffs;
    private Function1<? super Boolean, Unit> showReviewBottomSheet;

    public final Function1<AttendanceItem, Unit> getOnDailyAttendanceMarkListener() {
        return this.onDailyAttendanceMarkListener;
    }

    public final void setOnDailyAttendanceMarkListener(Function1<? super AttendanceItem, Unit> function1) {
        this.onDailyAttendanceMarkListener = function1;
    }

    public final Function1<Staff, Unit> getOnStaffUserAddedListener() {
        return this.onStaffUserAddedListener;
    }

    public final void setOnStaffUserAddedListener(Function1<? super Staff, Unit> function1) {
        this.onStaffUserAddedListener = function1;
    }

    public final Function1<Boolean, Unit> getAddedStaff() {
        return this.addedStaff;
    }

    public final void setAddedStaff(Function1<? super Boolean, Unit> function1) {
        this.addedStaff = function1;
    }

    public final Function1<Boolean, Unit> getRefreshStaffs() {
        return this.refreshStaffs;
    }

    public final void setRefreshStaffs(Function1<? super Boolean, Unit> function1) {
        this.refreshStaffs = function1;
    }

    public final Function4<Boolean, Boolean, String, Integer, Unit> getRefreshCalendar() {
        return this.refreshCalendar;
    }

    public final void setRefreshCalendar(Function4<? super Boolean, ? super Boolean, ? super String, ? super Integer, Unit> function4) {
        this.refreshCalendar = function4;
    }

    public final Function1<Boolean, Unit> getGoBackFromCalendar() {
        return this.goBackFromCalendar;
    }

    public final void setGoBackFromCalendar(Function1<? super Boolean, Unit> function1) {
        this.goBackFromCalendar = function1;
    }

    public final Function1<Boolean, Unit> getClearSearchText() {
        return this.clearSearchText;
    }

    public final void setClearSearchText(Function1<? super Boolean, Unit> function1) {
        this.clearSearchText = function1;
    }

    public final Function1<Boolean, Unit> getShowReviewBottomSheet() {
        return this.showReviewBottomSheet;
    }

    public final void setShowReviewBottomSheet(Function1<? super Boolean, Unit> function1) {
        this.showReviewBottomSheet = function1;
    }
}
