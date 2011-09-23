.class Lcom/sec/android/app/cradle/AdvancedHttpClient$1;
.super Landroid/os/Handler;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/AdvancedHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/AdvancedHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$1;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 31
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/cradle/HttpResponseHandler;

    .line 32
    .local v2, httpResponseHandler:Lcom/sec/android/app/cradle/HttpResponseHandler;
    invoke-virtual {v2}, Lcom/sec/android/app/cradle/HttpResponseHandler;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 34
    .local v1, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v1, :cond_1

    .line 36
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 37
    .local v3, responseResultEntity:Lorg/apache/http/HttpEntity;
    const/4 v4, 0x0

    .line 38
    .local v4, statusCode:I
    const/4 v6, 0x0

    .line 39
    .local v6, strStatus:Ljava/lang/String;
    const/4 v5, 0x0

    .line 41
    .local v5, strResult:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 43
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 44
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {v2, v4, v6, v5}, Lcom/sec/android/app/cradle/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v3           #responseResultEntity:Lorg/apache/http/HttpEntity;
    .end local v4           #statusCode:I
    .end local v5           #strResult:Ljava/lang/String;
    .end local v6           #strStatus:Ljava/lang/String;
    :goto_1
    return-void

    .line 46
    .restart local v3       #responseResultEntity:Lorg/apache/http/HttpEntity;
    .restart local v4       #statusCode:I
    .restart local v5       #strResult:Ljava/lang/String;
    .restart local v6       #strStatus:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 47
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0           #e:Landroid/net/ParseException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 49
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 51
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ADVHTTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #responseResultEntity:Lorg/apache/http/HttpEntity;
    .end local v4           #statusCode:I
    .end local v5           #strResult:Ljava/lang/String;
    .end local v6           #strStatus:Ljava/lang/String;
    :cond_1
    const/4 v7, -0x1

    const-string v8, "HTTP Error"

    const-string v9, ""

    invoke-virtual {v2, v7, v8, v9}, Lcom/sec/android/app/cradle/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
