package com.rebuilt.app.keep.screen.home.fragment;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldGreen16;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.rebuilt.app.base.BaseBottomsheetFragment;
import com.rebuilt.app.base.C3577R;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.FragmentReferFriendBottomsheetBinding;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.ByteStreamsKt;
import kotlin.p024io.CloseableKt;

/* JADX INFO: compiled from: ReferFriendBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J&\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0016\u001a\u00020\nH\u0002J\b\u0010\u0017\u001a\u00020\nH\u0002J\b\u0010\u0018\u001a\u00020\nH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentReferFriendBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "onStart", "", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "startConfettiAnimation", "setupClickListeners", "shareOnWhatsApp", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ReferFriendBottomSheetFragment extends BaseBottomsheetFragment<FragmentReferFriendBottomsheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "ReferFriendBottomSheetFragment";

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.REFER_A_FRIEND;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        View viewFindViewById = bottomSheetDialog.findViewById(C1346R.id.design_bottom_sheet);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        viewFindViewById.getLayoutParams().height = -2;
        bottomSheetBehaviorFrom.setState(4);
        bottomSheetDialog.setCanceledOnTouchOutside(true);
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public FragmentReferFriendBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentReferFriendBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentReferFriendBottomsheetBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupClickListeners();
        startConfettiAnimation();
    }

    private final void startConfettiAnimation() {
        ConfettiView confettiView;
        FragmentReferFriendBottomsheetBinding binding = getBinding();
        if (binding == null || (confettiView = binding.confettiView) == null) {
            return;
        }
        confettiView.postDelayed(new Runnable() { // from class: com.rebuilt.app.keep.screen.home.fragment.ReferFriendBottomSheetFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ReferFriendBottomSheetFragment.startConfettiAnimation$lambda$0(this.f$0);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startConfettiAnimation$lambda$0(ReferFriendBottomSheetFragment this$0) {
        ConfettiView confettiView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentReferFriendBottomsheetBinding binding = this$0.getBinding();
        if (binding == null || (confettiView = binding.confettiView) == null) {
            return;
        }
        confettiView.startConfettiAnimation();
    }

    private final void setupClickListeners() {
        TextViewBoldGreen16 textViewBoldGreen16;
        FragmentReferFriendBottomsheetBinding binding = getBinding();
        if (binding == null || (textViewBoldGreen16 = binding.btnShareWhatsapp) == null) {
            return;
        }
        textViewBoldGreen16.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.ReferFriendBottomSheetFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReferFriendBottomSheetFragment.setupClickListeners$lambda$1(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$1(ReferFriendBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.shareOnWhatsApp();
        this$0.dismiss();
    }

    private final void shareOnWhatsApp() {
        try {
            String string = getString(C3656R.string.refer_friend_whatsapp_message);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            InputStream inputStreamOpenRawResource = getResources().openRawResource(C3577R.raw.share_image);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpenRawResource, "openRawResource(...)");
            File file = new File(requireContext().getCacheDir(), "share_image.jpeg");
            FileOutputStream fileOutputStream = inputStreamOpenRawResource;
            try {
                InputStream inputStream = fileOutputStream;
                fileOutputStream = new FileOutputStream(file);
                try {
                    ByteStreamsKt.copyTo$default(inputStream, fileOutputStream, 0, 2, null);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    Uri uriForFile = FileProvider.getUriForFile(requireContext(), requireContext().getPackageName() + ".provider", file);
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("image/*");
                    intent.putExtra("android.intent.extra.TEXT", string);
                    intent.putExtra("android.intent.extra.STREAM", uriForFile);
                    intent.addFlags(1);
                    intent.setPackage("com.whatsapp");
                    startActivity(intent);
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(requireContext(), "WhatsApp is not installed on your device.", 0).show();
        } catch (IOException unused2) {
            Toast.makeText(requireContext(), "Failed to prepare image for sharing.", 0).show();
        } catch (Exception e) {
            Toast.makeText(requireContext(), "Failed to share: " + e.getMessage(), 0).show();
        }
    }

    /* JADX INFO: compiled from: ReferFriendBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;", "", "<init>", "()V", "TAG", "", "newInstance", "Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ReferFriendBottomSheetFragment newInstance() {
            return new ReferFriendBottomSheetFragment();
        }
    }
}
