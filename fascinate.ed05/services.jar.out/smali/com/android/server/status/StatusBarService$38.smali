.class Lcom/android/server/status/StatusBarService$38;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->disPlayMobileDataOnAlert()V
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
    .line 4251
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "mobile_data"

    const-string v4, "StatusBar"

    .line 4252
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4254
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mobile_data"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 4255
    .local v1, temp:Z
    :goto_0
    const-string v2, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobileDataBtnClickListener : onClick  , mMobileDataStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v2, v2, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-ne v2, v1, :cond_5

    .line 4257
    const/4 v0, 0x0

    .line 4258
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4259
    .restart local v0       #mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 4261
    const-string v2, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobileDataBtnClickListener : onClick  , set to  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v3, v3, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v2, v2, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    if-ne v2, v5, :cond_0

    .line 4263
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 4267
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mobile_data"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_4

    move v3, v5

    :goto_3
    iput-boolean v3, v2, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    .line 4274
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    :goto_4
    return-void

    .end local v1           #temp:Z
    :cond_1
    move v1, v6

    .line 4254
    goto :goto_0

    .restart local v0       #mConnectivityManager:Landroid/net/ConnectivityManager;
    .restart local v1       #temp:Z
    :cond_2
    move v3, v5

    .line 4261
    goto :goto_1

    .line 4265
    :cond_3
    const-string v2, "StatusBar"

    const-string v2, "MobileDataBtnClickListener : mConnectivityManager = null"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v3, v6

    .line 4267
    goto :goto_3

    .line 4269
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    :cond_5
    const-string v2, "StatusBar"

    const-string v2, "MobileDataBtnClickListener : onClick  , do not set"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iput-boolean v1, v2, Lcom/android/server/status/StatusBarService;->mMobileDataStatus:Z

    goto :goto_4
.end method
