.class public Lcom/sec/android/app/cradle/AdvancedHttpClient;
.super Ljava/lang/Object;
.source "AdvancedHttpClient.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/sec/android/app/cradle/AdvancedHttpClient$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/AdvancedHttpClient$1;-><init>(Lcom/sec/android/app/cradle/AdvancedHttpClient;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient;->messageHandler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 105
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 108
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 128
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    move v2, v4

    .line 133
    :goto_0
    return v2

    .line 130
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 131
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 133
    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "headers"
    .parameter "handler"

    .prologue
    .line 68
    new-instance v0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;-><init>(Lcom/sec/android/app/cradle/AdvancedHttpClient;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V

    .line 76
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method
