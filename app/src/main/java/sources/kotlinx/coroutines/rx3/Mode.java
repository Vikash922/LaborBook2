package kotlinx.coroutines.rx3;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: RxAwait.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m2722d2 = {"Lkotlinx/coroutines/rx3/Mode;", "", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, "", "(Ljava/lang/String;ILjava/lang/String;)V", InAppPurchaseConstants.METHOD_TO_STRING, "FIRST", "FIRST_OR_DEFAULT", "LAST", "SINGLE", "kotlinx-coroutines-rx3"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
final class Mode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Mode[] $VALUES;
    public static final Mode FIRST = new Mode("FIRST", 0, "awaitFirst");
    public static final Mode FIRST_OR_DEFAULT = new Mode("FIRST_OR_DEFAULT", 1, "awaitFirstOrDefault");
    public static final Mode LAST = new Mode("LAST", 2, "awaitLast");
    public static final Mode SINGLE = new Mode("SINGLE", 3, "awaitSingle");
    public final String s;

    private static final /* synthetic */ Mode[] $values() {
        return new Mode[]{FIRST, FIRST_OR_DEFAULT, LAST, SINGLE};
    }

    public static EnumEntries<Mode> getEntries() {
        return $ENTRIES;
    }

    public static Mode valueOf(String str) {
        return (Mode) Enum.valueOf(Mode.class, str);
    }

    public static Mode[] values() {
        return (Mode[]) $VALUES.clone();
    }

    private Mode(String str, int i, String str2) {
        this.s = str2;
    }

    static {
        Mode[] modeArr$values = $values();
        $VALUES = modeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(modeArr$values);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.s;
    }
}
