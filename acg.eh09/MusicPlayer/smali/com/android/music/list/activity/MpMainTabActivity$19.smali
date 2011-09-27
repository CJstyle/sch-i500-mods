.class Lcom/android/music/list/activity/MpMainTabActivity$19;
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
.field mFinishApp:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3138
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->mFinishApp:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3142
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3145
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->mFinishApp:Ljava/lang/Boolean;

    monitor-enter v1

    .line 3146
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3147
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3149
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    const-string v2, "/mnt/sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 3153
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3154
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const-class v3, Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3155
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v2, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 3156
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 3158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->mFinishApp:Ljava/lang/Boolean;

    .line 3160
    :cond_1
    monitor-exit v1

    .line 3219
    :cond_2
    :goto_0
    return-void

    .line 3163
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1200(Lcom/android/music/list/activity/MpMainTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3164
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 3165
    monitor-exit v1

    goto :goto_0

    .line 3178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v2, v7

    .line 3168
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 3169
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 3170
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_5

    .line 3171
    iget-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3172
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 3168
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 3176
    :cond_6
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 3177
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    .line 3178
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3180
    :cond_7
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3196
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00f4

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f0a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3197
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 3198
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3199
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    goto/16 :goto_0

    .line 3202
    :cond_8
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3205
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0, v6}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1402(Lcom/android/music/list/activity/MpMainTabActivity;Z)Z

    .line 3206
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 3207
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 3208
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3209
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    goto/16 :goto_0

    .line 3212
    :cond_9
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3214
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Media scanner ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v0, v7}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1402(Lcom/android/music/list/activity/MpMainTabActivity;Z)Z

    .line 3216
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 3217
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$19;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto/16 :goto_0
.end method
