.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;
.super Ljava/lang/Object;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 74
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setScrollState(I)V

    .line 72
    return-void
.end method
