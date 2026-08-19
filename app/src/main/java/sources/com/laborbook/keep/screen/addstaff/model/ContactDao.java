package com.laborbook.keep.screen.addstaff.model;

import com.laborbook.base.analytics.ConstantEventNames;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ContactDao.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\t\"\u00020\u0004H§@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u0005¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/model/ContactDao;", "", "getAllContacts", "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertContacts", "", ConstantEventNames.CONTACTS, "", "([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAllContacts", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface ContactDao {
    Object deleteAllContacts(Continuation<? super Unit> continuation);

    Object getAllContacts(Continuation<? super List<ContactItem>> continuation);

    Object insertContacts(ContactItem[] contactItemArr, Continuation<? super Unit> continuation);
}
