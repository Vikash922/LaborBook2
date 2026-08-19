package com.rebuilt.app.keep.repository;

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
import com.rebuilt.app.keep.screen.addstaff.model.ContactItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: KeepRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H¦@¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\t\"\u00020\u0004H¦@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\u0005J$\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010\u0012J4\u0010\u0013\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010\u0017J,\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH¦@¢\u0006\u0002\u0010\u001bJ,\u0010\u001c\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001dH¦@¢\u0006\u0002\u0010\u001eJ$\u0010\u001f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u0010 \u001a\u00020!H¦@¢\u0006\u0002\u0010\"J$\u0010#\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u000e0\r2\u0006\u0010%\u001a\u00020&H¦@¢\u0006\u0002\u0010'J$\u0010(\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010\u0012J,\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010+\u001a\u00020,H¦@¢\u0006\u0002\u0010-J$\u0010.\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010\u0012J,\u0010/\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00100\u001a\u000201H¦@¢\u0006\u0002\u00102JD\u00103\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u00104\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u00112\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010:J4\u0010;\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u00104\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u00112\u0006\u00109\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010\u0017J,\u0010<\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e0\r2\u0006\u00104\u001a\u00020\u00112\u0006\u0010=\u001a\u00020>H¦@¢\u0006\u0002\u0010?J4\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010A0\u000e0\r2\u0006\u00104\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020B2\u0006\u0010\u0016\u001a\u00020BH¦@¢\u0006\u0002\u0010CJ$\u0010D\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010E0\u000e0\r2\u0006\u00104\u001a\u00020\u0011H¦@¢\u0006\u0002\u0010\u0012¨\u0006F"}, m2722d2 = {"Lcom/laborbook/keep/repository/KeepRepository;", "", "getAllContacts", "", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertContacts", "", ConstantEventNames.CONTACTS, "", "([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAllContacts", "getStaffs", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/keep/model/StaffUserResponseModel;", "id", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserAttendances", "Lcom/laborbook/keep/model/StaffAttendanceResponse;", "month", "year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markBulkAttendance", "markAttendanceBody", "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markSingleAttendance", "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUsers", "staffUsers", "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUser", "Lcom/laborbook/keep/model/AddStaffUserResponse;", "staffUser", "Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteStaffUser", "updateUserName", "Lcom/laborbook/keep/model/GetUserResponse;", "updateUserNameRequestBody", "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUser", "addAdvance", "addAdvanceRequestBody", "Lcom/laborbook/keep/model/AddAdvanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addOvertime", "userId", "date", "otMinutes", "", "otPerHour", "managerId", "(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOvertime", "addOrUpdateSalary", SDKConstants.PARAM_A2U_BODY, "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSalary", "Lcom/laborbook/keep/model/SalaryData;", "", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCurrentSalary", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface KeepRepository {
    Object addAdvance(String str, AddAdvanceRequestBody addAdvanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object addOrUpdateSalary(String str, AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object addOvertime(String str, String str2, double d, double d2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object addStaffUser(AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super Flow<NetworkResult<AddStaffUserResponse>>> continuation);

    Object addStaffUsers(AddStaffUsersRequestBody addStaffUsersRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object deleteAllContacts(Continuation<? super Unit> continuation);

    Object deleteOvertime(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object deleteStaffUser(String str, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object getAllContacts(Continuation<? super List<ContactItem>> continuation);

    Object getCurrentSalary(String str, Continuation<? super Flow<NetworkResult<CurrentSalaryResponse>>> continuation);

    Object getStaffs(String str, Continuation<? super Flow<NetworkResult<StaffUserResponseModel>>> continuation);

    Object getUser(String str, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation);

    Object getUserAttendances(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<StaffAttendanceResponse>>> continuation);

    Object getUserSalary(String str, int i, int i2, Continuation<? super Flow<NetworkResult<SalaryData>>> continuation);

    Object insertContacts(ContactItem[] contactItemArr, Continuation<? super Unit> continuation);

    Object markBulkAttendance(String str, MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object markSingleAttendance(String str, MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation);

    Object updateUserName(String str, UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation);
}
