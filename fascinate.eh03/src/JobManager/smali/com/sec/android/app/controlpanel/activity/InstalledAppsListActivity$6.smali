.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;
.super Landroid/os/Handler;
.source "InstalledAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 216
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstallAppPackageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->sort()V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->cancel(Z)Z

    .line 229
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$202(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 235
    .end local v0           #cloneObject:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/Utils;->isLocaleChange(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->reloadAppName()V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->clearCache()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadCache()V

    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
