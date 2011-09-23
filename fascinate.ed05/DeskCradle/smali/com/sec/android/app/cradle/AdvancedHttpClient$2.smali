.class Lcom/sec/android/app/cradle/AdvancedHttpClient$2;
.super Ljava/lang/Thread;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/AdvancedHttpClient;->get(Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

.field final synthetic val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

.field final synthetic val$headers:Lorg/apache/http/message/HeaderGroup;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/AdvancedHttpClient;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->val$headers:Lorg/apache/http/message/HeaderGroup;

    iput-object p4, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->val$url:Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->val$headers:Lorg/apache/http/message/HeaderGroup;

    iget-object v3, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    invoke-static {v3}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->access$000(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/cradle/HttpClientThread;->get(Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 71
    .local v0, response:Lorg/apache/http/HttpResponse;
    iget-object v1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/cradle/HttpResponseHandler;->setResponse(Lorg/apache/http/HttpResponse;)V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    invoke-static {v1}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->access$100(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->this$0:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    invoke-static {v2}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->access$100(Lcom/sec/android/app/cradle/AdvancedHttpClient;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/cradle/AdvancedHttpClient$2;->val$handler:Lcom/sec/android/app/cradle/HttpResponseHandler;

    invoke-static {v2, v4, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    return-void
.end method
