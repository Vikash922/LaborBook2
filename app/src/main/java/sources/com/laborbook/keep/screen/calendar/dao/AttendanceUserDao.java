package com.laborbook.keep.screen.calendar.dao;

import com.laborbook.keep.model.AttendanceUser;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: AttendanceUserDao.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH§@¢\u0006\u0002\u0010\nJ\u000e\u0010\f\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\r¨\u0006\u000e"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;", "", "insert", "", "user", "Lcom/laborbook/keep/model/AttendanceUser;", "(Lcom/laborbook/keep/model/AttendanceUser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserById", "id", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteByUserId", "deleteAll", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface AttendanceUserDao {
    Object deleteAll(Continuation<? super Unit> continuation);

    Object deleteByUserId(String str, Continuation<? super Unit> continuation);

    Object getUserById(String str, Continuation<? super AttendanceUser> continuation);

    Object insert(AttendanceUser attendanceUser, Continuation<? super Unit> continuation);
}
