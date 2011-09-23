.class Lcom/android/server/status/StatusBarService$MobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 1
    .parameter

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$MobileDataContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    .line 3400
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3401
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    .line 3404
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$MobileDataContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$MobileDataContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v3, v5

    :goto_0
    iput-boolean v3, v2, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    .line 3405
    const/4 v1, 0x0

    .line 3406
    .local v1, d:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 3408
    .local v0, color:I
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataContentObserver : onChange  , set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$MobileDataContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v4, v4, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$MobileDataContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/server/status/StatusBarService;->access$1700(Lcom/android/server/status/StatusBarService;I)V

    .line 3419
    return-void

    .line 3404
    .end local v0           #color:I
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
