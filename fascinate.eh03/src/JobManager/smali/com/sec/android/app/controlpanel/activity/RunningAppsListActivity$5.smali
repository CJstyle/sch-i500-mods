.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const-class v2, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method
