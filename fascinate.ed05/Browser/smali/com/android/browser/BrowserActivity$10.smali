.class Lcom/android/browser/BrowserActivity$10;
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
    .line 3005
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 3006
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 3144
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 3009
    .restart local p0
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 3010
    .local v23, url:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3011
    .local v22, title:Ljava/lang/String;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 3014
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/util/HashMap;

    .line 3015
    .local v15, focusNodeMap:Ljava/util/HashMap;
    const-string v5, "webview"

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/webkit/WebView;

    .line 3017
    .local v24, view:Landroid/webkit/WebView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 3020
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    sparse-switch v5, :sswitch_data_1

    goto :goto_0

    .line 3023
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 3026
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$800(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v19

    .line 3027
    .local v19, parent:Lcom/android/browser/Tab;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v18

    .line 3028
    .local v18, newTab:Lcom/android/browser/Tab;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 3029
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 3033
    .end local v18           #newTab:Lcom/android/browser/Tab;
    .end local v19           #parent:Lcom/android/browser/Tab;
    :sswitch_3
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    const-class v6, Lcom/android/browser/AddBookmarkPage;

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3035
    .local v16, intent:Landroid/content/Intent;
    const-string v5, "url"

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3036
    const-string v5, "title"

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3041
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v5, "url = "

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3043
    .local v20, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$900(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3049
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3052
    const/4 v14, 0x0

    .line 3053
    .local v14, favicon:Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    .line 3054
    .local v21, thumbnail:Landroid/graphics/Bitmap;
    const/4 v5, 0x5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3056
    .local v17, linkTitle:Ljava/lang/String;
    const/4 v5, 0x6

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 3058
    .local v13, data:[B
    if-eqz v13, :cond_1

    .line 3059
    const/4 v5, 0x0

    array-length v6, v13

    invoke-static {v13, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3062
    :cond_1
    const/4 v5, 0x7

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 3064
    if-eqz v13, :cond_2

    .line 3065
    const/4 v5, 0x0

    array-length v6, v13

    invoke-static {v13, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 3068
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object v3, v14

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 3071
    .end local v13           #data:[B
    .end local v14           #favicon:Landroid/graphics/Bitmap;
    .end local v17           #linkTitle:Ljava/lang/String;
    .end local v21           #thumbnail:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v6, v0

    const v7, 0x7f090064

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3077
    .end local v12           #c:Landroid/database/Cursor;
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3081
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v6, v23

    invoke-virtual/range {v5 .. v11}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 3088
    .end local v15           #focusNodeMap:Ljava/util/HashMap;
    .end local v22           #title:Ljava/lang/String;
    .end local v23           #url:Ljava/lang/String;
    .end local v24           #view:Landroid/webkit/WebView;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3092
    .restart local p0
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto/16 :goto_0

    .line 3096
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$1000(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$1000(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$800(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 3106
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView;

    .line 3107
    .restart local v24       #view:Landroid/webkit/WebView;
    if-eqz v24, :cond_0

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$1100(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 3115
    .end local v24           #view:Landroid/webkit/WebView;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TitleBar;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$1300(Lcom/android/browser/BrowserActivity;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v25

    .line 3118
    .local v25, webView:Landroid/webkit/WebView;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 3124
    .restart local v23       #url:Ljava/lang/String;
    if-eqz v25, :cond_4

    .line 3125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TitleBar;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/browser/TitleBar;->setProgress(I)V

    goto/16 :goto_0

    .line 3129
    :cond_4
    const-string v5, "browser"

    const-string v6, "handleMessage : ON_PAGE_STARTED getTopWindow() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3139
    .end local v23           #url:Ljava/lang/String;
    .end local v25           #webView:Landroid/webkit/WebView;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    if-eqz v5, :cond_0

    .line 3140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/browser/WebGLZoomView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3006
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

    .line 3020
    :sswitch_data_1
    .sparse-switch
        0x7f0d008e -> :sswitch_1
        0x7f0d0092 -> :sswitch_4
        0x7f0d00c6 -> :sswitch_2
        0x7f0d00c7 -> :sswitch_3
        0x7f0d00c8 -> :sswitch_6
        0x7f0d00c9 -> :sswitch_5
        0x7f0d00cb -> :sswitch_6
        0x7f0d00cc -> :sswitch_1
    .end sparse-switch
.end method
