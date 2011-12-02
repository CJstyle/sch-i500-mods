.class Lcom/android/music/list/activity/MpMainTabActivity$15;
.super Landroid/content/BroadcastReceiver;
.source "MpMainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2551
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2553
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2555
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2556
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2563
    .local v3, path:Ljava/lang/String;
    const-string v7, "/mnt/sdcard"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 2565
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const-class v8, Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2566
    .local v1, emptyActivity:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v7, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 2567
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 2631
    .end local v1           #emptyActivity:Landroid/content/Intent;
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 2571
    .restart local v3       #path:Ljava/lang/String;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local p1
    :cond_2
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1200(Lcom/android/music/list/activity/MpMainTabActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2572
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    goto :goto_0

    .line 2577
    :cond_3
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v8}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2584
    .local v6, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    const/4 v2, 0x0

    .end local p1
    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 2585
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v8}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {p1}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2586
    .local v4, tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_4

    .line 2587
    iget-object v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2588
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 2584
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2593
    .end local v4           #tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_5
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v8}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 2596
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    goto :goto_0

    .line 2598
    .end local v2           #i:I
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    .restart local p1
    :cond_6
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2606
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v7

    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v8}, Lcom/android/music/list/activity/MpMainTabActivity;->access$600(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a00ec

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v12}, Lcom/android/music/list/activity/MpMainTabActivity;->access$600(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x7f0a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2607
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 2608
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2610
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    goto/16 :goto_0

    .line 2614
    :cond_7
    const-string v7, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2617
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1402(Lcom/android/music/list/activity/MpMainTabActivity;Z)Z

    .line 2618
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v7

    const v8, 0x7f0a00eb

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(I)V

    .line 2619
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 2620
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2621
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    goto/16 :goto_0

    .line 2624
    :cond_8
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2626
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Media scanner ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1402(Lcom/android/music/list/activity/MpMainTabActivity;Z)Z

    .line 2628
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v8}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 2629
    iget-object v7, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v7, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto/16 :goto_0
.end method
