.class public Lcom/sec/android/app/cradle/HttpClientThread;
.super Ljava/lang/Object;
.source "HttpClientThread.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Landroid/content/Context;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "url"
    .parameter "headers"
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/sec/android/app/cradle/HttpClientThread;->sendRequest(ILjava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static sendRequest(ILjava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Landroid/content/Context;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter "method"
    .parameter "url"
    .parameter "body"
    .parameter "headers"
    .parameter "context"

    .prologue
    .line 69
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 70
    .local v0, hParam:Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 73
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 74
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 75
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 77
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 78
    .local v2, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 82
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {p4}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #hParam:Lorg/apache/http/params/HttpParams;
    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {p4}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    .end local p4
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .end local v2           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    const-string v3, "http"

    invoke-direct {v0, p4, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    .local v0, httpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p4

    const-string v2, "http.route.default-proxy"

    invoke-interface {p4, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 88
    .end local v0           #httpHost:Lorg/apache/http/HttpHost;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p4

    const-string v0, "http.protocol.cookie-policy"

    const-string v2, "rfc2109"

    invoke-interface {p4, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 89
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p4

    const-string v0, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p4, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 91
    const/4 p4, 0x0

    .line 92
    .local p4, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v0, 0x0

    .line 94
    .local v0, uri:Ljava/net/URI;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v0           #uri:Ljava/net/URI;
    .local p1, uri:Ljava/net/URI;
    move-object v0, p1

    .line 100
    .end local p1           #uri:Ljava/net/URI;
    .restart local v0       #uri:Ljava/net/URI;
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 123
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, p4

    .line 149
    .end local v0           #uri:Ljava/net/URI;
    .end local p2
    .end local p3
    .end local p4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_1
    return-object p1

    .line 95
    .restart local v0       #uri:Ljava/net/URI;
    .local p0, method:I
    .local p1, url:Ljava/net/URL;
    .restart local p2
    .restart local p3
    .restart local p4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception p1

    .line 97
    .local p1, e1:Ljava/net/URISyntaxException;
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local p1           #e1:Ljava/net/URISyntaxException;
    :pswitch_0
    new-instance p0, Lorg/apache/http/client/methods/HttpGet;

    .end local p0           #method:I
    invoke-direct {p0, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 104
    .local p0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    move-object p0, p0

    .end local p4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object p1, p0

    .line 126
    .end local v0           #uri:Ljava/net/URI;
    .end local p0           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local p2
    .local p1, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_2
    const-string p0, "User-Agent"

    const-string p2, "SAMSUNG-Android"

    invoke-interface {p1, p0, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string p0, "Accept"

    const-string p2, "text/html,application/xml"

    invoke-interface {p1, p0, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string p0, "Content-Type"

    const-string p2, "text/xml"

    invoke-interface {p1, p0, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p3, :cond_1

    .line 133
    invoke-virtual {p3}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 137
    :cond_1
    const/4 p2, 0x0

    .line 138
    .local p2, response:Lorg/apache/http/HttpResponse;
    new-instance p0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {p0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 140
    .local p0, bContext:Lorg/apache/http/protocol/HttpContext;
    :try_start_1
    invoke-virtual {v1, p1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object p0

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .end local p3
    .local p0, response:Lorg/apache/http/HttpResponse;
    :goto_3
    move-object v6, p1

    .end local p1           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v6, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object p1, p0

    move-object p0, v6

    .line 149
    .end local v6           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_1

    .line 107
    .restart local v0       #uri:Ljava/net/URI;
    .local p0, method:I
    .local p2, body:Ljava/lang/String;
    .restart local p3
    .restart local p4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_1
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 108
    .local p1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    move-object p4, p1

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, strEntity:Lorg/apache/http/entity/StringEntity;
    :try_start_2
    new-instance p0, Lorg/apache/http/entity/StringEntity;

    .end local p0           #method:I
    const-string v2, "UTF-8"

    invoke-direct {p0, p2, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    .end local v0           #strEntity:Lorg/apache/http/entity/StringEntity;
    .end local p2           #body:Ljava/lang/String;
    .local p0, strEntity:Lorg/apache/http/entity/StringEntity;
    :goto_4
    invoke-virtual {p1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object p1, p4

    .line 121
    .end local p4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p1, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_2

    .line 114
    .end local p0           #strEntity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #strEntity:Lorg/apache/http/entity/StringEntity;
    .local p1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local p2       #body:Ljava/lang/String;
    .restart local p4       #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_1
    move-exception p0

    .line 115
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    const-string p2, "ADVHTTP"

    .end local p2           #body:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    .line 119
    .end local v0           #strEntity:Lorg/apache/http/entity/StringEntity;
    .local p0, strEntity:Lorg/apache/http/entity/StringEntity;
    goto :goto_4

    .line 117
    .end local p0           #strEntity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #strEntity:Lorg/apache/http/entity/StringEntity;
    .restart local p2       #body:Ljava/lang/String;
    :catch_2
    move-exception p0

    .line 118
    .local p0, e:Ljava/lang/Exception;
    const-string p2, "ADVHTTP"

    .end local p2           #body:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    .end local v0           #strEntity:Lorg/apache/http/entity/StringEntity;
    .local p0, strEntity:Lorg/apache/http/entity/StringEntity;
    goto :goto_4

    .line 141
    .end local p4           #httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, bContext:Lorg/apache/http/protocol/HttpContext;
    .local p1, httpUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p2, response:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception p0

    .line 142
    .local p0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string p3, "ADVHTTP"

    .end local p3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClientProtocolException : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p2

    .line 147
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto :goto_3

    .line 143
    .local p0, bContext:Lorg/apache/http/protocol/HttpContext;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    .restart local p3
    :catch_4
    move-exception p0

    .line 144
    .local p0, e:Ljava/io/IOException;
    const-string p3, "ADVHTTP"

    .end local p3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p2

    .line 147
    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 145
    .local p0, bContext:Lorg/apache/http/protocol/HttpContext;
    .restart local p2       #response:Lorg/apache/http/HttpResponse;
    .restart local p3
    :catch_5
    move-exception p0

    .line 146
    .local p0, e:Ljava/lang/Exception;
    const-string p3, "ADVHTTP"

    .end local p3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p2

    .end local p2           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_3

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
