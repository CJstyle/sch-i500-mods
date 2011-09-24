.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 165
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    .line 175
    const-string v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 177
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 180
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 53
    const-string v5, "http_proxy"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 57
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 58
    .local v2, i:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    move-object v5, v7

    .line 96
    .end local v2           #i:I
    :goto_0
    return-object v5

    .line 64
    .restart local v2       #i:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 72
    .end local v2           #i:I
    :cond_1
    const/4 v3, 0x0

    .line 73
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 74
    .local v4, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 79
    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 84
    const-string/jumbo v5, "wifi_http_proxy"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    move-object v5, v1

    .line 89
    goto :goto_0

    :cond_3
    move-object v5, v7

    .line 92
    goto :goto_0

    .line 96
    :cond_4
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v8, -0x1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 107
    const-string v6, "http_proxy"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 111
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 112
    .local v2, i:I
    if-ne v2, v8, :cond_0

    move v6, v8

    .line 150
    .end local v2           #i:I
    :goto_0
    return v6

    .line 121
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 129
    .end local v2           #i:I
    :cond_1
    const/4 v3, 0x0

    .line 130
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 131
    .local v4, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_2

    .line 132
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 134
    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 139
    const-string/jumbo v6, "wifi_http_port"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 143
    .local v5, port:I
    if-ne v5, v8, :cond_3

    .line 144
    const/16 v5, 0x1f90

    :cond_3
    move v6, v5

    .line 145
    goto :goto_0

    .line 150
    .end local v5           #port:I
    :cond_4
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    goto :goto_0
.end method
