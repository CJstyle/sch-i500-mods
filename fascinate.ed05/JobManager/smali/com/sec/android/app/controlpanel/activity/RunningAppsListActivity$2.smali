.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;
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
    .line 221
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .locals 11
    .parameter "o"

    .prologue
    .line 223
    instance-of v9, p1, Lcom/sec/android/app/controlpanel/CpuInfo;

    if-eqz v9, :cond_0

    .line 224
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/controlpanel/CpuInfo;

    move-object v3, v0

    .line 226
    .local v3, c:Lcom/sec/android/app/controlpanel/CpuInfo;
    const/4 v8, 0x0

    .line 228
    .local v8, totalCpuUsage:F
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 231
    .local v1, a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/sec/android/app/controlpanel/CpuInfo;->getCpuUsage(I)F

    move-result v4

    .line 232
    .local v4, cpuUsage:F
    invoke-virtual {v1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCpuUsage(F)V

    .line 234
    add-float/2addr v8, v4

    .line 235
    goto :goto_0

    .line 238
    .end local v1           #a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v2           #appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v3           #c:Lcom/sec/android/app/controlpanel/CpuInfo;
    .end local v4           #cpuUsage:F
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #totalCpuUsage:F
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    .line 239
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 240
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningPackageInfo()Ljava/util/List;

    move-result-object v6

    .line 241
    .local v6, newlist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v7

    .line 243
    .local v7, oldlist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 244
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->setList(Ljava/util/List;)V

    .line 245
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9, v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V

    .line 247
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v9}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    .line 249
    .end local v6           #newlist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v7           #oldlist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :cond_2
    return-void
.end method
