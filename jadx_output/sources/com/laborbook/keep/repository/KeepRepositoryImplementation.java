package com.laborbook.keep.repository;

import com.boilerplate.network.model.NetworkResult;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.keep.model.AddAdvanceRequestBody;
import com.laborbook.keep.model.AddOrUpdateSalaryRequestBody;
import com.laborbook.keep.model.AddStaffUserRequestBody;
import com.laborbook.keep.model.AddStaffUserResponse;
import com.laborbook.keep.model.AddStaffUsersRequestBody;
import com.laborbook.keep.model.CurrentSalaryResponse;
import com.laborbook.keep.model.GetUserResponse;
import com.laborbook.keep.model.MarkBulkAttendanceRequestBody;
import com.laborbook.keep.model.MarkSingleAttendanceRequestBody;
import com.laborbook.keep.model.SalaryData;
import com.laborbook.keep.model.StaffAttendanceResponse;
import com.laborbook.keep.model.StaffUserResponseModel;
import com.laborbook.keep.model.UpdateUserNameRequestBody;
import com.laborbook.keep.network.KeepNetworkModule;
import com.laborbook.keep.screen.addstaff.model.ContactDao;
import com.laborbook.keep.screen.addstaff.model.ContactItem;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: KeepRepositoryImplementation.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0096@¢\u0006\u0002\u0010\rJ\"\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u0011\"\u00020\fH\u0096@¢\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u000fH\u0096@¢\u0006\u0002\u0010\rJ$\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010\u001aJ4\u0010\u001b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010\u001fJ,\u0010 \u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"H\u0096@¢\u0006\u0002\u0010#J,\u0010$\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020%H\u0096@¢\u0006\u0002\u0010&J$\u0010'\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010(\u001a\u00020)H\u0096@¢\u0006\u0002\u0010*J$\u0010+\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010,0\u00160\u00152\u0006\u0010-\u001a\u00020.H\u0096@¢\u0006\u0002\u0010/J$\u00100\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010\u001aJ,\u00101\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001020\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00103\u001a\u000204H\u0096@¢\u0006\u0002\u00105JD\u00106\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u00108\u001a\u00020\u00192\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010=J4\u0010>\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u00108\u001a\u00020\u00192\u0006\u0010<\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010\u001fJ$\u0010?\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001020\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010\u001aJ,\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010A\u001a\u00020BH\u0096@¢\u0006\u0002\u0010CJ,\u0010D\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u0010E\u001a\u00020FH\u0096@¢\u0006\u0002\u0010GJ4\u0010H\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010I0\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020J2\u0006\u0010\u001e\u001a\u00020JH\u0096@¢\u0006\u0002\u0010KJ$\u0010L\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010M0\u00160\u00152\u0006\u00107\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006N"}, m2722d2 = {"Lcom/laborbook/keep/repository/KeepRepositoryImplementation;", "Lcom/laborbook/keep/repository/KeepRepository;", "keepNetworkModule", "Lcom/laborbook/keep/network/KeepNetworkModule;", "contactDao", "Lcom/laborbook/keep/screen/addstaff/model/ContactDao;", "<init>", "(Lcom/laborbook/keep/network/KeepNetworkModule;Lcom/laborbook/keep/screen/addstaff/model/ContactDao;)V", "getKeepNetworkModule", "()Lcom/laborbook/keep/network/KeepNetworkModule;", "getAllContacts", "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertContacts", "", ConstantEventNames.CONTACTS, "", "([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAllContacts", "getStaffs", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/keep/model/StaffUserResponseModel;", "id", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserAttendances", "Lcom/laborbook/keep/model/StaffAttendanceResponse;", "month", "year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markBulkAttendance", "markAttendanceBody", "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markSingleAttendance", "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUsers", "staffUsers", "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUser", "Lcom/laborbook/keep/model/AddStaffUserResponse;", "staffUser", "Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteStaffUser", "updateUserName", "Lcom/laborbook/keep/model/GetUserResponse;", "updateUserNameRequestBody", "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addOvertime", "userId", "date", "otMinutes", "", "otPerHour", "managerId", "(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOvertime", "getUser", "addAdvance", "addAdvanceRequestBody", "Lcom/laborbook/keep/model/AddAdvanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addOrUpdateSalary", SDKConstants.PARAM_A2U_BODY, "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSalary", "Lcom/laborbook/keep/model/SalaryData;", "", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCurrentSalary", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class KeepRepositoryImplementation implements KeepRepository {
    private final ContactDao contactDao;
    private final KeepNetworkModule keepNetworkModule;

    public KeepRepositoryImplementation(KeepNetworkModule keepNetworkModule, ContactDao contactDao) {
        Intrinsics.checkNotNullParameter(keepNetworkModule, "keepNetworkModule");
        Intrinsics.checkNotNullParameter(contactDao, "contactDao");
        this.keepNetworkModule = keepNetworkModule;
        this.contactDao = contactDao;
    }

    public final KeepNetworkModule getKeepNetworkModule() {
        return this.keepNetworkModule;
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object getAllContacts(Continuation<? super List<ContactItem>> continuation) {
        return this.contactDao.getAllContacts(continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object insertContacts(ContactItem[] contactItemArr, Continuation<? super Unit> continuation) {
        Object objInsertContacts = this.contactDao.insertContacts((ContactItem[]) Arrays.copyOf(contactItemArr, contactItemArr.length), continuation);
        return objInsertContacts == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInsertContacts : Unit.INSTANCE;
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object deleteAllContacts(Continuation<? super Unit> continuation) {
        Object objDeleteAllContacts = this.contactDao.deleteAllContacts(continuation);
        return objDeleteAllContacts == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDeleteAllContacts : Unit.INSTANCE;
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object getStaffs(String str, Continuation<? super Flow<NetworkResult<StaffUserResponseModel>>> continuation) {
        return this.keepNetworkModule.getStaffUsers(str, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object getUserAttendances(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<StaffAttendanceResponse>>> continuation) {
        return this.keepNetworkModule.getUserAttendances(str, str2, str3, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object markBulkAttendance(String str, MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.markBulkAttendance(str, markBulkAttendanceRequestBody, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object markSingleAttendance(String str, MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.markSingleAttendance(str, markSingleAttendanceRequestBody, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object addStaffUsers(AddStaffUsersRequestBody addStaffUsersRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.addStaffUsers(addStaffUsersRequestBody, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object addStaffUser(AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super Flow<NetworkResult<AddStaffUserResponse>>> continuation) {
        return this.keepNetworkModule.addStaffUser(addStaffUserRequestBody, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object deleteStaffUser(String str, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.deleteStaffUser(str, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object updateUserName(String str, UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation) {
        return this.keepNetworkModule.updateUserName(str, updateUserNameRequestBody, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object addOvertime(String str, String str2, double d, double d2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.saveOvertime(str, str2, d, d2, str3, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object deleteOvertime(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.deleteOvertime(str, str2, str3, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object getUser(String str, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation) {
        return this.keepNetworkModule.getUser(str, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object addAdvance(String str, AddAdvanceRequestBody addAdvanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.addAdvance(str, addAdvanceRequestBody, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object addOrUpdateSalary(String str, AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.keepNetworkModule.addOrUpdateSalary(str, addOrUpdateSalaryRequestBody, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object getUserSalary(String str, int i, int i2, Continuation<? super Flow<NetworkResult<SalaryData>>> continuation) {
        return this.keepNetworkModule.getUserSalary(str, i, i2, continuation);
    }

    @Override // com.laborbook.keep.repository.KeepRepository
    public Object getCurrentSalary(String str, Continuation<? super Flow<NetworkResult<CurrentSalaryResponse>>> continuation) {
        return this.keepNetworkModule.getCurrentSalary(str, continuation);
    }
}
