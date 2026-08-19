package com.itextpdf.styledxmlparser.css.media;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class MediaQuery {
    private List<MediaExpression> expressions;
    private boolean not;
    private boolean only;
    private String type;

    MediaQuery(String str, List<MediaExpression> list, boolean z, boolean z2) {
        this.type = str;
        this.expressions = new ArrayList(list);
        this.only = z;
        this.not = z2;
    }

    public boolean matches(MediaDeviceDescription mediaDeviceDescription) {
        boolean z;
        boolean z2 = false;
        boolean z3 = this.type == null || MediaType.ALL.equals(this.type) || Objects.equals(this.type, mediaDeviceDescription.getType());
        Iterator<MediaExpression> it = this.expressions.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if (!it.next().matches(mediaDeviceDescription)) {
                z = false;
                break;
            }
        }
        if (z3 && z) {
            z2 = true;
        }
        return this.not ? !z2 : z2;
    }
}
