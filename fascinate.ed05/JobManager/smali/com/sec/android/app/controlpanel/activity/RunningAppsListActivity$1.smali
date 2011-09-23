.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 190
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 191
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    monitor-enter v1

    .line 193
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v3, removeTarget:Ljava/util/Set;,"Ljava/util/Set<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 195
    .local v2, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->canKilled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;)V

    .line 197
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v3           #removeTarget:Ljava/util/Set;,"Ljava/util/Set<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 201
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #removeTarget:Ljava/util/Set;,"Ljava/util/Set<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 202
    .restart local v2       #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    .end local v2           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->setList(Ljava/util/List;)V

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    .line 207
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->refreshObservedPkgList(Ljava/util/List;)V

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v4, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V

    .line 209
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const v6, 0x7f06002c

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 212
    return-void
.end method
