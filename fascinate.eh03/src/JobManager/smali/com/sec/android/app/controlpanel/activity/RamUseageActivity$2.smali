.class Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;
.super Ljava/lang/Object;
.source "RamUseageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    const-class v2, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
