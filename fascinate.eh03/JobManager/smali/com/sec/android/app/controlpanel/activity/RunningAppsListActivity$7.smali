.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;
.super Landroid/os/Handler;
.source "RunningAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const-string v8, "Kill runningApplication! "

    const-string v10, "RunningAppsListActivity"

    .line 222
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 226
    .local v2, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->removeItem(I)V

    .line 227
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 228
    const-string v6, "RunningAppsListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kill runningApplication! "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningAppPackageList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->sort()V

    .line 238
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 239
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/MemoryInfo;->updateObservedPackageList(Ljava/util/List;)V

    .line 240
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V

    .line 241
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$500(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    goto/16 :goto_0

    .line 244
    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$600(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$600(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->cancel(Z)Z

    .line 245
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    new-instance v7, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {v7, v8, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V

    invoke-static {v6, v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$602(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    .line 248
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$600(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 251
    .end local v0           #cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :pswitch_4
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 253
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/PackageInfo;->reloadAppName()V

    .line 254
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/PackageInfo;->clearCache()V

    goto/16 :goto_0

    .line 259
    :pswitch_5
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v3

    .line 260
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 261
    .local v5, removeTarget:Ljava/util/Set;,"Ljava/util/Set<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 262
    .local v4, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    const-string v6, "RunningAppsListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kill runningApplication! "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;)V

    .line 265
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    .end local v4           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 269
    .restart local v4       #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 271
    .end local v4           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setList(Ljava/util/List;)V

    .line 272
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const v8, 0x7f06002c

    invoke-virtual {v7, v8}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 279
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #items:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v5           #removeTarget:Ljava/util/Set;,"Ljava/util/Set<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :pswitch_6
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 280
    .restart local v4       #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 281
    const-string v6, "RunningAppsListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove item(memory size zero) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
