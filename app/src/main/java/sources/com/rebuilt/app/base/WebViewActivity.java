package com.rebuilt.app.base;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.rebuilt.app.base.databinding.ActivityWebviewBinding;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WebViewActivity.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/base/WebViewActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "binding", "Lcom/laborbook/base/databinding/ActivityWebviewBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "enableEdgeToEdge", "setupWebView", "url", "", "Companion", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class WebViewActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String EXTRA_TITLE = "extra_title";
    private static final String EXTRA_URL = "extra_url";
    private ActivityWebviewBinding binding;

    @JvmStatic
    public static final Intent createIntent(Context context, String str, String str2) {
        return INSTANCE.createIntent(context, str, str2);
    }

    @JvmStatic
    public static final void start(Context context, String str, String str2) {
        INSTANCE.start(context, str, str2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityWebviewBinding activityWebviewBindingInflate = ActivityWebviewBinding.inflate(getLayoutInflater());
        this.binding = activityWebviewBindingInflate;
        ActivityWebviewBinding activityWebviewBinding = null;
        if (activityWebviewBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityWebviewBindingInflate = null;
        }
        setContentView(activityWebviewBindingInflate.getRoot());
        enableEdgeToEdge();
        String stringExtra = getIntent().getStringExtra(EXTRA_URL);
        String stringExtra2 = getIntent().getStringExtra(EXTRA_TITLE);
        if (stringExtra2 == null) {
            stringExtra2 = getString(C3577R.string.webview_default_title);
            Intrinsics.checkNotNullExpressionValue(stringExtra2, "getString(...)");
        }
        String str = stringExtra;
        if (str == null || StringsKt.isBlank(str)) {
            Toast.makeText(this, "Invalid URL", 0).show();
            finish();
            return;
        }
        ActivityWebviewBinding activityWebviewBinding2 = this.binding;
        if (activityWebviewBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityWebviewBinding2 = null;
        }
        activityWebviewBinding2.tvTitle.setText(stringExtra2);
        ActivityWebviewBinding activityWebviewBinding3 = this.binding;
        if (activityWebviewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityWebviewBinding = activityWebviewBinding3;
        }
        activityWebviewBinding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.base.WebViewActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebViewActivity.onCreate$lambda$0(this.f$0, view);
            }
        });
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback() { // from class: com.rebuilt.app.base.WebViewActivity.onCreate.2
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                ActivityWebviewBinding activityWebviewBinding4 = WebViewActivity.this.binding;
                ActivityWebviewBinding activityWebviewBinding5 = null;
                if (activityWebviewBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityWebviewBinding4 = null;
                }
                if (activityWebviewBinding4.webview.canGoBack()) {
                    ActivityWebviewBinding activityWebviewBinding6 = WebViewActivity.this.binding;
                    if (activityWebviewBinding6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        activityWebviewBinding5 = activityWebviewBinding6;
                    }
                    activityWebviewBinding5.webview.goBack();
                    return;
                }
                WebViewActivity.this.finish();
            }
        });
        setupWebView(stringExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(WebViewActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getOnBackPressedDispatcher().onBackPressed();
    }

    private final void enableEdgeToEdge() {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        getWindow().setStatusBarColor(0);
        getWindow().setNavigationBarColor(0);
        WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView()).setAppearanceLightStatusBars(true);
        ActivityWebviewBinding activityWebviewBinding = this.binding;
        if (activityWebviewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityWebviewBinding = null;
        }
        ViewCompat.setOnApplyWindowInsetsListener(activityWebviewBinding.getRoot(), new OnApplyWindowInsetsListener() { // from class: com.rebuilt.app.base.WebViewActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return WebViewActivity.enableEdgeToEdge$lambda$2(this.f$0, view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat enableEdgeToEdge$lambda$2(WebViewActivity this$0, View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.statusBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets3, "getInsets(...)");
        ActivityWebviewBinding activityWebviewBinding = this$0.binding;
        ActivityWebviewBinding activityWebviewBinding2 = null;
        if (activityWebviewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityWebviewBinding = null;
        }
        LinearLayout toolbar = activityWebviewBinding.toolbar;
        Intrinsics.checkNotNullExpressionValue(toolbar, "toolbar");
        LinearLayout linearLayout = toolbar;
        linearLayout.setPadding(linearLayout.getPaddingLeft(), insets2.top, linearLayout.getPaddingRight(), linearLayout.getPaddingBottom());
        ActivityWebviewBinding activityWebviewBinding3 = this$0.binding;
        if (activityWebviewBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityWebviewBinding2 = activityWebviewBinding3;
        }
        ConstraintLayout root = activityWebviewBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ConstraintLayout constraintLayout = root;
        constraintLayout.setPadding(constraintLayout.getPaddingLeft(), constraintLayout.getPaddingTop(), constraintLayout.getPaddingRight(), insets3.bottom);
        return insets;
    }

    private final void setupWebView(String url) {
        ActivityWebviewBinding activityWebviewBinding = this.binding;
        if (activityWebviewBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityWebviewBinding = null;
        }
        WebView webView = activityWebviewBinding.webview;
        webView.setWebViewClient(new WebViewClient() { // from class: com.rebuilt.app.base.WebViewActivity$setupWebView$1$1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url2, Bitmap favicon) {
                super.onPageStarted(view, url2, favicon);
                ActivityWebviewBinding activityWebviewBinding2 = this.this$0.binding;
                if (activityWebviewBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityWebviewBinding2 = null;
                }
                activityWebviewBinding2.progress.setVisibility(0);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url2) {
                super.onPageFinished(view, url2);
                ActivityWebviewBinding activityWebviewBinding2 = this.this$0.binding;
                if (activityWebviewBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityWebviewBinding2 = null;
                }
                activityWebviewBinding2.progress.setVisibility(8);
            }
        });
        webView.setWebChromeClient(new WebChromeClient());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.loadUrl(url);
    }

    /* JADX INFO: compiled from: WebViewActivity.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0007J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/base/WebViewActivity$Companion;", "", "<init>", "()V", "EXTRA_URL", "", "EXTRA_TITLE", "start", "", "context", "Landroid/content/Context;", "url", "title", "createIntent", "Landroid/content/Intent;", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, int i, Object obj) {
            if ((i & 4) != 0) {
                str2 = null;
            }
            companion.start(context, str, str2);
        }

        @JvmStatic
        public final void start(Context context, String url, String title) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(url, "url");
            context.startActivity(createIntent(context, url, title));
        }

        public static /* synthetic */ Intent createIntent$default(Companion companion, Context context, String str, String str2, int i, Object obj) {
            if ((i & 4) != 0) {
                str2 = null;
            }
            return companion.createIntent(context, str, str2);
        }

        @JvmStatic
        public final Intent createIntent(Context context, String url, String title) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(url, "url");
            Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
            intent.putExtra(WebViewActivity.EXTRA_URL, url);
            if (title != null) {
                intent.putExtra(WebViewActivity.EXTRA_TITLE, title);
            }
            return intent;
        }
    }
}
