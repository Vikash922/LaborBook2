package com.laborbook.keep.screen.calendar.dao;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.laborbook.keep.model.CalendarItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: CalendarItemDao.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tH§@¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH§@¢\u0006\u0002\u0010\u0010J&\u0010\u0011\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH§@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0012\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0014J\u0016\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0013H§@¢\u0006\u0002\u0010\u0017J\u000e\u0010\u0018\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0014¨\u0006\u0019"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;", "", "insert", "", "item", "Lcom/laborbook/keep/model/CalendarItem;", "(Lcom/laborbook/keep/model/CalendarItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertAll", FirebaseAnalytics.Param.ITEMS, "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllByIdMonthYear", "id", "", "month", "year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteByUserIdMonthYear", "getCount", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOldest", "count", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAll", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface CalendarItemDao {
    Object deleteAll(Continuation<? super Unit> continuation);

    Object deleteByUserIdMonthYear(String str, String str2, String str3, Continuation<? super Unit> continuation);

    Object deleteOldest(int i, Continuation<? super Unit> continuation);

    Object getAllByIdMonthYear(String str, String str2, String str3, Continuation<? super List<CalendarItem>> continuation);

    Object getCount(Continuation<? super Integer> continuation);

    Object insert(CalendarItem calendarItem, Continuation<? super Unit> continuation);

    Object insertAll(List<CalendarItem> list, Continuation<? super Unit> continuation);
}
