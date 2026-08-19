package com.itextpdf.styledxmlparser.resolver.resource;

import com.facebook.share.internal.ShareInternalUtility;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.itextpdf.commons.utils.MessageFormatUtil;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;

/* JADX INFO: loaded from: classes6.dex */
public class UriResolver {
    private URL baseUrl;
    private boolean isLocalBaseUri;

    public UriResolver(String str) {
        if (str == null) {
            throw new IllegalArgumentException("baseUri");
        }
        resolveBaseUrlOrPath(str);
    }

    public String getBaseUri() {
        return this.baseUrl.toExternalForm();
    }

    public URL resolveAgainstBaseUri(String str) throws MalformedURLException {
        String strEncode = UriEncodeUtil.encode(str.trim());
        URL url = null;
        if (this.isLocalBaseUri && !strEncode.startsWith("file:")) {
            try {
                Path path = Paths.get(strEncode, new String[0]);
                if (path.isAbsolute()) {
                    url = path.toUri().toURL();
                }
            } catch (Exception unused) {
            }
        }
        return url == null ? new URL(this.baseUrl, strEncode) : url;
    }

    public boolean isLocalBaseUri() {
        return this.isLocalBaseUri;
    }

    private void resolveBaseUrlOrPath(String str) {
        String strTrim = str.trim();
        URL urlBaseUriAsUrl = baseUriAsUrl(UriEncodeUtil.encode(strTrim));
        this.baseUrl = urlBaseUriAsUrl;
        if (urlBaseUriAsUrl == null) {
            this.baseUrl = uriAsFileUrl(strTrim);
        }
        if (this.baseUrl == null) {
            throw new IllegalArgumentException(MessageFormatUtil.format("Invalid base URI: {0}", strTrim));
        }
    }

    private URL baseUriAsUrl(String str) {
        URL url = null;
        try {
            URI uri = new URI(str);
            if (uri.isAbsolute()) {
                url = uri.toURL();
                if (ShareInternalUtility.STAGING_PARAM.equals(uri.getScheme())) {
                    this.isLocalBaseUri = true;
                }
            }
        } catch (Exception unused) {
        }
        return url;
    }

    private URL uriAsFileUrl(String str) {
        URL url = null;
        try {
            Path path = Paths.get(str, new String[0]);
            if (isPathRooted(path, str)) {
                url = new URI("file:///" + encode(path, path.toAbsolutePath().normalize().toString())).toURL();
            } else {
                url = new URL(Paths.get("", new String[0]).toUri().toURL(), encode(path, str));
            }
            this.isLocalBaseUri = true;
        } catch (Exception unused) {
        }
        return url;
    }

    private String encode(Path path, String str) {
        String strEncode = UriEncodeUtil.encode(str.replace("\\", RemoteSettings.FORWARD_SLASH_STRING));
        if (Files.isDirectory(path, new LinkOption[0]) && !strEncode.endsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
            strEncode = strEncode + RemoteSettings.FORWARD_SLASH_STRING;
        }
        return strEncode.replaceFirst("/*\\\\*", "");
    }

    private boolean isPathRooted(Path path, String str) {
        return path.isAbsolute() || str.startsWith(RemoteSettings.FORWARD_SLASH_STRING);
    }
}
