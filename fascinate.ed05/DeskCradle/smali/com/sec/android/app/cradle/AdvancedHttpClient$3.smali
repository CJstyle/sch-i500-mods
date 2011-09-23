.class Lcom/sec/android/app/cradle/AdvancedHttpClient$3;
.super Ljava/lang/Thread;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/AdvancedHttpClient;->post(Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

.field final synthetic val$headers:Lorg/apache/http/message/HeaderGroup;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/AdvancedHttpClient;Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$body:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$headers:Lorg/apache/http/message/HeaderGroup;

    iput-object p5, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$url:Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$body:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$headers:Lorg/apache/http/message/HeaderGroup;

    iget-object v4, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    invoke-static {v4}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->access$000(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/cradle/HttpClientThread;->post(Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 96
    .local v0, response:Lorg/apache/http/HttpResponse;
    iget-object v1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/cradle/HttpResponseHandler;->setResponse(Lorg/apache/http/HttpResponse;)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    invoke-static {v1}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->access$100(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    invoke-static {v2}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->access$100(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$3;->val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

    invoke-static {v2, v5, v5, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method
