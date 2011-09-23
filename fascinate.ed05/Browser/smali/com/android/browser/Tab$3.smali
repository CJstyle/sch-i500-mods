.class Lcom/android/browser/Tab$3;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/browser/Tab$3;ZLandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1204
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    return-void
.end method

.method private createWindow(ZLandroid/os/Message;)V
    .locals 6
    .parameter "dialog"
    .parameter "msg"

    .prologue
    .line 837
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 839
    .local v1, transport:Landroid/webkit/WebView$WebViewTransport;
    if-eqz p1, :cond_0

    .line 840
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->createSubWindow()Z

    .line 841
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserActivity;->attachSubWindow(Lcom/android/browser/Tab;)V

    .line 842
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$1100(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 851
    :goto_0
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 852
    return-void

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v2

    sget-object v3, Lcom/android/browser/BrowserActivity;->EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 846
    .local v0, newTab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    if-eq v0, v2, :cond_1

    .line 847
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 849
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 1177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    new-instance v0, Lcom/android/browser/Tab$3$4;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/Tab$3$4;-><init>(Lcom/android/browser/Tab$3;Landroid/webkit/ValueCallback;)V

    .line 1203
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1204
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "window"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 937
    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .parameter "consoleMessage"

    .prologue
    const/4 v5, 0x1

    const-string v4, "browser"

    .line 1119
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v5}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 1122
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0, p1}, Lcom/android/browser/ErrorConsoleView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    .line 1123
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->shouldShowErrorConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getShowState()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 1125
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 1129
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Console: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, message:Ljava/lang/String;
    sget-object v2, Lcom/android/browser/Tab$8;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1151
    :goto_0
    return v5

    .line 1135
    :pswitch_0
    const-string v2, "browser"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    :pswitch_1
    const-string v2, "browser"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1141
    :pswitch_2
    const-string v2, "browser"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1144
    :pswitch_3
    const-string v2, "browser"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1147
    :pswitch_4
    const-string v2, "browser"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 10
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f090010

    const/4 v7, 0x1

    const v6, 0x1080027

    const/4 v5, 0x0

    .line 858
    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v3}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 916
    :goto_0
    return v3

    .line 862
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v3}, Lcom/android/browser/Tab;->access$1100(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 863
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v4}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0900c5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900c6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v5

    .line 869
    goto :goto_0

    .line 870
    :cond_1
    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v3}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-nez v3, :cond_2

    .line 871
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v4}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0900c3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v5

    .line 877
    goto :goto_0

    .line 881
    :cond_2
    if-eqz p3, :cond_3

    .line 882
    invoke-direct {p0, p2, p4}, Lcom/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    move v3, v7

    .line 883
    goto :goto_0

    .line 887
    :cond_3
    new-instance v0, Lcom/android/browser/Tab$3$1;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/browser/Tab$3$1;-><init>(Lcom/android/browser/Tab$3;ZLandroid/os/Message;)V

    .line 896
    .local v0, allowListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/browser/Tab$3$2;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/Tab$3$2;-><init>(Lcom/android/browser/Tab$3;Landroid/os/Message;)V

    .line 904
    .local v1, blockListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v4}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0900bf

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900c0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900c1

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900c2

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 915
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v3, v7

    .line 916
    goto/16 :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1062
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/WebStorageSizeManager;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1066
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$1400(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$1400(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1110
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/GeolocationPermissionsPrompt;->show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 1100
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->onHideCustomView()V

    .line 1045
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 941
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 943
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 948
    :cond_1
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1081
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/WebStorageSizeManager;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1084
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 1009
    if-eqz p2, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1017
    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "title"

    .prologue
    .line 952
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, pageUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-lt v1, v2, :cond_2

    .line 1005
    :cond_1
    :goto_0
    return-void

    .line 961
    :cond_2
    new-instance v1, Lcom/android/browser/Tab$3$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/browser/Tab$3$3;-><init>(Lcom/android/browser/Tab$3;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab$3$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v4, 0x0

    .line 1022
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1025
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    invoke-virtual {v1, v4}, Lcom/android/browser/DownloadTouchIcon;->cancel(Z)Z

    .line 1027
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-nez v1, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/DownloadTouchIcon;

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-direct {v2, v3, v0, p1}, Lcom/android/browser/DownloadTouchIcon;-><init>(Lcom/android/browser/Tab;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 1032
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1034
    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 925
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/BrowserActivity;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserActivity;->openFileChooser(Landroid/webkit/ValueCallback;)V

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
