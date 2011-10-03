.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


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
    .line 293
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .locals 10
    .parameter "o"

    .prologue
    const/4 v9, 0x3

    .line 295
    instance-of v7, p1, Lcom/sec/android/app/controlpanel/CpuInfo;

    if-eqz v7, :cond_2

    .line 296
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/controlpanel/CpuInfo;

    move-object v3, v0

    .line 297
    .local v3, c:Lcom/sec/android/app/controlpanel/CpuInfo;
    const/4 v6, 0x0

    .line 298
    .local v6, totalCpuUsage:F
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v2

    .line 299
    .local v2, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    if-eqz v2, :cond_0

    .line 300
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 301
    .local v1, a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsage(I)F

    move-result v4

    .line 303
    .local v4, cpuUsage:F
    invoke-virtual {v1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCpuUsage(F)V

    .line 304
    add-float/2addr v6, v4

    .line 305
    goto :goto_0

    .line 307
    .end local v1           #a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v4           #cpuUsage:F
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    .end local v2           #appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v3           #c:Lcom/sec/android/app/controlpanel/CpuInfo;
    .end local v6           #totalCpuUsage:F
    :cond_1
    :goto_1
    return-void

    .line 308
    :cond_2
    instance-of v7, p1, Lcom/sec/android/app/controlpanel/MemoryInfo;

    if-eqz v7, :cond_3

    .line 309
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 311
    :cond_3
    instance-of v7, p1, Lcom/sec/android/app/controlpanel/PackageInfo;

    if-eqz v7, :cond_1

    .line 312
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v7}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
