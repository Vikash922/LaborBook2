package com.rebuilt.app.base;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.C1111R;
import com.facebook.share.internal.ShareConstants;
import com.google.android.material.textfield.TextInputEditText;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.ByteStreamsKt;
import kotlin.p024io.CloseableKt;
import kotlin.random.Random;

/* JADX INFO: compiled from: BaseExtension.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0007\u001a\u00020\b*\u00020\b\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\n\u001a*\u0010\u000b\u001a\u00020\u0001*\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012\u001a\u000e\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\u000eH\u0002\u001a\u000e\u0010\u0015\u001a\u0004\u0018\u00010\u0014*\u00020\u0012H\u0002\u001a-\u0010\u0016\u001a\u00020\u0014*\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u001a\"\u00020\u0014H\u0002¢\u0006\u0002\u0010\u001b\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001d*\u00020\f2\u0006\u0010\u001e\u001a\u00020\u0014H\u0002\u001a\u0014\u0010\u001f\u001a\u00020\u0001*\u00020\f2\u0006\u0010 \u001a\u00020\u001dH\u0002\u001a\n\u0010!\u001a\u00020\u0001*\u00020\f\u001a\n\u0010\"\u001a\u00020\b*\u00020\b\u001a\n\u0010#\u001a\u00020\b*\u00020\b¨\u0006$"}, m2722d2 = {"toggleKeyboard", "", "Landroid/widget/EditText;", "activity", "Landroid/app/Activity;", "hideKeyboard", "Lcom/google/android/material/textfield/TextInputEditText;", "toFormattedDate", "", "setRandomLightCircleBackground", "Landroidx/appcompat/widget/AppCompatTextView;", "captureAndShareFullContent", "Landroidx/fragment/app/Fragment;", "toolbarView", "Landroid/view/View;", "llStatsView", "llTableHeaderView", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getBitmapWithoutChanges", "Landroid/graphics/Bitmap;", "getBitmapFromRecyclerView", "combineBitmapsWithBackground", "backgroundColorRes", "", "bitmaps", "", "(Landroidx/fragment/app/Fragment;I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;", "saveBitmapToMediaStore", "Landroid/net/Uri;", "bitmap", "shareScreenshot", ShareConstants.MEDIA_URI, "shareLaborbookContentOnWhatsApp", "appendDotsAfterFirstTwelve", "toReadableDate", "base_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class BaseExtensionKt {
    public static final void toggleKeyboard(EditText editText, Activity activity) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Object systemService = activity.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus != null && inputMethodManager.isAcceptingText()) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        } else {
            editText.requestFocus();
            inputMethodManager.showSoftInput(editText, 1);
        }
    }

    public static final void hideKeyboard(EditText editText, Activity activity) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            Object systemService = activity.getSystemService("input_method");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            View currentFocus = activity.getCurrentFocus();
            inputMethodManager.hideSoftInputFromWindow(currentFocus != null ? currentFocus.getWindowToken() : null, 0);
        } catch (Exception unused) {
        }
    }

    public static final void toggleKeyboard(TextInputEditText textInputEditText, Activity activity) {
        Intrinsics.checkNotNullParameter(textInputEditText, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Object systemService = activity.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus != null && inputMethodManager.isAcceptingText()) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        } else {
            textInputEditText.requestFocus();
            inputMethodManager.showSoftInput(textInputEditText, 1);
        }
    }

    public static final String toFormattedDate(String str) {
        String str2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy", Locale.getDefault());
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM dd, yyyy", Locale.getDefault());
        Date date = simpleDateFormat.parse(str);
        return (date == null || (str2 = simpleDateFormat2.format(date)) == null) ? "" : str2;
    }

    public static final void setRandomLightCircleBackground(AppCompatTextView appCompatTextView) {
        Intrinsics.checkNotNullParameter(appCompatTextView, "<this>");
        List listListOf = CollectionsKt.listOf((Object[]) new Integer[]{-5933, -6421, -1114118, -855310, -724225, -1511432, -919553});
        int iIntValue = ((Number) listListOf.get(Random.INSTANCE.nextInt(listListOf.size()))).intValue();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(iIntValue);
        appCompatTextView.setBackground(gradientDrawable);
    }

    public static final void captureAndShareFullContent(Fragment fragment, View toolbarView, View llStatsView, View llTableHeaderView, RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(toolbarView, "toolbarView");
        Intrinsics.checkNotNullParameter(llStatsView, "llStatsView");
        Intrinsics.checkNotNullParameter(llTableHeaderView, "llTableHeaderView");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        try {
            Bitmap bitmapWithoutChanges = getBitmapWithoutChanges(toolbarView);
            Bitmap bitmapWithoutChanges2 = getBitmapWithoutChanges(llStatsView);
            Bitmap bitmapWithoutChanges3 = getBitmapWithoutChanges(llTableHeaderView);
            Bitmap bitmapFromRecyclerView = getBitmapFromRecyclerView(recyclerView);
            if (bitmapWithoutChanges != null && bitmapWithoutChanges2 != null && bitmapWithoutChanges3 != null && bitmapFromRecyclerView != null) {
                Uri uriSaveBitmapToMediaStore = saveBitmapToMediaStore(fragment, combineBitmapsWithBackground(fragment, C1111R.color.background_secondary, bitmapWithoutChanges, bitmapWithoutChanges2, bitmapWithoutChanges3, bitmapFromRecyclerView));
                if (uriSaveBitmapToMediaStore != null) {
                    shareScreenshot(fragment, uriSaveBitmapToMediaStore);
                } else {
                    Toast.makeText(fragment.requireContext(), "Failed to save screenshot.", 0).show();
                }
            } else {
                Toast.makeText(fragment.requireContext(), "Failed to capture all components.", 0).show();
            }
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(fragment.requireContext(), "Error: " + e.getMessage(), 0).show();
        }
    }

    private static final Bitmap getBitmapWithoutChanges(View view) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
            view.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static final Bitmap getBitmapFromRecyclerView(RecyclerView recyclerView) {
        try {
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (adapter == null) {
                return null;
            }
            int itemCount = adapter.getItemCount();
            Paint paint = new Paint();
            int width = recyclerView.getWidth();
            Drawable background = recyclerView.getBackground();
            ColorDrawable colorDrawable = background instanceof ColorDrawable ? (ColorDrawable) background : null;
            int color = colorDrawable != null ? colorDrawable.getColor() : -1;
            ArrayList<Bitmap> arrayList = new ArrayList();
            int height = 0;
            int height2 = 0;
            for (int i = 0; i < itemCount; i++) {
                RecyclerView.ViewHolder viewHolderCreateViewHolder = adapter.createViewHolder(recyclerView, adapter.getItemViewType(i));
                Intrinsics.checkNotNullExpressionValue(viewHolderCreateViewHolder, "createViewHolder(...)");
                adapter.onBindViewHolder(viewHolderCreateViewHolder, i);
                viewHolderCreateViewHolder.itemView.measure(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                viewHolderCreateViewHolder.itemView.layout(0, 0, viewHolderCreateViewHolder.itemView.getMeasuredWidth(), viewHolderCreateViewHolder.itemView.getMeasuredHeight());
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(viewHolderCreateViewHolder.itemView.getWidth(), viewHolderCreateViewHolder.itemView.getHeight(), Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.drawColor(color);
                viewHolderCreateViewHolder.itemView.draw(canvas);
                arrayList.add(bitmapCreateBitmap);
                height2 += viewHolderCreateViewHolder.itemView.getHeight();
            }
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width, height2, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap2, "createBitmap(...)");
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            for (Bitmap bitmap : arrayList) {
                canvas2.drawBitmap(bitmap, 0.0f, height, paint);
                height += bitmap.getHeight();
            }
            return bitmapCreateBitmap2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static final Bitmap combineBitmapsWithBackground(Fragment fragment, int i, Bitmap... bitmapArr) {
        int color = ContextCompat.getColor(fragment.requireContext(), i);
        int width = bitmapArr[0].getWidth();
        int height = 0;
        for (Bitmap bitmap : bitmapArr) {
            height += bitmap.getHeight();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(color);
        int height2 = 0;
        for (Bitmap bitmap2 : bitmapArr) {
            canvas.drawBitmap(bitmap2, 0.0f, height2, (Paint) null);
            height2 += bitmap2.getHeight();
        }
        return bitmapCreateBitmap;
    }

    private static final Uri saveBitmapToMediaStore(Fragment fragment, Bitmap bitmap) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", "full_page_" + System.currentTimeMillis() + ".png");
            contentValues.put("mime_type", "image/png");
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.put("is_pending", (Integer) 1);
            }
            Uri uriInsert = fragment.requireContext().getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (uriInsert != null) {
                OutputStream outputStreamOpenOutputStream = fragment.requireContext().getContentResolver().openOutputStream(uriInsert);
                try {
                    OutputStream outputStream = outputStreamOpenOutputStream;
                    if (outputStream != null) {
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                    if (Build.VERSION.SDK_INT >= 29) {
                        contentValues.clear();
                        contentValues.put("is_pending", (Integer) 0);
                        fragment.requireContext().getContentResolver().update(uriInsert, contentValues, null, null);
                    }
                } finally {
                }
            }
            return uriInsert;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static final void shareScreenshot(Fragment fragment, Uri uri) {
        String string = fragment.getString(C3577R.string.refer_friend_whatsapp_message);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/png");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.TEXT", string);
        intent.addFlags(1);
        try {
            fragment.startActivity(Intent.createChooser(intent, "Share Screenshot"));
        } catch (Exception unused) {
            Toast.makeText(fragment.requireContext(), "Error sharing screenshot.", 0).show();
        }
    }

    public static final void shareLaborbookContentOnWhatsApp(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        String string = fragment.getString(C3577R.string.refer_friend_whatsapp_message);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        InputStream inputStreamOpenRawResource = fragment.getResources().openRawResource(C3577R.raw.share_image);
        Intrinsics.checkNotNullExpressionValue(inputStreamOpenRawResource, "openRawResource(...)");
        File file = new File(fragment.requireContext().getCacheDir(), "share_image.jpeg");
        FileOutputStream fileOutputStream = inputStreamOpenRawResource;
        try {
            InputStream inputStream = fileOutputStream;
            fileOutputStream = new FileOutputStream(file);
            try {
                ByteStreamsKt.copyTo$default(inputStream, fileOutputStream, 0, 2, null);
                CloseableKt.closeFinally(fileOutputStream, null);
                CloseableKt.closeFinally(fileOutputStream, null);
                Uri uriForFile = FileProvider.getUriForFile(fragment.requireContext(), fragment.requireContext().getPackageName() + ".provider", file);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("image/*");
                intent.putExtra("android.intent.extra.TEXT", string);
                intent.putExtra("android.intent.extra.STREAM", uriForFile);
                intent.addFlags(1);
                intent.setPackage("com.whatsapp");
                try {
                    fragment.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    Toast.makeText(fragment.requireContext(), "WhatsApp is not installed on your device.", 0).show();
                } catch (IOException unused2) {
                    Toast.makeText(fragment.requireContext(), "Failed to prepare image for sharing.", 0).show();
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
            }
        }
    }

    public static final String appendDotsAfterFirstTwelve(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() <= 12) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(0, 12);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return sb.append(strSubstring).append("...").toString();
    }

    public static final String toReadableDate(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).parse(str);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.getDefault());
            if (date == null) {
                date = new Date();
            }
            return simpleDateFormat.format(date);
        } catch (Exception unused) {
            return str;
        }
    }
}
