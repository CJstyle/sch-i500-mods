.class Lcom/android/browser/BrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, visible:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, action:Ljava/lang/String;
    const-string v3, "ResponseAxT9Info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    const-string v3, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 360
    const-string v3, "LOGTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BrowserActivity IME broadcast receiver = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    if-eqz v3, :cond_1

    .line 364
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/browser/WebGLZoomView;->setVisibility(I)V

    .line 367
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 368
    .local v2, webview:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 369
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v3}, Lcom/android/browser/WebGLZoomView;->pause()V

    .line 384
    .end local v2           #webview:Landroid/webkit/WebView;
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v3, v6}, Lcom/android/browser/WebGLZoomView;->setVisibility(I)V

    .line 376
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 377
    .restart local v2       #webview:Landroid/webkit/WebView;
    if-eqz v2, :cond_3

    .line 378
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 380
    :cond_3
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v3}, Lcom/android/browser/WebGLZoomView;->resume()V

    goto :goto_0
.end method
