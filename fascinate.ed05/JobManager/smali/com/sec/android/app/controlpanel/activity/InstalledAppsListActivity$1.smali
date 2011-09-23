.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;
.super Ljava/lang/Object;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


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
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 100
    instance-of v0, p1, Lcom/sec/android/app/controlpanel/PackageInfo;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->sort()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->notifyDataSetChanged()V

    .line 104
    :cond_0
    return-void
.end method
