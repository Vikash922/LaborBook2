package com.laborbook.keep.screen.addstaff.adapter;

import android.os.Handler;
import com.google.android.gms.ads.nativead.NativeAd;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.laborbook.base.datastore.DataStoreManagerExtensionsKt;
import com.laborbook.keep.screen.addstaff.model.ContactItem;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ContactItemAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$loadNativeAd$adLoader$1$1", m2735f = "ContactItemAdapter.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_YRESOLUTION}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class ContactItemAdapter$loadNativeAd$adLoader$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $adKey;
    final /* synthetic */ NativeAd $nativeAd;
    final /* synthetic */ int $originalIndex;
    final /* synthetic */ ContactItem $targetContact;
    int label;
    final /* synthetic */ ContactItemAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContactItemAdapter$loadNativeAd$adLoader$1$1(ContactItemAdapter contactItemAdapter, NativeAd nativeAd, String str, int i, ContactItem contactItem, Continuation<? super ContactItemAdapter$loadNativeAd$adLoader$1$1> continuation) {
        super(2, continuation);
        this.this$0 = contactItemAdapter;
        this.$nativeAd = nativeAd;
        this.$adKey = str;
        this.$originalIndex = i;
        this.$targetContact = contactItem;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ContactItemAdapter$loadNativeAd$adLoader$1$1(this.this$0, this.$nativeAd, this.$adKey, this.$originalIndex, this.$targetContact, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ContactItemAdapter$loadNativeAd$adLoader$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(this.this$0.getDataStoreManager(), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.this$0.nativeAds.put(this.$adKey, this.$nativeAd);
            this.this$0.adRetryCount.remove(this.$adKey);
            Handler handler = this.this$0.mainHandler;
            final ContactItemAdapter contactItemAdapter = this.this$0;
            final int i2 = this.$originalIndex;
            final ContactItem contactItem = this.$targetContact;
            final NativeAd nativeAd = this.$nativeAd;
            handler.post(new Runnable() { // from class: com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ContactItemAdapter$loadNativeAd$adLoader$1$1.invokeSuspend$lambda$0(contactItemAdapter, i2, contactItem, nativeAd);
                }
            });
            return Unit.INSTANCE;
        }
        this.$nativeAd.destroy();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(ContactItemAdapter contactItemAdapter, int i, ContactItem contactItem, NativeAd nativeAd) {
        Intrinsics.checkNotNull(nativeAd);
        contactItemAdapter.insertAdIntoList(i, contactItem, nativeAd);
    }
}
