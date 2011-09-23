.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter$1;
.super Ljava/lang/Object;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 193
    .local v1, i:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 194
    .local v0, appInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter$1;->this$1:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->uninstallPkg(Ljava/lang/String;)V

    .line 195
    return-void
.end method
