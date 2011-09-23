.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 259
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$500(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;I)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->notifyDataSetChanged()V

    .line 262
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 263
    return-void
.end method
