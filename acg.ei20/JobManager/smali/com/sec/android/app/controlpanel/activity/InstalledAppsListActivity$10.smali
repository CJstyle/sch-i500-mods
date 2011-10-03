.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$10;
.super Ljava/lang/Object;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 345
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$10;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$10;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->finish()V

    .line 348
    return-void
.end method
