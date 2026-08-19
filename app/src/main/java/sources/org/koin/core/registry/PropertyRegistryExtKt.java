package org.koin.core.registry;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Properties;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.TextStreamsKt;
import kotlin.text.Charsets;
import org.koin.core.Koin;
import org.koin.core.error.NoPropertyFileFoundException;
import org.koin.core.logger.Level;
import org.koin.ext.StringExtKt;

/* JADX INFO: compiled from: PropertyRegistryExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0006\u001a\u0012\u0010\u0007\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003\u001a\u0012\u0010\t\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\n\u001a\u00020\u0001¨\u0006\u000b"}, m2722d2 = {"readDataFromFile", "Ljava/util/Properties;", "content", "", "loadEnvironmentProperties", "", "Lorg/koin/core/registry/PropertyRegistry;", "loadPropertiesFromFile", "fileName", "saveProperties", "properties", "koin-core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class PropertyRegistryExtKt {
    public static final void saveProperties(PropertyRegistry propertyRegistry, Properties properties) {
        Intrinsics.checkNotNullParameter(propertyRegistry, "<this>");
        Intrinsics.checkNotNullParameter(properties, "properties");
        if (propertyRegistry.get_koin().getLogger().isAt(Level.DEBUG)) {
            propertyRegistry.get_koin().getLogger().debug("load " + properties.size() + " properties");
        }
        for (Map.Entry entry : MapsKt.toMap(properties).entrySet()) {
            propertyRegistry.saveProperty$koin_core((String) entry.getKey(), StringExtKt.clearQuotes((String) entry.getValue()));
        }
    }

    public static final void loadPropertiesFromFile(PropertyRegistry propertyRegistry, String fileName) throws NoPropertyFileFoundException {
        String str;
        Intrinsics.checkNotNullParameter(propertyRegistry, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        if (propertyRegistry.get_koin().getLogger().isAt(Level.DEBUG)) {
            propertyRegistry.get_koin().getLogger().debug(Intrinsics.stringPlus("load properties from ", fileName));
        }
        URL resource = Koin.class.getResource(fileName);
        if (resource == null) {
            str = null;
        } else {
            str = new String(TextStreamsKt.readBytes(resource), Charsets.UTF_8);
        }
        if (str != null) {
            if (propertyRegistry.get_koin().getLogger().isAt(Level.INFO)) {
                propertyRegistry.get_koin().getLogger().info("loaded properties from file:'" + fileName + '\'');
            }
            saveProperties(propertyRegistry, readDataFromFile(str));
            return;
        }
        throw new NoPropertyFileFoundException("No properties found for file '" + fileName + '\'');
    }

    private static final Properties readDataFromFile(String str) throws IOException {
        Properties properties = new Properties();
        Charset charset = Charsets.UTF_8;
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        properties.load(new ByteArrayInputStream(bytes));
        return properties;
    }

    public static final void loadEnvironmentProperties(PropertyRegistry propertyRegistry) {
        Intrinsics.checkNotNullParameter(propertyRegistry, "<this>");
        if (propertyRegistry.get_koin().getLogger().isAt(Level.DEBUG)) {
            propertyRegistry.get_koin().getLogger().debug("load properties from environment");
        }
        Properties sysProperties = System.getProperties();
        Intrinsics.checkNotNullExpressionValue(sysProperties, "sysProperties");
        saveProperties(propertyRegistry, sysProperties);
        Map<String, String> map = System.getenv();
        Intrinsics.checkNotNullExpressionValue(map, "getenv()");
        Properties properties = new Properties();
        properties.putAll(map);
        saveProperties(propertyRegistry, properties);
    }
}
