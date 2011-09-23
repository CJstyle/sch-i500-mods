.class Lcom/android/server/status/StatusBarService$GpsContentObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 1
    .parameter

    .prologue
    .line 3388
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$GpsContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    .line 3389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3390
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$GpsContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$GpsContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, v1, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/status/StatusBarService;->mGPSStatus:Z

    .line 3394
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$GpsContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$1700(Lcom/android/server/status/StatusBarService;I)V

    .line 3395
    return-void
.end method
