package com.boilerplate.navigator.tag;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\t"}, m2722d2 = {"Lcom/boilerplate/navigator/tag/UniqueTagCreator;", "Lcom/boilerplate/navigator/tag/TagCreator;", "<init>", "()V", "create", "", "fragment", "Landroidx/fragment/app/Fragment;", "Companion", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class UniqueTagCreator implements TagCreator {
    private static final String TAG_DIVIDER = "-_-";

    @Override // com.boilerplate.navigator.tag.TagCreator
    public String create(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        String str = fragment.getClass().getName() + TAG_DIVIDER + fragment.hashCode();
        Intrinsics.checkNotNullExpressionValue(str, "with(...)");
        return str;
    }
}
