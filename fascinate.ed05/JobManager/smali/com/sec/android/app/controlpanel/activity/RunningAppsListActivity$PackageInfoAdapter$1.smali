.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 372
    .local v1, id:I
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$700(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$700(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 373
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 374
    .local v0, appInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->removeItem(I)V

    .line 376
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$700(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->setList(Ljava/util/List;)V

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    .line 378
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$700(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->refreshObservedPkgList(Ljava/util/List;)V

    .line 379
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$700(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V

    .line 381
    .end local v0           #appInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_0
    return-void
.end method
