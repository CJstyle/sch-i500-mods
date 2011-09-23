.class Lcom/android/server/status/StatusBarService$40;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->disPlayGPSOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 4314
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$40;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 4315
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4316
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$40;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v2, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    .line 4317
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "gps"

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$40;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mGPSStatus:Z

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 4318
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4319
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$40;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4320
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$40;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2, v4}, Lcom/android/server/status/StatusBarService;->access$2600(Lcom/android/server/status/StatusBarService;Z)V

    .line 4321
    return-void

    .line 4317
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
