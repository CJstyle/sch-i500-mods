.class Lcom/android/browser/BrowserActivity$12;
.super Landroid/os/Handler;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
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
    .line 3495
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string v9, "url"

    const-string v6, "title"

    .line 3498
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 3640
    :cond_0
    :goto_0
    return-void

    .line 3501
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 3502
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3503
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3506
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 3507
    const-string v3, "webview"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 3509
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 3512
    iget v2, p1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 3515
    :sswitch_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/browser/BrowserActivity;->access$900(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 3518
    :sswitch_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1000(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3519
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2, v7}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    .line 3520
    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    .line 3521
    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 3525
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    const-class v4, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3527
    const-string v3, "url"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3528
    const-string v3, "title"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3529
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3533
    :sswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "url = "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3535
    invoke-static {v4, v7}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3536
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1100(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3541
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3546
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3548
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 3550
    if-eqz v3, :cond_4

    .line 3551
    array-length v4, v3

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3554
    :goto_1
    const/4 v4, 0x7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3556
    if-eqz v1, :cond_3

    .line 3557
    array-length v4, v1

    invoke-static {v1, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3560
    :goto_2
    iget-object v4, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v4, v2, v7, v3, v1}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3563
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    const v3, 0x7f090064

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3569
    :sswitch_5
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1, v7}, Lcom/android/browser/BrowserActivity;->access$800(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3573
    :sswitch_6
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    const-wide/16 v8, -0x1

    move-object v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v3 .. v9}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 3580
    :sswitch_7
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/android/browser/BrowserActivity;->access$900(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3584
    :sswitch_8
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto/16 :goto_0

    .line 3588
    :sswitch_9
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3589
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3593
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1000(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 3598
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView;

    .line 3599
    if-eqz v1, :cond_0

    .line 3600
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2, v1}, Lcom/android/browser/BrowserActivity;->access$1300(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 3607
    :sswitch_b
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TitleBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1500(Lcom/android/browser/BrowserActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3609
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 3610
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3616
    if-eqz v2, :cond_2

    .line 3617
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TitleBar;

    move-result-object v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setProgress(I)V

    goto/16 :goto_0

    .line 3621
    :cond_2
    const-string v1, "browser"

    const-string v2, "handleMessage : ON_PAGE_STARTED getTopWindow() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3631
    :sswitch_c
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_0

    .line 3634
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1, v8}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 3635
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->resume()V

    goto/16 :goto_0

    :cond_3
    move-object v1, v5

    goto/16 :goto_2

    :cond_4
    move-object v3, v5

    goto/16 :goto_1

    .line 3498
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6f -> :sswitch_c
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_8
    .end sparse-switch

    .line 3512
    :sswitch_data_1
    .sparse-switch
        0x7f0d0099 -> :sswitch_1
        0x7f0d009d -> :sswitch_4
        0x7f0d00d2 -> :sswitch_2
        0x7f0d00d3 -> :sswitch_3
        0x7f0d00d4 -> :sswitch_6
        0x7f0d00d5 -> :sswitch_5
        0x7f0d00d7 -> :sswitch_6
        0x7f0d00d8 -> :sswitch_1
    .end sparse-switch
.end method
