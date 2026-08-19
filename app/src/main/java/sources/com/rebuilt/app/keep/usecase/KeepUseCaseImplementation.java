package com.rebuilt.app.keep.usecase;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import com.boilerplate.network.model.NetworkResult;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.keep.model.AddAdvanceRequestBody;
import com.rebuilt.app.keep.model.AddOrUpdateSalaryRequestBody;
import com.rebuilt.app.keep.model.AddStaffUserRequestBody;
import com.rebuilt.app.keep.model.AddStaffUserResponse;
import com.rebuilt.app.keep.model.AddStaffUsersRequestBody;
import com.rebuilt.app.keep.model.CurrentSalaryResponse;
import com.rebuilt.app.keep.model.GetUserResponse;
import com.rebuilt.app.keep.model.MarkBulkAttendanceRequestBody;
import com.rebuilt.app.keep.model.MarkSingleAttendanceRequestBody;
import com.rebuilt.app.keep.model.SalaryData;
import com.rebuilt.app.keep.model.StaffAttendanceResponse;
import com.rebuilt.app.keep.model.StaffUserResponseModel;
import com.rebuilt.app.keep.model.UpdateUserNameRequestBody;
import com.rebuilt.app.keep.repository.KeepRepository;
import com.rebuilt.app.keep.screen.addstaff.model.ContactItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: KeepUseCaseImplementation.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0096@¢\u0006\u0002\u0010\u000bJ\"\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u000f\"\u00020\nH\u0096@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\rH\u0096@¢\u0006\u0002\u0010\u000bJ$\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0096@¢\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0003J$\u0010\u0019\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010\u001fJ4\u0010 \u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010$J,\u0010%\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'H\u0096@¢\u0006\u0002\u0010(J,\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020*H\u0096@¢\u0006\u0002\u0010+J$\u0010,\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010-\u001a\u00020.H\u0096@¢\u0006\u0002\u0010/J$\u00100\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001010\u001b0\u001a2\u0006\u00102\u001a\u000203H\u0096@¢\u0006\u0002\u00104J$\u00105\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010\u001fJ,\u00106\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001070\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u00108\u001a\u000209H\u0096@¢\u0006\u0002\u0010:J$\u0010;\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001070\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010\u001fJ,\u0010<\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020>H\u0096@¢\u0006\u0002\u0010?JD\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020\u001e2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020D2\u0006\u0010F\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010GJ4\u0010H\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010$J,\u0010I\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010J\u001a\u00020KH\u0096@¢\u0006\u0002\u0010LJ4\u0010M\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010N0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020O2\u0006\u0010#\u001a\u00020OH\u0096@¢\u0006\u0002\u0010PJ$\u0010Q\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010R0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006S"}, m2722d2 = {"Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;", "Lcom/laborbook/keep/usecase/KeepUseCase;", "keepRepository", "Lcom/laborbook/keep/repository/KeepRepository;", "<init>", "(Lcom/laborbook/keep/repository/KeepRepository;)V", "getKeepRepository", "()Lcom/laborbook/keep/repository/KeepRepository;", "getAllContacts", "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertContacts", "", ConstantEventNames.CONTACTS, "", "([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAllContacts", "loadContacts", "context", "Landroid/content/Context;", "shouldHardRefresh", "", "(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchContactsFromDevice", "getStaffs", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/keep/model/StaffUserResponseModel;", "id", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserAttendances", "Lcom/laborbook/keep/model/StaffAttendanceResponse;", "month", "year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markBulkAttendance", "markAttendanceBody", "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markSingleAttendance", "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUsers", "staffUsers", "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUser", "Lcom/laborbook/keep/model/AddStaffUserResponse;", "staffUser", "Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteStaffUser", "updateUserName", "Lcom/laborbook/keep/model/GetUserResponse;", "updateUserNameRequestBody", "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUser", "addAdvance", "addAdvanceRequestBody", "Lcom/laborbook/keep/model/AddAdvanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addOvertime", "userId", "date", "otMinutes", "", "otPerHour", "managerId", "(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOvertime", "addOrUpdateSalary", SDKConstants.PARAM_A2U_BODY, "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSalary", "Lcom/laborbook/keep/model/SalaryData;", "", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCurrentSalary", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class KeepUseCaseImplementation implements KeepUseCase {
    private final KeepRepository keepRepository;

    /* JADX INFO: renamed from: com.rebuilt.app.keep.usecase.KeepUseCaseImplementation$loadContacts$1 */
    /* JADX INFO: compiled from: KeepUseCaseImplementation.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.usecase.KeepUseCaseImplementation", m2735f = "KeepUseCaseImplementation.kt", m2736i = {0, 0, 0, 1, 1, 2}, m2737l = {32, 36, 38}, m2738m = "loadContacts", m2739n = {"this", "context", "shouldHardRefresh", "this", "contactsList", "contactsList"}, m2740s = {"L$0", "L$1", "Z$0", "L$0", "L$1", "L$0"})
    static final class C38611 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C38611(Continuation<? super C38611> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KeepUseCaseImplementation.this.loadContacts(null, false, this);
        }
    }

    public KeepUseCaseImplementation(KeepRepository keepRepository) {
        Intrinsics.checkNotNullParameter(keepRepository, "keepRepository");
        this.keepRepository = keepRepository;
    }

    public final KeepRepository getKeepRepository() {
        return this.keepRepository;
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object getAllContacts(Continuation<? super List<ContactItem>> continuation) {
        return this.keepRepository.getAllContacts(continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object insertContacts(ContactItem[] contactItemArr, Continuation<? super Unit> continuation) {
        Object objInsertContacts = this.keepRepository.insertContacts((ContactItem[]) Arrays.copyOf(contactItemArr, contactItemArr.length), continuation);
        return objInsertContacts == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInsertContacts : Unit.INSTANCE;
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object deleteAllContacts(Continuation<? super Unit> continuation) {
        Object objDeleteAllContacts = this.keepRepository.deleteAllContacts(continuation);
        return objDeleteAllContacts == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDeleteAllContacts : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object loadContacts(android.content.Context r7, boolean r8, kotlin.coroutines.Continuation<? super java.util.List<com.rebuilt.app.keep.screen.addstaff.model.ContactItem>> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.rebuilt.app.keep.usecase.KeepUseCaseImplementation.C38611
            if (r0 == 0) goto L14
            r0 = r9
            com.rebuilt.app.keep.usecase.KeepUseCaseImplementation$loadContacts$1 r0 = (com.rebuilt.app.keep.usecase.KeepUseCaseImplementation.C38611) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.rebuilt.app.keep.usecase.KeepUseCaseImplementation$loadContacts$1 r0 = new com.rebuilt.app.keep.usecase.KeepUseCaseImplementation$loadContacts$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L57
            if (r2 == r5) goto L49
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r7 = r0.L$0
            java.util.List r7 = (java.util.List) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lb0
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3d:
            java.lang.Object r7 = r0.L$1
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r8 = r0.L$0
            com.rebuilt.app.keep.usecase.KeepUseCaseImplementation r8 = (com.rebuilt.app.keep.usecase.KeepUseCaseImplementation) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L8c
        L49:
            boolean r8 = r0.Z$0
            java.lang.Object r7 = r0.L$1
            android.content.Context r7 = (android.content.Context) r7
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.keep.usecase.KeepUseCaseImplementation r2 = (com.rebuilt.app.keep.usecase.KeepUseCaseImplementation) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6c
        L57:
            kotlin.ResultKt.throwOnFailure(r9)
            com.rebuilt.app.keep.repository.KeepRepository r9 = r6.keepRepository
            r0.L$0 = r6
            r0.L$1 = r7
            r0.Z$0 = r8
            r0.label = r5
            java.lang.Object r9 = r9.getAllContacts(r0)
            if (r9 != r1) goto L6b
            return r1
        L6b:
            r2 = r6
        L6c:
            java.util.List r9 = (java.util.List) r9
            boolean r5 = r9.isEmpty()
            if (r5 != 0) goto L76
            if (r8 == 0) goto Lb1
        L76:
            java.util.List r7 = r2.fetchContactsFromDevice(r7)
            if (r8 == 0) goto L8d
            com.rebuilt.app.keep.repository.KeepRepository r8 = r2.keepRepository
            r0.L$0 = r2
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r8.deleteAllContacts(r0)
            if (r8 != r1) goto L8b
            return r1
        L8b:
            r8 = r2
        L8c:
            r2 = r8
        L8d:
            com.rebuilt.app.keep.repository.KeepRepository r8 = r2.keepRepository
            r9 = r7
            java.util.Collection r9 = (java.util.Collection) r9
            r2 = 0
            com.rebuilt.app.keep.screen.addstaff.model.ContactItem[] r2 = new com.rebuilt.app.keep.screen.addstaff.model.ContactItem[r2]
            java.lang.Object[] r9 = r9.toArray(r2)
            com.rebuilt.app.keep.screen.addstaff.model.ContactItem[] r9 = (com.rebuilt.app.keep.screen.addstaff.model.ContactItem[]) r9
            int r2 = r9.length
            java.lang.Object[] r9 = java.util.Arrays.copyOf(r9, r2)
            com.rebuilt.app.keep.screen.addstaff.model.ContactItem[] r9 = (com.rebuilt.app.keep.screen.addstaff.model.ContactItem[]) r9
            r0.L$0 = r7
            r2 = 0
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r8 = r8.insertContacts(r9, r0)
            if (r8 != r1) goto Lb0
            return r1
        Lb0:
            r9 = r7
        Lb1:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.usecase.KeepUseCaseImplementation.loadContacts(android.content.Context, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final List<ContactItem> fetchContactsFromDevice(Context context) {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery2 = contentResolver.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
        if (cursorQuery2 != null) {
            Cursor cursor = cursorQuery2;
            try {
                Cursor cursor2 = cursor;
                while (cursor2.moveToNext()) {
                    String string = cursor2.getString(cursor2.getColumnIndex("_id"));
                    String string2 = cursor2.getString(cursor2.getColumnIndex("display_name"));
                    if (cursor2.getInt(cursor2.getColumnIndex("has_phone_number")) > 0 && (cursorQuery = contentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id = ?", new String[]{string}, null)) != null) {
                        cursor = cursorQuery;
                        try {
                            Cursor cursor3 = cursor;
                            while (cursor3.moveToNext()) {
                                String string3 = cursor3.getString(cursor3.getColumnIndex("data1"));
                                Intrinsics.checkNotNull(string2);
                                Intrinsics.checkNotNull(string3);
                                arrayList.add(new ContactItem(0, string2, string3));
                            }
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(cursor, null);
                        } finally {
                        }
                    }
                }
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(cursor, null);
            } finally {
            }
        }
        return arrayList;
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object getStaffs(String str, Continuation<? super Flow<NetworkResult<StaffUserResponseModel>>> continuation) {
        return this.keepRepository.getStaffs(str, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object getUserAttendances(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<StaffAttendanceResponse>>> continuation) {
        return this.keepRepository.getUserAttendances(str, str2, str3, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object markBulkAttendance(String str, MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.markBulkAttendance(str, markBulkAttendanceRequestBody, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object markSingleAttendance(String str, MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.markSingleAttendance(str, markSingleAttendanceRequestBody, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object addStaffUsers(AddStaffUsersRequestBody addStaffUsersRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.addStaffUsers(addStaffUsersRequestBody, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object addStaffUser(AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super Flow<NetworkResult<AddStaffUserResponse>>> continuation) {
        return this.keepRepository.addStaffUser(addStaffUserRequestBody, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object deleteStaffUser(String str, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.deleteStaffUser(str, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object updateUserName(String str, UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation) {
        return this.keepRepository.updateUserName(str, updateUserNameRequestBody, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object getUser(String str, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation) {
        return this.keepRepository.getUser(str, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object addAdvance(String str, AddAdvanceRequestBody addAdvanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.addAdvance(str, addAdvanceRequestBody, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object addOvertime(String str, String str2, double d, double d2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.addOvertime(str, str2, d, d2, str3, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object deleteOvertime(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.deleteOvertime(str, str2, str3, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object addOrUpdateSalary(String str, AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepRepository.addOrUpdateSalary(str, addOrUpdateSalaryRequestBody, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object getUserSalary(String str, int i, int i2, Continuation<? super Flow<NetworkResult<SalaryData>>> continuation) {
        return this.keepRepository.getUserSalary(str, i, i2, continuation);
    }

    @Override // com.rebuilt.app.keep.usecase.KeepUseCase
    public Object getCurrentSalary(String str, Continuation<? super Flow<NetworkResult<CurrentSalaryResponse>>> continuation) {
        return this.keepRepository.getCurrentSalary(str, continuation);
    }
}
