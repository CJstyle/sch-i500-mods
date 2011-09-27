.class Lcom/android/music/list/view/AbstractMpListView$3;
.super Landroid/os/Handler;
.source "AbstractMpListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/AbstractMpListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/AbstractMpListView;


# direct methods
.method constructor <init>(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2602
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "ThreadItemCount"

    .line 2613
    :try_start_0
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface {v6}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->InitIndex()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2620
    :goto_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 2621
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v6, Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2622
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2682
    :goto_1
    return-void

    .line 2614
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 2616
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2627
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 2628
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 2629
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "CallFromThread"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2630
    .local v2, callFromThread:Z
    if-eqz v2, :cond_1

    .line 2632
    :try_start_1
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2635
    :goto_2
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2671
    :cond_1
    :goto_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "PlaylistFull"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2672
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00f0

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2675
    :cond_2
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 2681
    .end local v2           #callFromThread:Z
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 2640
    .restart local v2       #callFromThread:Z
    :pswitch_0
    const-string v6, "ThreadItemCount"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_4

    .line 2641
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "ThreadItemCount"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2645
    .local v0, add:Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 2644
    .end local v0           #add:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0101

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #add:Ljava/lang/String;
    goto :goto_4

    .line 2649
    .end local v0           #add:Ljava/lang/String;
    :pswitch_1
    const-string v6, "ThreadItemCount"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 2650
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2657
    .local v3, delete:Ljava/lang/String;
    :goto_5
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 2651
    .end local v3           #delete:Ljava/lang/String;
    :cond_5
    const-string v6, "ThreadItemCount"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_6

    .line 2652
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00fa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "ThreadItemCount"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #delete:Ljava/lang/String;
    goto :goto_5

    .line 2656
    .end local v3           #delete:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00ff

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #delete:Ljava/lang/String;
    goto :goto_5

    .line 2661
    .end local v3           #delete:Ljava/lang/String;
    :pswitch_2
    const-string v6, "ThreadItemCount"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_7

    .line 2662
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00f9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "ThreadItemCount"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2667
    .local v5, remove:Ljava/lang/String;
    :goto_6
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 2666
    .end local v5           #remove:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/android/music/list/view/AbstractMpListView$3;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, v6, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0100

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #remove:Ljava/lang/String;
    goto :goto_6

    .line 2633
    .end local v5           #remove:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 2635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
