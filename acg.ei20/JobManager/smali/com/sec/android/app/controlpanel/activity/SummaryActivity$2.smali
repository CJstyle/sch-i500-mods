.class Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;
.super Ljava/lang/Object;
.source "SummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->hasStorage(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    const-class v3, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->stopService(Landroid/content/Intent;)Z

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    const v1, 0x7f060042

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
