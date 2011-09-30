.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 477
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 485
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static checkIOExceptionHttpErrorCode(Ljava/lang/String;)I
    .locals 9
    .parameter "errorMessage"

    .prologue
    const-string v8, "HTTP error : "

    .line 78
    const/4 v2, 0x0

    .local v2, errorMessageLength:I
    const/4 v4, 0x0

    .local v4, preHeadLength:I
    const/4 v1, -0x1

    .line 79
    .local v1, errorCode:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 82
    const/4 v6, -0x1

    .line 108
    :goto_0
    return v6

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 86
    const-string v6, "HTTP error : "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 88
    if-le v2, v4, :cond_1

    .line 89
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 90
    if-ge v3, v4, :cond_3

    .line 91
    const-string v6, "HTTP error : "

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_4

    .line 100
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 102
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    :goto_2
    move v6, v1

    .line 108
    goto :goto_0

    .line 95
    .restart local v3       #i:I
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v3           #i:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 104
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Mms:transaction"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    .line 432
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, userAgent:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mms_user_agent"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    if-nez v3, :cond_0

    .line 440
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 442
    :cond_0
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 443
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 444
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 449
    .local v2, soTimeout:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_1
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 454
    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 463
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 466
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 468
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 427
    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 6
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p3, :cond_0

    .line 150
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "URL must not be null."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "Mms:transaction"

    const-string v1, "httpConnection: params list"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ttoken\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\turl\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmethod\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p5, v2, :cond_3

    const-string v2, "POST"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tisProxySet\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tproxyHost\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tproxyPort\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    const/4 v0, 0x0

    .line 171
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, hostUrl:Ljava/net/URI;
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    .end local v1           #hostUrl:Ljava/net/URI;
    const-string v4, "http"

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    .local v2, target:Lorg/apache/http/HttpHost;
    invoke-static {p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, req:Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_0

    .line 193
    const-string p0, "Mms:transaction"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HTTP method: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Must be one of POST["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] or GET["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 196
    const/4 p0, 0x0

    .line 414
    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_2
    move-object p1, p0

    move-object p0, v0

    .line 418
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p4
    .end local p5
    .end local p6
    .end local p7
    .end local p8
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_1
    return-object p1

    .line 157
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_3
    const/4 v2, 0x2

    if-ne p5, v2, :cond_4

    const-string v2, "GET"

    goto/16 :goto_0

    :cond_4
    const-string v2, "UNKNOWN"

    goto/16 :goto_0

    .line 180
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance p5, Lcom/android/mms/transaction/ProgressCallbackEntity;

    .end local p5
    invoke-direct {p5, p0, p1, p2, p4}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 183
    .local p5, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string p1, "application/vnd.wap.mms-message"

    .end local p1
    invoke-virtual {p5, p1}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 185
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 186
    .local p1, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p1, p5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 187
    move-object p1, p1

    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .local p1, req:Lorg/apache/http/HttpRequest;
    move-object v1, p1

    .line 200
    .end local p1           #req:Lorg/apache/http/HttpRequest;
    .end local p5           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    :goto_2
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .line 201
    .local p1, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_5

    .line 202
    new-instance p2, Lorg/apache/http/HttpHost;

    invoke-direct {p2, p7, p8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p2}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 225
    :cond_5
    invoke-interface {v1, p1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 228
    const-string p1, "Accept"

    .end local p1           #params:Lorg/apache/http/params/HttpParams;
    const-string p2, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object p1

    .line 231
    .local p1, xWapProfileTagName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object p2

    .line 234
    .local p2, xWapProfileUrl:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .end local p2           #xWapProfileUrl:Ljava/lang/String;
    const-string p4, "mms_x_wap_profile_url"

    .end local p4
    invoke-static {p2, p4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 238
    .restart local p2       #xWapProfileUrl:Ljava/lang/String;
    if-nez p2, :cond_6

    .line 239
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object p2

    .line 241
    :cond_6
    if-eqz p2, :cond_8

    .line 242
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 243
    const-string p4, "Mms:transaction"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "[HttpUtils] httpConn: xWapProfUrl="

    .end local p6
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_7
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object p1

    .line 257
    .local p1, extraHttpParams:Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 258
    const-string p2, "phone"

    .end local p2           #xWapProfileUrl:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p5

    .line 261
    .local p5, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object p4

    .line 262
    .local p4, line1Key:Ljava/lang/String;
    const-string p0, "\\|"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 264
    .local p0, paramList:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length p2, p0

    .local p2, len$:I
    const/4 p1, 0x0

    .end local p7
    .end local p8
    .local p1, i$:I
    :goto_3
    if-ge p1, p2, :cond_b

    aget-object p6, p0, p1

    .line 265
    .local p6, paramPair:Ljava/lang/String;
    const-string p7, ":"

    const/4 p8, 0x2

    invoke-virtual {p6, p7, p8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p7

    .line 267
    .local p7, splitPair:[Ljava/lang/String;
    array-length p6, p7

    .end local p6           #paramPair:Ljava/lang/String;
    const/4 p8, 0x2

    if-ne p6, p8, :cond_a

    .line 268
    const/4 p6, 0x0

    aget-object p6, p7, p6

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    .line 269
    .local p6, name:Ljava/lang/String;
    const/4 p8, 0x1

    aget-object p7, p7, p8

    .end local p7           #splitPair:[Ljava/lang/String;
    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p7

    .line 271
    .local p7, value:Ljava/lang/String;
    if-eqz p4, :cond_9

    .line 272
    invoke-virtual {p7, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    .line 274
    :cond_9
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-nez p8, :cond_a

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-nez p8, :cond_a

    .line 275
    invoke-interface {v1, p6, p7}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local p6           #name:Ljava/lang/String;
    .end local p7           #value:Ljava/lang/String;
    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 190
    .end local p2           #len$:I
    .local p0, context:Landroid/content/Context;
    .local p1, token:J
    .local p4, pdu:[B
    .local p5, method:I
    .local p6, isProxySet:Z
    .local p7, proxyHost:Ljava/lang/String;
    .restart local p8
    :pswitch_1
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    .end local p1           #token:J
    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .local p1, req:Lorg/apache/http/HttpRequest;
    move-object v1, p1

    .line 191
    .end local p1           #req:Lorg/apache/http/HttpRequest;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_2

    .line 280
    .end local p0           #context:Landroid/content/Context;
    .end local p4           #pdu:[B
    .end local p5           #method:I
    .end local p6           #isProxySet:Z
    .end local p7           #proxyHost:Ljava/lang/String;
    .end local p8
    :cond_b
    const-string p0, "Accept-Language"

    sget-object p1, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    invoke-interface {v1, p0, p1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v2, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 283
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 284
    .local p1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 p4, 0xc8

    if-eq p2, p4, :cond_d

    .line 285
    new-instance p0, Ljava/io/IOException;

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HTTP error: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 402
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 403
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/net/URISyntaxException;
    :try_start_2
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 414
    if-eqz p0, :cond_c

    .line 415
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 418
    .end local p1           #e:Ljava/net/URISyntaxException;
    :cond_c
    :goto_4
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 287
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .local p1, status:Lorg/apache/http/StatusLine;
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    if-eqz p1, :cond_e

    .line 288
    const-string p1, "Mms:transaction"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[HttpUtils] http response "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_e
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object p6

    .line 294
    .local p6, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 295
    .local p0, body:[B
    if-eqz p6, :cond_10

    .line 303
    :try_start_4
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p1

    .line 304
    .local p1, contentEnc:Lorg/apache/http/Header;
    if-eqz p1, :cond_f

    .line 305
    const/4 p2, 0x0

    .line 306
    .local p2, encoding:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 308
    .end local p2           #encoding:Ljava/lang/String;
    .local p1, encoding:Ljava/lang/String;
    const-string p2, "Mms:transaction"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "httpConnection: content encoding is: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string p2, "Mms:transaction"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "httpConnection: transfer encoding is: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #encoding:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_f
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p1

    const-wide/16 p4, 0x0

    cmp-long p1, p1, p4

    if-lez p1, :cond_13

    .line 314
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p1

    long-to-int p1, p1

    new-array p0, p1, [B

    .line 315
    new-instance p1, Ljava/io/DataInputStream;

    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    .local p1, dis:Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 320
    :try_start_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 396
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_5
    if-eqz p6, :cond_10

    .line 397
    :try_start_7
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 414
    :cond_10
    if-eqz v0, :cond_11

    .line 415
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_11
    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto/16 :goto_1

    .line 321
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catch_1
    move-exception p1

    .line 322
    .local p1, e:Ljava/io/IOException;
    :try_start_8
    const-string p2, "Mms:transaction"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error closing input stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 396
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    :catchall_0
    move-exception p1

    if-eqz p6, :cond_12

    .line 397
    :try_start_9
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_12
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 404
    .end local p0           #body:[B
    .end local p6           #entity:Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 405
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/IllegalStateException;
    :try_start_a
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 414
    if-eqz p0, :cond_c

    .line 415
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 319
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, body:[B
    .local p1, dis:Ljava/io/DataInputStream;
    .restart local p6       #entity:Lorg/apache/http/HttpEntity;
    :catchall_1
    move-exception p2

    .line 320
    :try_start_b
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 323
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_6
    :try_start_c
    throw p2

    .line 321
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catch_3
    move-exception p1

    .line 322
    .local p1, e:Ljava/io/IOException;
    const-string p4, "Mms:transaction"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Error closing input stream: "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 327
    :cond_13
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 329
    const p2, 0x4c400

    .line 330
    .local p2, bytesTobeRead:I
    new-array v3, p2, [B

    .line 332
    .local v3, tempBody:[B
    const-string p1, "Mms:transaction"

    const-string p4, "httpConnection: transfer encoding is chunked"

    invoke-static {p1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string p1, "Mms:transaction"

    const-string p4, "httpConnection: transfer encoding is chunked"

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance p4, Ljava/io/DataInputStream;

    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 337
    .local p4, dis:Ljava/io/DataInputStream;
    const/4 p1, 0x0

    .line 338
    .local p1, bytesRead:I
    const/4 p5, 0x0

    .line 339
    .local p5, offset:I
    const/4 p8, 0x1

    .local p8, readStatus:Z
    move p7, p5

    .line 342
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p5           #offset:I
    .local p7, offset:I
    :goto_7
    :try_start_d
    invoke-virtual {p4, v3, p7, p2}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move-result p1

    .line 348
    :try_start_e
    const-string p5, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpConnection: read ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 349
    if-lez p1, :cond_1c

    .line 350
    sub-int/2addr p2, p1

    .line 351
    add-int p5, p7, p1

    .line 353
    .end local p7           #offset:I
    .restart local p5       #offset:I
    :goto_8
    if-lez p1, :cond_14

    if-gtz p2, :cond_1b

    :cond_14
    move v2, p8

    .end local p8           #readStatus:Z
    .local v2, readStatus:Z
    move v1, p5

    .line 355
    .end local p5           #offset:I
    .local v1, offset:I
    :goto_9
    if-gez p1, :cond_18

    if-lez v1, :cond_18

    const/4 p5, 0x1

    if-ne v2, p5, :cond_18

    .line 358
    :try_start_f
    new-array p0, v1, [B

    .line 359
    const/4 p5, 0x0

    const/4 p7, 0x0

    invoke-static {v3, p5, p0, p7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    const-string p5, "Mms:transaction"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "httpConnection: Chunked response length ["

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    const-string p8, "]"

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p5, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance p5, Ljava/io/File;

    const-string p7, "/data/anr/automms.dump"

    invoke-direct {p5, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local p5, file:Ljava/io/File;
    if-nez p5, :cond_16

    .line 363
    const-string p5, "Mms:transaction"

    .end local p5           #file:Ljava/io/File;
    const-string p7, "Unable to open file"

    invoke-static {p5, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 384
    .end local v3           #tempBody:[B
    :cond_15
    :goto_a
    :try_start_10
    invoke-virtual {p4}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 388
    .end local p1           #bytesRead:I
    .end local p2           #bytesTobeRead:I
    .end local p4           #dis:Ljava/io/DataInputStream;
    :goto_b
    :try_start_11
    const-string p1, "Mms:transaction"

    const-string p2, "Data input stream closed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_5

    .line 343
    .end local v1           #offset:I
    .end local v2           #readStatus:Z
    .restart local v3       #tempBody:[B
    .restart local p1       #bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .restart local p7       #offset:I
    .restart local p8       #readStatus:Z
    :catch_4
    move-exception p5

    .line 344
    .local p5, e:Ljava/io/IOException;
    const/4 p8, 0x0

    .line 345
    :try_start_12
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpConnection: error reading input stream"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p5

    .end local p5           #e:Ljava/io/IOException;
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move v2, p8

    .end local p8           #readStatus:Z
    .restart local v2       #readStatus:Z
    move v1, p7

    .line 346
    .end local p7           #offset:I
    .restart local v1       #offset:I
    goto :goto_9

    .line 365
    .local p5, file:Ljava/io/File;
    :cond_16
    const/4 p7, 0x0

    .line 367
    .local p7, fout:Ljava/io/FileOutputStream;
    :try_start_13
    new-instance p8, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {p8, p5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    .line 368
    .end local v3           #tempBody:[B
    .end local p7           #fout:Ljava/io/FileOutputStream;
    .local p8, fout:Ljava/io/FileOutputStream;
    :try_start_14
    invoke-virtual {p8, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 372
    if-eqz p8, :cond_15

    .line 373
    :try_start_15
    invoke-virtual {p8}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_a

    .line 383
    .end local p5           #file:Ljava/io/File;
    .end local p8           #fout:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception p5

    move-object p8, p5

    move p7, v2

    .end local v2           #readStatus:Z
    .local p7, readStatus:Z
    move p5, v1

    .line 384
    .end local v1           #offset:I
    .local p5, offset:I
    :goto_c
    :try_start_16
    invoke-virtual {p4}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    .line 388
    .end local p1           #bytesRead:I
    .end local p2           #bytesTobeRead:I
    .end local p4           #dis:Ljava/io/DataInputStream;
    .end local p5           #offset:I
    :goto_d
    :try_start_17
    const-string p1, "Mms:transaction"

    const-string p2, "Data input stream closed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw p8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 369
    .restart local v1       #offset:I
    .restart local v2       #readStatus:Z
    .restart local p1       #bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .local p5, file:Ljava/io/File;
    .local p7, fout:Ljava/io/FileOutputStream;
    :catch_5
    move-exception p5

    .line 370
    .local p5, e:Ljava/lang/Exception;
    :goto_e
    :try_start_18
    const-string p5, "Mms:transaction"

    .end local p5           #e:Ljava/lang/Exception;
    const-string p8, "httpConnection: File operation exception"

    invoke-static {p5, p8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 372
    if-eqz p7, :cond_15

    .line 373
    :try_start_19
    invoke-virtual {p7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    .line 372
    :catchall_3
    move-exception p5

    move-object v5, p5

    move-object p5, p7

    .end local p7           #fout:Ljava/io/FileOutputStream;
    .local p5, fout:Ljava/io/FileOutputStream;
    move-object p7, v5

    :goto_f
    if-eqz p5, :cond_17

    .line 373
    invoke-virtual {p5}, Ljava/io/FileOutputStream;->close()V

    :cond_17
    throw p7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 380
    .end local p5           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #tempBody:[B
    :cond_18
    :try_start_1a
    const-string p5, "Mms:transaction"

    const-string p7, "httpConnection: transfer encoding. Response entity too large or empty. Bigger than 305 K"

    invoke-static {p5, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto :goto_a

    .line 383
    :catchall_4
    move-exception p5

    move-object p8, p5

    move p7, v2

    .end local v2           #readStatus:Z
    .local p7, readStatus:Z
    move p5, v1

    .end local v1           #offset:I
    .local p5, offset:I
    goto :goto_c

    .line 385
    .end local v3           #tempBody:[B
    .end local p5           #offset:I
    .end local p7           #readStatus:Z
    .restart local v1       #offset:I
    .restart local v2       #readStatus:Z
    :catch_6
    move-exception p1

    .line 386
    .local p1, e:Ljava/io/IOException;
    :try_start_1b
    const-string p2, "Mms:transaction"

    .end local p2           #bytesTobeRead:I
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #dis:Ljava/io/DataInputStream;
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error closing input stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 385
    .end local v1           #offset:I
    .end local v2           #readStatus:Z
    .local p1, bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .restart local p5       #offset:I
    .restart local p7       #readStatus:Z
    :catch_7
    move-exception p1

    .line 386
    .local p1, e:Ljava/io/IOException;
    const-string p2, "Mms:transaction"

    .end local p2           #bytesTobeRead:I
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #dis:Ljava/io/DataInputStream;
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error closing input stream: "

    .end local p5           #offset:I
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 392
    .end local p7           #readStatus:Z
    .local v1, req:Lorg/apache/http/HttpRequest;
    .local v2, target:Lorg/apache/http/HttpHost;
    :cond_19
    const-string p1, "Mms:transaction"

    const-string p2, "httpConnection: Error - No content length and no chunked transfer"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_5

    .line 406
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p0           #body:[B
    .end local p6           #entity:Lorg/apache/http/HttpEntity;
    :catch_8
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 407
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/IllegalArgumentException;
    :try_start_1c
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 414
    if-eqz p0, :cond_c

    .line 415
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 408
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catch_9
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 409
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/net/SocketException;
    :try_start_1d
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 414
    if-eqz p0, :cond_c

    .line 415
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 410
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/net/SocketException;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catch_a
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 411
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/Exception;
    :try_start_1e
    invoke-static {p1, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 414
    if-eqz p0, :cond_c

    .line 415
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 414
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catchall_5
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    :goto_10
    if-eqz p0, :cond_1a

    .line 415
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1a
    throw p1

    .line 414
    :catchall_6
    move-exception p1

    goto :goto_10

    .line 383
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v3       #tempBody:[B
    .local p0, body:[B
    .local p1, bytesRead:I
    .restart local p2       #bytesTobeRead:I
    .restart local p4       #dis:Ljava/io/DataInputStream;
    .restart local p6       #entity:Lorg/apache/http/HttpEntity;
    .local p7, offset:I
    .local p8, readStatus:Z
    :catchall_7
    move-exception p5

    move-object v5, p5

    move p5, p7

    .end local p7           #offset:I
    .restart local p5       #offset:I
    move p7, p8

    .end local p8           #readStatus:Z
    .local p7, readStatus:Z
    move-object p8, v5

    goto/16 :goto_c

    .line 372
    .end local v3           #tempBody:[B
    .end local p7           #readStatus:Z
    .local v1, offset:I
    .local v2, readStatus:Z
    .local p5, file:Ljava/io/File;
    .local p8, fout:Ljava/io/FileOutputStream;
    :catchall_8
    move-exception p5

    move-object p7, p5

    move-object p5, p8

    .end local p8           #fout:Ljava/io/FileOutputStream;
    .local p5, fout:Ljava/io/FileOutputStream;
    goto/16 :goto_f

    .line 369
    .local p5, file:Ljava/io/File;
    .restart local p8       #fout:Ljava/io/FileOutputStream;
    :catch_b
    move-exception p5

    move-object p7, p8

    .end local p8           #fout:Ljava/io/FileOutputStream;
    .local p7, fout:Ljava/io/FileOutputStream;
    goto/16 :goto_e

    .end local v1           #offset:I
    .end local v2           #readStatus:Z
    .end local p7           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #tempBody:[B
    .local p5, offset:I
    .local p8, readStatus:Z
    :cond_1b
    move p7, p5

    .end local p5           #offset:I
    .local p7, offset:I
    goto/16 :goto_7

    :cond_1c
    move p5, p7

    .end local p7           #offset:I
    .restart local p5       #offset:I
    goto/16 :goto_8

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
