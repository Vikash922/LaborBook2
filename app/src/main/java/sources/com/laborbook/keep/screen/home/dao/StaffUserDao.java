package com.laborbook.keep.screen.home.dao;

import com.laborbook.keep.model.StaffUser;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: StaffUserDao.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J\u001c\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u0005¨\u0006\u000b"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/dao/StaffUserDao;", "", "getAllStaffUsers", "", "Lcom/laborbook/keep/model/StaffUser;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertStaffUsers", "", "users", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAllStaffs", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface StaffUserDao {
    Object deleteAllStaffs(Continuation<? super Unit> continuation);

    Object getAllStaffUsers(Continuation<? super List<StaffUser>> continuation);

    Object insertStaffUsers(List<StaffUser> list, Continuation<? super Unit> continuation);
}
