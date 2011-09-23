.class Lcom/android/browser/BrowserActivity$4;
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
    .line 452
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "browser"

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, visible:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, action:Ljava/lang/String;
    const-string v3, "ResponseAxT9Info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    const-string v3, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 461
    const-string v3, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowserActivity IME broadcast receiver = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v3, :cond_2

    .line 465
    if-ne v1, v6, :cond_3

    .line 467
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 470
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 471
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3, v7}, Lcom/android/browser/BrowserActivity;->access$202(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 474
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 475
    .local v2, webview:Landroid/webkit/WebView;
    if-eqz v2, :cond_1

    .line 476
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 480
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->pause()V

    .line 481
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iput-boolean v6, v3, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    .line 503
    .end local v2           #webview:Landroid/webkit/WebView;
    :cond_2
    :goto_0
    return-void

    .line 485
    :cond_3
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-boolean v3, v3, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v3, :cond_5

    .line 487
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 488
    .restart local v2       #webview:Landroid/webkit/WebView;
    if-eqz v2, :cond_4

    .line 489
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 491
    :cond_4
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v3, v5}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 493
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->resume()V

    .line 494
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iput-boolean v5, v3, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    goto :goto_0

    .line 498
    .end local v2           #webview:Landroid/webkit/WebView;
    :cond_5
    const-string v3, "browser"

    const-string v3, "BrowserActivity IME broadcast receiver : pending zoomview resume"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
