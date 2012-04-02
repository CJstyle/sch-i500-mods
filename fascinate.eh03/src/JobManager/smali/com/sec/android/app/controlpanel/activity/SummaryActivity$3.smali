.class Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;
.super Ljava/lang/Object;
.source "SummaryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    const-class v2, Lcom/sec/android/app/controlpanel/activity/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method
